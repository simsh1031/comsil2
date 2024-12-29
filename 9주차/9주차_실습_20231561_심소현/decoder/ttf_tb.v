`timescale 1ns / 1ps
module ttf_tb;
reg aa, bb;
wire d0, d1, d2, d3;
ttfdec u_text (
.a (aa ),
.b (bb ),
.d0 (d0 ),
.d1 (d1 ),
.d2 (d2 ),
.d3 (d3 )
);

initial begin
    aa = 1'b0;
    bb = 1'b0;
end

always @(aa or bb)begin
    aa <= #50 ~aa;
    bb <= #100 ~bb;
end

initial begin
    #200
    $finish;
end

endmodule
