`timescale 1ns / 1ps
module rs_flipflop_tb;
reg clk, s, r;
wire q, nq;
rs_flipflop u_text(
.clk (clk),
.s (s),
.r (r),
.q (q),
.nq (nq)
);
initial begin
    clk = 1'b0;
    s = 1'b0;
    r = 1'b0;
end
always @(clk or s or r) begin
    clk <= #5 ~clk;
    s <= #7 ~s;
    r <= #14 ~r;
end
initial begin
    #500
    $finish;
end
endmodule
