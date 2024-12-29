`timescale 1ns / 1ps

module pbgen(
    input a,
    input b,
    input c,
    input d,
    output e
    );
assign e = a^b^c^d;
endmodule
