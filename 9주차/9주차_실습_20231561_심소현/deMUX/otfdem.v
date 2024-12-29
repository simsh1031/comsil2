`timescale 1ns / 1ps
module otfdem(
    input a, s0, s1,
    output o1, o2, o3, o4
    );
assign o1 = a&~s0&~s1;
assign o2 = a&s0&~s1;
assign o3 = a&~s0&s1;
assign o4 = a&s0&s1;
endmodule
