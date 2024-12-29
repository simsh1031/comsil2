`timescale 1ns / 1ps
module updown_tb;
reg clk ,rst, ud;
wire [3:0] out;
wire[6:0] seg;
wire digit;	
updown u_text(
.clk (clk), 
.rst (rst), 
.ud (ud), 
.out (out),
.seg (seg),
.digit (digit)
);

initial begin
    clk = 1'b0;
    rst = 1'b0;
    ud = 1'b1;
end

always @(clk or ud or rst) begin
    clk <= #10 ~clk;
    ud <= #400 ~ud;
    rst <= #600 ~rst;
end

initial begin
    #1000
    $finish;
end
endmodule