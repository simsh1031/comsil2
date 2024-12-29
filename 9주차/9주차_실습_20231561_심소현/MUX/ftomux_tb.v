`timescale 1ns / 1ps
module ftomux_tb;
reg a, b, c, d, s0, s1;
wire m;
ftomux u_text (
.a (a ),
.b (b ),
.c (c ),
.d (d ),
.s0 (s0 ),
.s1 (s1 ),
.m (m )
);

initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    s0 = 1'b0;
    s1 = 1'b0;
end

always @(a or b or c or d or s0 or s1)begin
    a <= #10 ~a;
    b <= #20 ~b;
    c <= #40 ~c;
    d <= #80 ~d;
    s0 <= #160 ~s0;
    s1 <= #320 ~s1;
end

initial begin
    #640
    $finish;
end

endmodule
