`timescale 1ns / 1ps
module pbche_tb;
reg aa,bb,cc,dd,pp;
wire pec;
pbche u_test(
.a (aa ),
.b (bb ),
.c (cc ),
.d (dd ),
.p (pp ),
.pec (pec )
);
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cc = 1'b0;
    dd = 1'b0;
    pp = 1'b0;
end
always @(aa or bb or cc or dd or pp)begin
    aa <= #25 ~aa;
    bb <= #50 ~bb;
    cc <= #100 ~cc;
    dd <= #200 ~dd;
    pp <= #400 ~pp;
end

initial begin
    #800
    $finish;
end
endmodule
