`timescale 1ns / 1ps

module hsub_tb;
reg aa, bin;
wire bout, dd;
hsub u_text(
.a (aa ),
.bi (bin ),
.bo (bout ),
.d (dd )
);
initial begin
    aa = 1'b0;
    bin = 1'b0;
end
always @(aa or bin)begin
    aa <= #50 ~aa;
    bin <= #100 ~bin;
end
initial begin
    #200
    $finish;
end
endmodule


