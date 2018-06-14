`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2018 06:35:52 PM
// Design Name: 
// Module Name: mod8_counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mod8_counter
(
    input [3:0]in,
    input clk,
    input CLR,
    input LD,
    input M,
    output [3:0]Q,
    output Qcc
);

    initial begin
        //\\in<=4'b0010;
    end
    wire CP;
    wire LD16;
    assign LD16 = (Q[3] & Q[0]) | (~LD)? 0 : 1;
    lab4_1_divider sub_lab4_1_divider
    (
    .in(in),
    .clk(clk),
    .CLR(CLR),
    .LD(LD16),
    .M(M),
    .Q(Q),
    .Qcc(Qcc)
    );
endmodule




