`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 03:57:29 PM
// Design Name: 
// Module Name: lab4_2
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

module FSM
(
    input x,
    input clk,
    output reg y,
    output reg [3:0] out
);
    parameter S0=0, //init
    S1=1,   //1
    S2=2,   //10
    S3=3,   //101
    S4=4;   //1011
    reg [2:0] current_state,next_state;
    
    initial begin
    y<=0;
    current_state = S0;
    out=4'b0000;
    end
    
    always @(negedge clk)begin
        current_state=next_state;
        if(current_state==S0) 
            out<=4'b0000;
        else if(current_state==S1) 
            out<=4'b0001;
        else if(current_state==S2) 
            out<=4'b0010;
        else if(current_state==S3) 
            out<=4'b0100;
        else if(current_state==S4) 
            out<=4'b1000; 
    end    
    always @(current_state or x) begin
          case(current_state)
            S0:begin
                    y<=0;
                    if(x) begin
                          next_state<=S1;  
                           end
                     else begin 
                            next_state<=S0;
                           end       
                end
            S1:begin
                    y<=0;
                    if(x) begin
                          next_state<=S1;  
                           end
                     else begin 
                        next_state<=S2;
                        end   
                end
            S2:begin
                    y<=0;
                     if(x) begin
                      next_state<=S3;  
                     end
                    else begin 
                    next_state<=S0;
                    end  
                end
            S3:begin
                    y<=0;
                     if(x) begin
                       next_state<=S4;  
                      end
                      else begin 
                      next_state<=S2;
                      end  
                    next_state<=x? S4:S2;
                end
            S4:begin
                    y<=x?0:1;
                    next_state<=x? S1:S0;
                end
            
            default:begin
                    y<=0;
                    next_state<=S0;
                    end    
        endcase
     end 
endmodule



