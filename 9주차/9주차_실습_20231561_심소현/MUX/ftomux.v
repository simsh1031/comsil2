`timescale 1ns / 1ps
module ftomux(
    input a, b, c, d, s0, s1,
    output m
    );
assign m = (a&~s0&~s1)|(b&s0&~s1)|(c&~s0&s1)|(d&s0&s1);
endmodule
