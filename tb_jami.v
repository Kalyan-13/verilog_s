`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 21:55:04
// Design Name: 
// Module Name: tb_jami
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


module tb_jami();

  reg a_in;
  wire y_out;
  jami DUT(a_in,y_out);
  initial
  fork
  #0 a_in=0;
  #4 a_in=1;
  #5 a_in=0;
  #9 a_in=1;
  #11 a_in=0;
  #12 a_in=1;
  #16 a_in=0; 
  #20 a_in=1; 
  #24 a_in=0; 
      
  join

 initial
    begin
        $monitor("time=%0h,a_in=%0h,y_out=%0h",$time,a_in,y_out);
      end
endmodule


  
