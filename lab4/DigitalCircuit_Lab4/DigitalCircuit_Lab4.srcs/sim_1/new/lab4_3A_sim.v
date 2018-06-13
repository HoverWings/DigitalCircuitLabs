`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 07:47:04 PM
// Design Name: 
// Module Name: lab4_3A_sim
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


module lab4_3A_sim
(
);
    reg  A, B;
    wire [2:0] F;
    wire S;
    
    initial begin
        A = 1'b0;
        B = 1'b0;
    end
        
    initial begin // set delay
        #25     A = 1;
        #45     B = 1;
        #65     B = 0;
    end 
    
    lab4_3A lab4_3A_test(A,B,F);
endmodule

