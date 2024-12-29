`timescale 1ns / 1ps
module fsub_tb;
reg aa, bin1, bin2;
wire bout, dd;
fsub u_text(
.a (aa ),
.b1 (bin1 ),
.b2 (bin2 ),
.bo (bout ),
.d (dd )
);
initial begin
    aa = 1'b0;
    bin1 = 1'b0;
    bin2 = 1'b0;
end

always @(aa or bin1 or bin2)begin
    aa <= #50 ~aa;
    bin1 <= #100 ~bin1;
    bin2 <= #150 ~bin2;
end

initial begin
    #1000
    $finish;
end
endmodule
