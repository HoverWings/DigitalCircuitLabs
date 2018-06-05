`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 01:41:26 PM
// Design Name: 
// Module Name: lab3_3_divider_sim
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

module lab3_3_divider_sim
(
);
    reg clk = 0;
    always #10 clk <= ~clk;
    
    reg sig_nsyn = 0;
    always #30 sig_nsyn<=~sig_nsyn;
    

    reg  [2:0] led;
    //module lab3_3_divider(clk,sig_nsyn,led); // top module
    lab3_3_divider lab3_3_divider_sim(clk,sig_nsyn,led);
endmodule




