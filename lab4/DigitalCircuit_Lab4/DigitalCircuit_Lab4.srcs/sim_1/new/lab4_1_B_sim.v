`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2018 08:40:10 AM
// Design Name: 
// Module Name: lab4_1_B_sim
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
//module mod8_counter
//(
//    input [3:0]in,
//    input clk,
//    input CLR,
//    input LD,
//    input M,
//    output reg [3:0]Q,
//    output reg Qcc
//);



module lab4_1_B_sim
(
);
    reg  [3:0] in;
    wire  [3:0] Q;
    reg CP, M, CLR, LD;
    wire Qcc; // out pluse
    initial begin // set init val
        CP = 0; 
        in<=4'b0010;
        M<=1;
        CLR<=1;
        LD<=1;
    end
    initial begin   // set triger
            #25 LD = 0; // output directly
            #45 LD = 1;
            #65 CLR = 0;//set 0
            #85 CLR = 1;
    end
        always #10 CP = ~CP; 
    mod8_counter mod8_counter_test
        (
        .in(in),
        .clk(CP),
        .CLR(CLR),
        .LD(LD),
        .M(M),
        .Q(Q),
        .Qcc(Qcc)
        );
endmodule
