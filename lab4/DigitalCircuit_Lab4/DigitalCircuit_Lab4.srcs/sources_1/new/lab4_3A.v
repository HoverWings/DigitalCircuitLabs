`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/13/2018 07:20:12 PM
// Design Name: 
// Module Name: lab4_3A
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


module lab4_3A
(
    input A,
    input B,
    output reg [2:0] F
);
	
    always@(A,B) begin
        if(A>B)
        begin
            F<=3'b100;
        end
        else 
            if(A==B)
            begin
                F<=3'b010;
            end
            else 
                if(A<B) begin
                    F<=3'b001;
                end
    end
endmodule    
