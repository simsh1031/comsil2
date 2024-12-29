`timescale 1ns / 1ps
module rs_flipflop_nor(
    input r, s, c,
    output q, nq
    );
assign q = ~((r&c)|nq);
assign nq = ~((s&c)|q);
endmodule
