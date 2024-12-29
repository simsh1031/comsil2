`timescale 1ns / 1ps
module counter_2bit_tb;
reg clk, rst;
wire [1:0] out;
counter_2bit u_text (
.clk (clk),
.rst (rst),
.out (out)
);
initial begin
    clk = 1'b0;
    rst = 1'b0;
end
always @(clk or rst) begin
    clk <= #10 ~clk;
    rst <= #50 ~rst;
end
initial begin
    #1000
    $finish;
end
endmodule
