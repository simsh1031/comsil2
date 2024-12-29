`timescale 1ns / 1ps
module parallel_subtractor_tb;

reg [3:0] a, b;
reg Bin;
wire [3:0] d;
wire Bout;

parallel_subtractor u_test(
    .a(a),
    .b(b),
    .Bin(Bin),
    .d(d),
    .Bout(Bout)
);

initial begin
    a = 4'b0000;
    b = 4'b0000;
    Bin = 1'b0;
end

always @(a or b or Bin) begin
    a[0] <= #1 ~a[0];
    a[1] <= #2 ~a[1];
    a[2] <= #4 ~a[2];
    a[3] <= #8 ~a[3];

    b[0] <= #16 ~b[0];
    b[1] <= #32 ~b[1];
    b[2] <= #64 ~b[2];
    b[3] <= #128 ~b[3];

    Bin <= #256 ~Bin;
end

always begin
    #512
    $finish;
end

endmodule
