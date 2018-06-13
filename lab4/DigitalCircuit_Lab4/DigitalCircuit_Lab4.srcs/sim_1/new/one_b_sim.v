`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/11/2018 05:59:27 PM
// Design Name: 
// Module Name: one_b_sim
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

module one_b_sim();
reg [3:0] inputs;
reg CP;
reg CLR;
reg LD;
reg M;

wire [3:0] outputs;
wire Qcc;
always #5 CP = ~CP;

initial 
begin
    inputs = 4'b0010;
    CP = 0;
    CLR = 1;
    LD = 1;
    M = 1;
    #80 M = 0;
    #80 M = 1;
    #80 M = 0;
    #80 M = 1;

    CLR = 0;
    inputs = 4'b1000;
    #50 CLR =1;
    LD = 0;
    #80 M = 0;
    #80 M = 1;
    #80 M = 0;
    #80 M = 1;
end
    one_b mytest(inputs,CP,CLR,LD,M,outputs,Qcc);
endmodule

