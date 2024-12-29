`timescale 1ns / 1ps
module counter_4bit_tb;
reg clk, rst;
wire [3:0] out;
counter_4bit u_text(
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
    rst <= #500 ~rst;
end
initial begin
    #1000
    $finish;
end
endmodule
