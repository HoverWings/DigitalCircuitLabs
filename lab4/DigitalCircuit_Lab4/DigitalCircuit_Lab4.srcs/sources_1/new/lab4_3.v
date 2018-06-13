`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2018 12:02:11 PM
// Design Name: 
// Module Name: lab4_3
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


module lab4_3
(
    input  [WIDTH-1:0] A,
    input  [WIDTH-1:0] B,
    output reg [WIDTH-1:0] F,
    output reg S
);
    parameter  WIDTH = 3;
    integer i=0;
    initial begin
    F<=0;
    S<=0;
    end

    always @(A or B) begin     // space loop
        S<=0;
        for(i=0;i<WIDTH;i=i+1) 
        begin
            if(A[i]==B[i]) 
            begin
                F[i]<=0;
            end
            else 
            begin
                if(A[i]>B[i]) 
                begin
                    F[i]<=1;
                    S<=1;
                end
                else
                begin
                    F[i]<=1;
                    S<=1;
                end
            end       
        end
    end
endmodule

