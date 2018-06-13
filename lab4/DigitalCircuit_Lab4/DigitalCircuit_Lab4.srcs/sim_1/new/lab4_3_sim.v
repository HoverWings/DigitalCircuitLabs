`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2018 12:02:42 PM
// Design Name: 
// Module Name: lab4_3_sim
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

//    input  [WIDTH-1:0] A,
//    input  [WIDTH-1:0] B,
//    output reg [WIDTH-1:0] F,
//    output reg S

module lab4_3_sim
(
);
    reg [2:0] A, B;
    wire [2:0] F;
    wire S;
    
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
    
    lab4_3 lab4_3_test(A, B,F,S);
endmodule
