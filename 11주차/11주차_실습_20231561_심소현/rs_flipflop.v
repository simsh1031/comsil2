`timescale 1ns / 1ps
module rs_flipflop(
    input clk, s, r,
    output q, nq
);
assign q = ~(~(s & clk) & nq);
assign nq = ~(~(r & clk) & q);
endmodule