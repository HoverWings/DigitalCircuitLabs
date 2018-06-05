`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 03:57:56 PM
// Design Name: 
// Module Name: lab4_2_sim
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


module lab4_2_sim
(
);
    reg CP;
    reg X;
    reg RST;
    wire [2:0] state;
    wire Z; 
    lab4_2 lab4_2_test(CP, X, RST, state, Z); 
    initial
        begin
        CP = 0;
        X = 0;
        RST = 1;
        end
    initial
        begin
        #35 X = 1;
        #50 X = 0;
        #10 X = 1;
        #20 X = 0;
        #20 X = 1;
        #20 RST = 0; 
        #60 RST = 1;
        #25 $stop;
        end
    always #5 CP = ~CP;
endmodule
