`timescale 1ns / 1ps
module counter_4bit(
    clk, rst, out
    );
input clk, rst;
output [3:0] out;
reg [3:0] out;
always @(posedge clk)
begin
    if(!rst)
        out <= 0;
    else if (out == 9)
        out <= 0;
    else
        out <= out + 1;
end
endmodule
