`timescale 1ns / 1ps
module shift(
    clk, rst, in, out
    );
input clk, rst, in;
output [3:0] out;
reg [3:0] out;

initial out = 4'b0000;
always @(posedge clk) begin
    if (rst == 1'b0) 
        out = 4'b0000;
    else begin
        out = out>>1;
        out[3] = in;
    end
end 

endmodule
