`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 01:24:48 AM
// Design Name: 
// Module Name: lab3_2B_sim
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


module lab3_2B_sim
(
);
reg X = 0;
always #30 X<=~X;
wire Z;
wire Q1;
wire Q2;
wire Q3;
wire Q4;
lab3_2B lab3_2B_test(X,Q1,Q2,Q3,Q4,Z);
endmodule
