`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 20:21:01
// Design Name: 
// Module Name: binary_4bit
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


module binary_4bit(
          input [1:0]opcode,
          input [3:0] a_in,b_in,
          output reg [3:0] y_out
              );
  always@*
    begin
      case(opcode)
        2'b00:y_out=~a_in;
        2'b01:y_out=a_in | b_in;
        2'b10:y_out=a_in & b_in;
        2'b11:y_out=a_in ^ b_in;
        default:y_out=4'b0000;
      endcase
   end            
endmodule
