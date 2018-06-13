`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 02:10:36 AM
// Design Name: 
// Module Name: lab3_3
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

module lab3_3_divider(clk,sig_nsyn,led); // top module
    input clk;
    input sig_nsyn;
    parameter delay=50_000_000;
    output [2:0] led;
    wire clk_N;
    
    divider sub_divider
    (
    .clk(clk),
    .clk_need(clk_N)
    );
    
    pipe3b sub_pipe3b
    (
    sig_nsyn,
    clk_N,
    led[2],
    led[1],
    led[0]
    );
endmodule




module pipe3b
(
    input sig_nsyn,
    input clk,
    output q1,
    output q2,
    output sig_syn
);
    reg q1;
    reg q2;
    reg sig_syn;
    initial begin
        q1 = 0;
        q2 = 0;
        sig_syn = 0;
    end
    always@(posedge clk) begin // use the same signal in different always and they will compete 
        q1<=sig_nsyn;
        q2<=q1;
        sig_syn<=q2;
    end        
endmodule

module divider
(
    input clk,
    //input [31:0] frequency_need,
    output reg clk_need
);
    parameter frequency_before = 32'd100_000_000;  
    reg [31:0] counter;
    parameter frequency_need = 1;   
    wire [31:0] N; 
    
    assign N = (frequency_before/frequency_need) / 2;
    initial counter = 0;
    initial clk_need = 0;   
    
    always @(posedge clk)
        begin
            counter <= counter+1;
            if(counter == N-1)   
            begin 
                clk_need <= ~clk_need;
                counter <= 0;
            end
        end
endmodule















