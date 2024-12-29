`timescale 1ns / 1ps
module rs_flipflop_nor_tb;
reg c, s, r;
wire q, nq;
rs_flipflop_nor u_text(
.c (c),
.r (r),
.s (s),
.q (q),
.nq (nq)
);
initial begin
    c = 1'b0;
    s = 1'b0;
    r = 1'b0;
end
always @(c or s or r) begin 
    c <= #5 ~c;
    s <= #7 ~s;
    r <= #14 ~r;
end
initial begin
    #1000
    $finish;
end
endmodule
