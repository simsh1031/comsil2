`timescale 1ns / 1ps

module bcd_adder(
    input [3:0] a,
    input [3:0] b,
    input Cin,
    output [3:0] s,
    output Cout
);

wire [3:0] sum;
wire [3:0] carry;

assign sum[0] = a[0] ^ b[0] ^ Cin;
assign carry[0] = (a[0] & b[0]) | (a[0] & Cin) | (b[0] & Cin);

assign sum[1] = a[1] ^ b[1] ^ carry[0];
assign carry[1] = (a[1] & b[1]) | (a[1] & carry[0]) | (b[1] & carry[0]);

assign sum[2] = a[2] ^ b[2] ^ carry[1];
assign carry[2] = (a[2] & b[2]) | (a[2] & carry[1]) | (b[2] & carry[1]);

assign sum[3] = a[3] ^ b[3] ^ carry[2];
assign carry[3] = (a[3] & b[3]) | (a[3] & carry[2]) | (b[3] & carry[2]);

wire correction_needed;
assign correction_needed = carry[3] | (sum[3] & (sum[2] | sum[1]));

wire [3:0] c_sum;
wire [2:0] correction;

assign c_sum[0] = sum[0];
assign correction[0] = sum[0] & 1'b0;

assign c_sum[1] = ~sum[1] ^ correction[0];
assign correction[1] = (sum[1] & 1'b1) | (sum[1] & correction[0]) | (1'b1 & correction[0]);

assign c_sum[2] = ~sum[2] ^ correction[1];
assign correction[2] = (sum[2] & 1'b1) | (sum[2] & correction[1]) | (1'b1 & correction[1]);

assign c_sum[3] = sum[3] ^ correction[2];
assign Cout = carry[3] | (sum[3] & correction_needed);

assign s[0] = correction_needed ? c_sum[0] : sum[0];
assign s[1] = correction_needed ? c_sum[1] : sum[1];
assign s[2] = correction_needed ? c_sum[2] : sum[2];
assign s[3] = correction_needed ? c_sum[3] : sum[3];

endmodule
