`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 03:26:36 PM
// Design Name: 
// Module Name: lab4_1
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


module lab4_1_divider
(
    input [3:0]in,
    input clk,
    input CLR,
    input LD,
    input M,
    output [3:0]Q,
    output Qcc
);

    divider sub_divider(clk,CP);
    lab4_1 sub_lab4_1
    (
    .in(in),
    .CP(CP),
    .CLR(CLR),
    .LD(LD),
    .M(M),
    .Q(Q),
    .Qcc(Qcc)
    );
endmodule 

module lab4_1
(
    input [3:0]in,
    input CP,
    input CLR,
    input LD,
    input M,
    output reg [3:0]Q,
    output reg Qcc
);
	initial begin 
	   Q=4'b0000;
	   Qcc=1;
	end   
	always@(posedge CP) begin
    if(~CLR) begin //CLR=0
        Q<=4'b0000;
        Qcc<=0;
        end
    else 
    if(~LD) begin // output the input directly  when LD=0
       Q<=in;
       Qcc<=0;
       end
    else 
    if(M==1) begin // add mode M=1
        if(Q==4'b1111) begin
           Qcc<=0;
           //#10 Qcc<=1; // Qcc pluse
           Q<=4'b0000;
        end
        else begin   
            Q<=Q+4'b0001;
            Qcc<=1;       
        end
    end   
    else 
        if(~M) begin //decrease mode m=0
            if(Q==4'b0000)begin
                Qcc<=0;
                //#10 Qcc<=1;  // Qcc pluse
                Q<=4'b1111;
            end
            else begin   
                Q<=Q-4'b0001;
                Qcc<=1;
            end
        end
    end
endmodule


module divider
(
    input clk,
    //input [31:0] frequency_need,
    output reg clk_need
);
    parameter frequency_before = 32'd100_000_000;  
    //parameter frequency_before = 1;  
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
