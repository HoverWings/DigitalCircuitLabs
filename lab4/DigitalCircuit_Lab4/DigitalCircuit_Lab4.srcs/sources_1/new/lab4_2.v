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


module lab4_2
(
    input CP,
    input X,
    input RST,
    output reg [2:0] state,
    output reg Z
    );
    initial
        begin
        state = 3'b000;
        Z = 0;
        end
    always @ (posedge CP)
        begin
        if(RST)
            begin
            case(state)
                3'b000: state <= X==1 ? 3'b001 : 3'b000;
                3'b001: state <= X==1 ? 3'b001 : 3'b010;
                3'b010: state <= X==1 ? 3'b011 : 3'b000;
                3'b011: state <= X==1 ? 3'b100 : 3'b010;
                3'b100: state <= X==1 ? 3'b001 : 3'b000;
                default: state <= 3'b000;
            endcase
            end
        else
            state = 3'b000;
        end 
    always @ (posedge CP)
        begin
        if(RST == 1)
            case(state)
            3'b100: if(X == 0)  Z = 1;
                    else        Z = 0;
            default: Z = 0;
            endcase
        else
            Z = 0;
        end
    always @ (Z)
        #5 Z = 0;
    always @ (negedge RST)
        begin
        state = 3'b000;
        Z = 0;
        end
endmodule
