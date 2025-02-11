`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 07:44:06
// Design Name: 
// Module Name: mux_2to1
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


module mux_2to1(
input a_in,b_in,set_in,output y_out);
wire y1,y2,y3;
//multiple continuous assignment
assign y_out=y1 | y2;
assign y1=set_in & b_in;
assign y2=y3 & a_in;
assign y3=!set_in;
endmodule
