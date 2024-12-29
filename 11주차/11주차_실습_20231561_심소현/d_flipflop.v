`timescale 1ns / 1ps
module d_flipflop(
    input d, c,
    output q, nq
    );
assign q = ~((c&~d)|nq);
assign nq = ~((c&d)|q);
endmodule
