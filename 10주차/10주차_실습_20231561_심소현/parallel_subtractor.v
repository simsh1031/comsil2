`timescale 1ns / 1ps
module parallel_subtractor(
    input [3:0] a, 
    input [3:0] b, 
    input Bin,
    output [3:0] d,
    output Bout
    );

wire [2:0] b_out;

assign d[0] = a[0] ^ b[0] ^ Bin;
assign b_out[0] = (~a[0] & b[0]) | ((~a[0] | b[0]) & Bin);

assign d[1] = a[1] ^ b[1] ^ b_out[0];
assign b_out[1] = (~a[1] & b[1]) | ((~a[1] | b[1]) & b_out[0]);

assign d[2] = a[2] ^ b[2] ^ b_out[1];
assign b_out[2] = (~a[2] & b[2]) | ((~a[2] | b[2]) & b_out[1]);

assign d[3] = a[3] ^ b[3] ^ b_out[2];
assign Bout = (~a[3] & b[3]) | ((~a[3] | b[3]) & b_out[2]);

endmodule
