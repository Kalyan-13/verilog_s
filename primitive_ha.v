`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 08:39:38
// Design Name: 
// Module Name: primitive_ha
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


module primitive_ha(
                   input a_in,b_in,
                   output sum_out,carry_out);
                   xor u1(sum_out,a_in,b_in);
                   and u2(carry_out,a_in,b_in);               
endmodule
