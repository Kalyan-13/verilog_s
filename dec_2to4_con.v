`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 19:58:08
// Design Name: 
// Module Name: dec_2to4_con
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


module dec_2to4_con(
  input [1:0] sel_in,
  input en_in,
  output reg [3:0] y_out
    );
   
   always@(*)
   begin
   case({en_in,sel_in})
   3'b000: y_out = 4'b0001;
   3'b001: y_out = 4'b0010;
   3'b010: y_out = 4'b0100;
   3'b111: y_out = 4'b1000;
   default:y_out = 4'b0000;
   endcase
   end  
endmodule
