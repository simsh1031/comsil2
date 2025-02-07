`timescale 1ns / 1ps

module binary(
    input a1,
    input a2,
    input b1,
    input b2,
    output f1,
    output f2,
    output f3
    );
assign f1 = (a1&(~b1))|(a1&a2&(~b2))|(a2&(~b1)&(~b2));
assign f2 = ((a1&b1)|((~a1)&(~b1)))&((a2&b2)|((~a2)&(~b2)));
assign f3 = (b1&(~a1))|(b1&b2&(~a2))|(b2&(~a1)&(~a2));
endmodule
