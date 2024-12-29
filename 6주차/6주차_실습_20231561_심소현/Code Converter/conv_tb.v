`timescale 1ns / 1ps
module conv_tb;
reg aa, bb, cc, dd;
wire ww, xx, yy, zz;
conv u_text(
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.w (ww ),
.x (xx ),
.y (yy ),
.z (zz )
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
end

always @(aa or bb or cc or dd)begin
    aa <= #50 ~aa;
    bb <= #100 ~bb;
    cc <= #150 ~cc;
    dd <= #200 ~dd;
end

initial begin
    #1000
    $finish;
end
endmodule
