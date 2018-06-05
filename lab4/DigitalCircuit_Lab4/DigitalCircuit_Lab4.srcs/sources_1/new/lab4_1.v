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
    input A,
    input B,
    input C,
    input D, 
    input LD,   // prefabricated control
    input CLR,  // set 0
    input clk,
    input M,    //chose mode
    output reg Qcc,
    // out put value
    output reg Qa,
    output reg Qb,
    output reg Qc,
    output reg Qd
);
    parameter delay=50_000_000;
    wire clk_N;
    divider sub_divider
    (
    .clk(clk),
    .clk_N(clk_N),
    .delay(delay)
    );
    lab4_1 sub_lab4_1
    (
    // input Initial value
    A,
    B,
    C,
    D, 
    LD,   // prefabricated control
    CLR,  // set 0
    clk_N,
    M,    //chose mode
    Qcc,
    // out put value
    Qa,
    Qb,
    Qc,
    Qd
    );
endmodule 

module lab4_1
(
    // input Initial value
    input A,
    input B,
    input C,
    input D, 
    input LD,   // prefabricated control
    input CLR,  // set 0
    input CP,
    input M,    //chose mode
    output reg Qcc,
    // out put value
    output reg Qa,
    output reg Qb,
    output reg Qc,
    output reg Qd
    );
    reg [4:0] out;
    reg bd; //boundary
    
    initial
        begin
        Qcc = 1;
        out = 5'b00000;
        {bd, Qd, Qc, Qb, Qa} = out;
        end
        
    always @ (negedge CLR) // set 0
        begin
        out = 5'b00000;
        {bd, Qd, Qc, Qb, Qa} = out;
        end
            
    always @ (negedge LD) // output the input straightly
        begin
        out = 5'b00000;
        out[3:0] = {D, C, B, A};
        {bd, Qd, Qc, Qb, Qa} = out;
        end
    
    always @ (posedge CP) 
        begin
        if(CLR)
            begin
            if(LD)
                begin
                if(M)
                    begin
                    out = out + 1;
                    end
                else
                    begin
                    out = out - 1;
                    end
                end
            else // in the case that the value change during the period
                begin
                out = 5'b00000;
                out[3:0] = {D, C, B, A};
                end
            end
        else
            begin
            out = 5'b00000;
            end
        {bd, Qd, Qc, Qb, Qa} = out;
        end
    
    always @ (bd)
        begin
        Qcc = 0;
        #5 Qcc = 1;
        end
endmodule


//D:for divider clk into clj_N
module divider(clk,clk_N,delay);
    input clk;                      
    input delay;                
    output clk_N;                   
    reg clk_N;
    parameter N = 100_000_000;     // 1Hz,N=fclk/fclk_N


    reg [31:0] counter;            

    always @(posedge clk)           
    begin    
       if(counter==delay)
        begin
            clk_N<=~clk_N;
            counter<=32'd0;
        end
    else
        begin
            counter<=counter+32'd1;
        end                             
    end                           
endmodule