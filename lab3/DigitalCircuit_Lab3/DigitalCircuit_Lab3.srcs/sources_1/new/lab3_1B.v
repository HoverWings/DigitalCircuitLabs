`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 12:56:35 AM
// Design Name: 
// Module Name: lab3_1B
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


module lab3_1B
(
    input X,
    input clk,
    output reg Y
);
reg Q0=1'b0;
reg Q1=1'b0;
reg T1=1'b0;

always @ (X,Q0,Q1)
    begin
        T1 <= X^Q0;
        Y <= ~(X&~Q1);
    end
always @ (negedge clk)
    begin
        Q0 <= 1^Q0;
        Q1 <= T1^Q1;
    end

endmodule














