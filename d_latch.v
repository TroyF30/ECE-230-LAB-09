module d_latch(
    input D, E,
    output reg Q, 
    output NotQ
);

    always @(*) begin
        if (E) begin
            Q <= D;
        end
        // When E is low, no assignment happens, 
        // so Verilog "latches" the previous value of Q.
    end

    assign NotQ = ~Q;

endmodule
