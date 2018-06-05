`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 03:47:48 PM
// Design Name: 
// Module Name: lab4_1_sim
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


module lab4_1_sim();
    reg A, B, C, D, LD, CLR, CP, M;
    wire Qcc, Qa, Qb, Qc, Qd;
    
    initial begin
        A = 0;
        B = 0;
        C = 0;
        D = 0;
        LD = 1;
        CLR = 1;
        CP = 0;
        M = 1;
    end
        
    initial begin // set delay
        #25     CLR = 0;
        #45     CLR = 1;
        #100    M = 0;
        #125    LD = 1;
        #145    LD = 0;
    end 
    
    always #10 CP = ~CP;
    lab4_1 lab4_1_test(A, B, C, D, LD, CLR, CP, M, Qcc, Qa, Qb, Qc, Qd);
endmodule