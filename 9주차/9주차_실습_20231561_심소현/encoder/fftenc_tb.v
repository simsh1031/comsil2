`timescale 1ns / 1ps
module fftenc_tb;
reg aa, bb, cc ,dd;
wire e0, e1;
fttenc u_text (
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.e0 (e0 ),
.e1 (e1 )
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
    cc <= #200 ~cc;
    dd <= #400 ~dd;
end

initial begin
    #800
    $finish;
end

endmodule
