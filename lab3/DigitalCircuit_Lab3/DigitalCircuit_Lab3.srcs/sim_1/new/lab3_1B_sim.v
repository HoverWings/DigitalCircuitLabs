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
//output reg Q0,
//output reg Q1,
//output reg T1

module lab3_1B_sim
(
);
    reg clk;
    reg x;
    initial begin
        clk = 0;
        x = 0;
    end
    always #10 clk <= ~clk;
    always #30 x<=~x;
    
    wire out;
    wire Q0;
    lab3_1B lab3_1B_test(x,clk,out,Q0,Q1,T1);
endmodule
