`timescale 1ns / 1ps
module parallel_adder(
    input [3:0] a, 
    input [3:0] b,
    input Cin, 
    output [3:0] s,
    output Cout
    );
    
wire [2:0] c;

assign s[0] = a[0] ^ b[0] ^ Cin;
assign c[0] = (a[0] & b[0]) | (a[0] & Cin) | (b[0] & Cin);

assign s[1] = a[1] ^ b[1] ^ c[0];
assign c[1] = (a[1] & b[1]) | (a[1] & c[0]) | (b[1] & c[0]);

assign s[2] = a[2] ^ b[2] ^ c[1];
assign c[2] = (a[2] & b[2]) | (a[2] & c[1]) | (b[2] & c[1]);

assign s[3] = a[3] ^ b[3] ^ c[2];
assign Cout = (a[3] & b[3]) | (a[3] & c[2]) | (b[3] & c[2]);

endmodule
