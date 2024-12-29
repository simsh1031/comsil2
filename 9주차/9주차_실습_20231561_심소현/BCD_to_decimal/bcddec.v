`timescale 1ns / 1ps
module bcddec(
    input a0, a1, a2, a3,
    output d1, d2, d3, d4, d5, d6, d7, d8, d9
    );
assign d1 = a0&~a1&~a2&~a3;
assign d2 = ~a0&a1&~a2&~a3;
assign d3 = a0&a1&~a2&~a3;
assign d4 = ~a0&~a1&a2&~a3;
assign d5 = a0&~a1&a2&~a3;
assign d6 = ~a0&a1&a2&~a3;
assign d7 = a0&a1&a2&~a3;
assign d8 = ~a0&~a1&~a2&a3;
assign d9 = a0&~a1&~a2&a3;

endmodule
