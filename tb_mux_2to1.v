`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 07:55:27
// Design Name: 
// Module Name: tb_mux_2to1
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


module tb_mux_2to1();
reg a_in;
reg b_in;
reg set_in;
wire y_out;



mux_2to1 DUT(
 .a_in(a_in),
 .b_in(b_in),
 .set_in(set_in),
  .y_out(y_out)
  );
  
  
  initial begin
  a_in=0;b_in=0;set_in=0;
 #5 a_in=0;b_in=0;set_in=1;
 #5 a_in=0;b_in=1;set_in=0;
 #5 a_in=0;b_in=1;set_in=1;
 #5 a_in=1;b_in=0;set_in=0;
 #5 a_in=1;b_in=0;set_in=1;
 #5 a_in=1;b_in=1;set_in=0;
 #5 a_in=1;b_in=1;set_in=1;
 #5 $finish;
 
 end
endmodule
