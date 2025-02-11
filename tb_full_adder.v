`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 20:16:12
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();
 reg a_in;
 reg b_in;
 reg c_in;
 wire sum_out;
 wire car_out;
full_adder DUT (
      .a_in(a_in),
      .b_in(b_in),
      .c_in(c_in),
      .sum_out(sum_out),
      .car_out(car_out)
    );
   
   initial
   begin
   a_in=0;b_in=0;c_in=0 ;
   #5   a_in=0;b_in=0;c_in=1 ; 
   #5   a_in=0;b_in=1;c_in=0 ;     
   #5   a_in=0;b_in=1;c_in=1 ;     
   #5   a_in=1;b_in=0;c_in=0 ;     
   #5   a_in=1;b_in=0;c_in=1 ;     
   #5   a_in=1;b_in=1;c_in=0 ;     
   #5   a_in=1;b_in=1;c_in=1 ;     
   
   end
endmodule
