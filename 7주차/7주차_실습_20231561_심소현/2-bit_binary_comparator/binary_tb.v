`timescale 1ns / 1ps
module binary_tb;
reg aa1, aa2, bb1, bb2;
wire ff1, ff2, ff3;
binary u_text(
.a1 (aa1 ),
.a2 (aa2 ),
.b1 (bb1 ),
.b2 (bb2 ),
.f1 (ff1 ),
.f2 (ff2 ),
.f3 (ff3 )
);
initial begin
    aa1 = 1'b0;
    aa2 = 1'b0;
    bb1 = 1'b0;
    bb2 = 1'b0;
end
always @(aa1 or aa2 or bb1 or bb2)begin
    aa1 <= #50 ~aa1;
    aa2 <= #100 ~aa2;
    bb1 <= #150 ~bb1;
    bb2 <= #200 ~bb2;
end

initial begin
    #1000
    $finish;
end
endmodule
