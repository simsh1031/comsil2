`timescale 1ns / 1ps
module ssd_tb;
reg AA, BB, CC, DD;
wire aa, bb, cc, dd, ee, ff, gg, dp;
ssd u_text(
.A (AA ),
.B (BB ),
.C (CC ),
.D (DD ),
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.e (ee ),
.f (ff ),
.g (gg ),
.dp (dp )
);

initial begin
    AA = 1'b1;
    BB = 1'b1;
    CC = 1'b1;
    DD = 1'b1;
end

always @(AA or BB or CC or DD)begin
    AA <= #50 ~AA;
    BB <= #100 ~BB;
    CC <= #200 ~CC;
    DD <= #400 ~DD;
end

initial begin
    #800
    $finish;
end

endmodule
