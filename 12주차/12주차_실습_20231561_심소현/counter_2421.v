`timescale 1ns / 1ps
module counter_2421(
    clk, rst, out
    );
input clk, rst;
output [3:0] out;
reg [3:0] out;
always @(posedge clk)
begin
    if(!rst)
        out <= 0;
    else if (out == 4)
        out <= 11;
    else if (out ==15)
        out <= 0;
    else
        out <= out + 1;
end
endmodule
