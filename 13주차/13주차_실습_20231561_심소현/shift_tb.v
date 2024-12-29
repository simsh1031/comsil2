`timescale 1ns / 1ps
module shift_tb;
reg clk, rst, in;
wire [3:0] out;
shift u_text(
.clk (clk), 
.rst (rst), 
.in (in), 
.out (out)
);
initial begin
    clk = 1'b0;
    rst = 1'b0;
    in = 1'b0;
end
always @(clk or in or rst) begin
    clk <= #10 ~clk;
    in <= #50 ~in;
    rst <= #200 ~rst;
end
initial begin
    #1000
    $finish;
end 
endmodule