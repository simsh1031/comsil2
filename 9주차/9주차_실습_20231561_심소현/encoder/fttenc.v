`timescale 1ns / 1ps

module fttenc(
    input a, b, c, d,
    output e0, e1
    );
assign e0 = (~d)&(~c)&((~a)&b | a&(~b));
assign e1 = (~b)&(~d)&((~a)&c | a&(~c));    

endmodule
