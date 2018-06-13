`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 07:50:02 PM
// Design Name: 
// Module Name: lab4_3B_sim
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
//module lab4_3B
//(
//    input  [WIDTH-1:0] A,
//    input  [WIDTH-1:0] B,
//    output reg [3*WIDTH-1:0] F,
//    output  [2:0] S
//);


module lab4_3B_sim
(
);
    reg [2:0] A, B;
    wire [8:0] F;
    wire [2:0] S;
    
    initial begin
        A = 3'b0;
        B = 3'b0;
    end
        
    initial begin // set delay
        #25     A[0] = 1;
        #45     B[0] = 1;
        #65     B[1] = 1;
        #125    A[0] = 0;
        #145    B[0] = 0;
        #165    B[1] = 0;
    end 
    
    lab4_3B lab4_3B_test(A,B,F,S);
endmodule
