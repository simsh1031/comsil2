`timescale 1ns / 1ps
module otfdem_tb;
reg a, s0, s1;
wire o1, o2, o3, o4;
otfdem u_text (
.a (a ),
.s0 (s0 ),
.s1 (s1 ),
.o1 (o1 ),
.o2 (o2 ),
.o3 (o3 ),
.o4 (o4 )
);

initial begin
    a = 1'b0;
    s0 = 1'b0;
    s1 = 1'b0;
end

always @(a or s0 or s1)begin
    a <= #50 ~a;
    s0 <= #100 ~s0;
    s1 <= #200 ~s1;
end

initial begin
    #400
    $finish;
end

endmodule
