`timescale 1ns / 1ps

module conv(
    input a,
    input b,
    input c,
    input d,
    output w,
    output x,
    output y,
    output z
    );
assign w = a|(b&c)|(b&d);
assign x = a|(b&~d)|(b&c);
assign y = a|(~b&c)|(b&~c&d);
assign z = d;
endmodule
