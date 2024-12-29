`timescale 1ns / 1ps
module ssd(
    input A, B, C, D,
    output a, b, c, d, e, f, g, dp, digit
    );
assign a = ((~B)&(~D))|((~A)&C)|(B&C)|(A&(~D))|((~A)&B&D)|(A&(~B)&(~C));
assign b = ((~B)&(~C))|((~B)&(~D))|((~A)&(~C)&(~D))|(A&(~C)&D)|((~A)&C&D);
assign c = ((~A)&(~C))|((~A)&D)|((~A)&B)|(A&(~B))|((~C)&D);
assign d = ((~B)&(~C)&(~D))|(A&B&(~D))|(B&(~C)&D)|((~B)&C&D)|((~A)&C&(~D));
assign e = (A&B)|(A&C)|(C&(~D))|((~B)&(~D));
assign f = ((~C)&(~D))|(A&(~B))|(A&C)|(B&(~D))|((~A)&B&(~C));
assign g = (C&(~D))|(A&(~B))|(A&D)|((~B)&C)|((~A)&B&(~C));
assign dp = 1;
assign digit = a|b|c|d|e|f|g|dp;
endmodule
