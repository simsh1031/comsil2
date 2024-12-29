`timescale 1ns / 1ps
module ring(
    clk, rst, out
    );
input clk, rst;
output [3:0] out;
reg [3:0] out;
initial out = 4'b1000;
always @(posedge clk) begin
    if(rst == 1'b0)
        out = 4'b1000;
    else begin
        out[0] <= out[1];
        out[1] <= out[2];
        out[2] <= out[3];
        out[3] <= out[0];
    end
end
endmodule