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
//module FSM
//(
//    input x,
//    input clk,
//    output reg y,
//    output reg [3:0] out
//);

module FSM_sim
(
);
    reg x;
    reg clk;
    wire y;
    wire [3:0] current_state;
    FSM FSM_test(x, clk, y, current_state); 
    initial begin
        x = 0;
        clk = 0;
    end
    always #10 clk = ~clk;
    initial begin //10110
         x <= #45 1;
         x <= #65 0;
         x <= #85 1;
         x <= #105 1;
         x <= #125 0;
         
         x <= #145 1;
         x <= #165 0;
         x <= #185 1;
         x <= #205 1;
         x <= #225 1;
        //#25 $stop;
    end
    
endmodule



