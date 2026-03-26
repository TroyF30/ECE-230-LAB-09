module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] memory
);
always @(*) begin
        if (store) begin
            memory = data;  // While store is high, output follows input
        end
        // If store is low, memory keeps its previous value automatically
    end


endmodule