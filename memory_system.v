module memory_system(
    input  [7:0] data,
    input  store,
    input  [1:0] addr,
    output [7:0] memory
);

    // Internal wires for memory outputs
    wire [7:0] mem0, mem1, mem2, mem3;

    // 1. Demultiplexing the 'store' signal
    wire store0 = (addr == 2'b00) ? store : 1'b0;
    wire store1 = (addr == 2'b01) ? store : 1'b0;
    wire store2 = (addr == 2'b10) ? store : 1'b0;
    wire store3 = (addr == 2'b11) ? store : 1'b0;

    // 2. Demultiplexing the 'data' signal (matching the store style)
    wire [7:0] data0 = (addr == 2'b00) ? data : 8'b0;
    wire [7:0] data1 = (addr == 2'b01) ? data : 8'b0;
    wire [7:0] data2 = (addr == 2'b10) ? data : 8'b0;
    wire [7:0] data3 = (addr == 2'b11) ? data : 8'b0;
    
    // 3. Instantiate the 4 byte_memory units with their unique data/store signals
    byte_memory b0 (data0, store0, mem0);
    byte_memory b1 (data1, store1, mem1);
    byte_memory b2 (data2, store2, mem2);
    byte_memory b3 (data3, store3, mem3);
    
    // 4. Multiplexer for the output
    assign memory = (addr == 2'b00) ? mem0 :
                    (addr == 2'b01) ? mem1 :
                    (addr == 2'b10) ? mem2 :
                                      mem3;

endmodule