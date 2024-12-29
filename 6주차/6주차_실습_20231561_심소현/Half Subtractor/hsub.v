`timescale 1ns / 1ps

module hsub(
    input a,
    input bi,
    output bo,
    output d
    );
assign bo = (~a)&bi;
assign d = a^bi;
endmodule