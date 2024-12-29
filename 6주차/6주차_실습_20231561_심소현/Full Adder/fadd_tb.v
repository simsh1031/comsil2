`timescale 1ns / 1ps
module fadd_tb;
reg aa, bb, cin;
wire ss, cout;
fadd u_text(
.a (aa ),
.b (bb ),
.ci (cin ),
.s (ss ),
.co (cout )
);
initial begin
    aa = 1'b0;
    bb = 1'b0;
    cin = 1'b0;
end
always @(aa or bb or cin)begin
    aa <= #50 ~aa;
    bb <= #100 ~bb;
    cin <= #150 ~cin;
end
initial begin
    #1000
    $finish;
end
endmodule
