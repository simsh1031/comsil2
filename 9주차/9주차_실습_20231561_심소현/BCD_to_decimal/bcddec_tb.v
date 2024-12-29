`timescale 1ns / 1ps
module bcddec_tb;
reg a0, a1, a2, a3;
wire d1, d2, d3, d4, d5, d6, d7, d8, d9;
bcddec u_text (
.a0 (a0 ),
.a1 (a1 ),
.a2 (a2 ),
.a3 (a3 ),
.d1 (d1 ),
.d2 (d2 ),
.d3 (d3 ),
.d4 (d4 ),
.d5 (d5 ),
.d6 (d6 ),
.d7 (d7 ),
.d8 (d8 ),
.d9 (d9 )
);

initial begin
    a0 = 1'b0;
    a1 = 1'b0;
    a2 = 1'b0;
    a3 = 1'b0;
end

always @(a0 or a1 or a2 or a3)begin
    a0 <= #50 ~a0;
    a1 <= #100 ~a1;
    a2 <= #200 ~a2;
    a3 <= #400 ~a3;
end

initial begin
    #800
    $finish;
end
endmodule
