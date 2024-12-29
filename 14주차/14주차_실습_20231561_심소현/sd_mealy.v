`timescale 1ns / 1ps
module sd_mealy(
    clk, rst, in, out, tmp
    );
input clk, rst, in;
output reg out = 0;
output reg [3:0] tmp;

always @(posedge clk) begin
    if (!rst) begin
        tmp <= 4'b0000;
        out <= 0;
    end
    
    else begin
        tmp = tmp << 1;
        tmp[0] = in;
        if(tmp == 4'b1101)
            out <= 1;
        else 
            out <= 0;
    end    
end
endmodule
