`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 01:18:25 AM
// Design Name: 
// Module Name: lab3_1B_sim
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


module lab3_1B_sim
(
);
    reg clk = 0;
    always #10 clk <= ~clk;
    reg x = 0;
    always #30 x<=~x;
    
    wire out;
    
    lab3_1B lab3_1B_test(x,clk,out);
endmodule
