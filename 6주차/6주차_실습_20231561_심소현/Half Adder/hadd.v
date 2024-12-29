`timescale 1ns / 1ps

module hadd(
    input a,
    input b,
    output s,
    output c
    );
assign s = ~(a&b) & (a|b);
assign c = a&b;
endmodule
