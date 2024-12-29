`timescale 1ns / 1ps

module fadd(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
assign s = (a^b)^ci;
assign co = (a&b) | ((a^b)&ci);
endmodule
