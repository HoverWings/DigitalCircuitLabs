`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2018 05:30:08 PM
// Design Name: 
// Module Name: lab4_1Bmod8
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


module lab4_1Bmod8(in,CP,CLR,Ld,M,out,Qcc);
	input[3:0] in;
	input CP,CLR,Ld,M;
	output reg [3:0]  out;
	output reg Qcc;
	initial begin 
	   out=4'b0010;
	   Qcc=1;
	end   
	always@(posedge CP or negedge Ld or negedge CLR) begin
	   if(~CLR)
	   begin
	       out<=4'b0010;
	       Qcc<=1;
	   end
	   else if(~Ld)
	       begin 
	       out<=in;
	       Qcc<=1;
	       end
	   else if(M)
	       begin
	           if(out==4'b1001) begin
	               Qcc<=0;
	               out<=4'b0010;
	            end
	            else begin   
	               out<=out+4'b0001;
	               Qcc<=1;
	            end   
	       end
	    else if(~M)
	       begin 
	           if(out==4'b0010)begin
	               Qcc<=0;
	               out<=4'b1001;
	            end
	            else begin   
	           out<=out-4'b0001;
	           Qcc<=1;
	           end;
	       end
	end
endmodule
