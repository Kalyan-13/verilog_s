`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 07:35:04
// Design Name: 
// Module Name: multi_bit
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


module multi_bit#(parameter DATA_WIDTH=4)(
                 input [DATA_WIDTH-1:0] a_in,
                 input [DATA_WIDTH-1:0] b_in,
                 output [DATA_WIDTH-1:0] y_out
                 );
  assign y_out = a_in & b_in;
endmodule
