`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2018 07:35:25 PM
// Design Name: 
// Module Name: lab4_1_sim
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



module lab4_1_sim
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
            #360 M = 0;
    end
        always #10 CP = ~CP; 
    lab4_1_divider lab4_1_test_divider
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
