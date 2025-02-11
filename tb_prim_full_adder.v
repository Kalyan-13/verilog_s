`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 09:02:28
// Design Name: 
// Module Name: tb_prim_full_adder
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


module tb_prim_full_adder();
reg a_in,b_in,car_in;
wire sum_out,carry_out;

     prim_full_adder DUT(a_in,b_in,car_in,sum_out,carry_out );
     always #10 a_in=~a_in;
     always #20 b_in=~b_in;
     always #30 car_in=~car_in;
      initial begin
                   a_in=0;
                   b_in=0;
                   car_in=0;
                   #500 $finish;
      end
    
endmodule
