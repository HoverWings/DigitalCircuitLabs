`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 01:24:18 AM
// Design Name: 
// Module Name: lab3_2B
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

module lab3_2B
(
input X,
output reg Q1,
output reg Q2,
output reg Q3,
output reg Q4,
output reg Z
);
reg Q1=1'b0;
reg Q2=1'b0;
reg Q3=1'b0;
reg Q4=1'b0;  

always @ (negedge X)
        begin
            Q1<= ~Q1;
        end    
always @ (negedge Q1)
         begin    
         Q2<=~Q2&(~Q4);
         Q4<=~Q4&Q2&Q3;  
         end 
always @ (negedge Q2)
         begin        
            Q3<=~Q3;  
         end   
always @ (*)
     begin 
        Z=X&Q1&Q4; 
     end     
endmodule


