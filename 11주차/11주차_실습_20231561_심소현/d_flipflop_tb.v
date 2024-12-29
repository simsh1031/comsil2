`timescale 1ns / 1ps
module d_flipflop_tb;
reg d, c;
wire q, nq;
d_flipflop u_text (
.d (d),
.c (c),
.q (q),
.nq (nq)
);
initial begin
    d = 1'b0;
    c = 1'b0;
end
always @(d or c) begin 
    d <= #20 ~d;
    c <= #40 ~c;
end
initial begin
    #1000
    $finish;
end
endmodule
