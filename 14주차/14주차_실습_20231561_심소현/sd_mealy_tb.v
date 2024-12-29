`timescale 1ns / 1ps
module sd_mealy_tb;
reg clk, rst, in;
wire [3:0] tmp;
wire out;
sd_mealy u_text(
.clk (clk),
.rst (rst),
.in (in),
.tmp (tmp),
.out (out)
);
initial begin
    clk = 1'b0;
    rst = 1'b0;
    in = 1'b0;
end

always #10 clk = ~clk;
always #200 rst = ~rst;
always @(in) begin
    in = #200 ~in;
    in = #20 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #30 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #30 ~in;
    in = #10 ~in;
    in = #10 ~in;
end

initial begin 
    #1000
    $finish;
end
endmodule
