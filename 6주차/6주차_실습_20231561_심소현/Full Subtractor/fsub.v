`timescale 1ns / 1ps

module fsub(
    input a,
    input b1,
    input b2,
    output bo,
    output d
    );
assign bo = ((~(a^b1))&b2) | (b1&(~b2));
assign d = (a^b1)^b2;
endmodule
