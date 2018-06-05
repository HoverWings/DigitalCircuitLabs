`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2018 12:28:49 AM
// Design Name: 
// Module Name: DClab3
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


module mux_latch
(
    input   [3:0] data,
    input   [1:0] valid,
    input   flag,
    output reg valid_data);
initial begin
    valid_data=1'b0;
    end
always @ (*)
begin
    valid_data = 1'b0; // assign defualt value for valid_data
    case(valid)
        2'b00 : begin if(flag) valid_data = data[0];end
        2'b01 : begin if(flag) valid_data = data[1];end
        2'b10 : begin if(flag) valid_data = data[2];end
        2'b11 : begin if(flag) valid_data = data[3];end
     endcase
end     
endmodule
