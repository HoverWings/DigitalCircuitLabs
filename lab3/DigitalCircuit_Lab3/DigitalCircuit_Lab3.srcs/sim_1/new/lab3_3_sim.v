`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 02:11:45 AM
// Design Name: 
// Module Name: lab3_3_sim
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


module lab3_3_sim
(
);
    reg clk = 0;
    always #10 clk <= ~clk;
    
    reg x = 0;
    always #30 x<=~x;
    
    wire out;
    wire q1;
    wire q2;
    

    pipe3b lab3_3_sim(x,clk,q1,q2,out);
endmodule











