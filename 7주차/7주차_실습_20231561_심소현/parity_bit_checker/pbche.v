`timescale 1ns / 1ps

module pbche(
    input a,
    input b,
    input c,
    input d,
    input p,
    output pec
    );
assign pec = a^b^c^d^p;
endmodule
