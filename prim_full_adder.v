`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 08:43:39
// Design Name: 
// Module Name: prim_full_adder
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


module prim_full_adder(
                      input a_in,b_in,car_in,
                      output sum_out,
                      output carry_out
                      );
     wire sum_out0,carry_out1,carry_out0;
     
     primitive_ha ha1(
     .a_in(a_in),
     .b_in(b_in),
     .sum_out(sum_out0),
     .carry_out(carry_out0) );
                     
     primitive_ha ha2(
     .a_in(sum_out0),
     .b_in(car_in),
     .sum_out(sum_out),
     .carry_out(carry_out1));  
     
     or u1 ( carry_out,carry_out1,carry_out0);           
                                       
endmodule
