`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 20:14:20
// Design Name: 
// Module Name: full_adder
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


module full_adder(
      input a_in,
      input b_in,
      input c_in,
      output sum_out,
      output car_out
    );
    
    wire sum_out0;
 wire car_out1;
 wire car_out2;
 
 
half_adder half_adder1(
            .a_in(a_in),
            .b_in(b_in),
            .car_out(car_out1),
            .sum_out(sum_out0)
            );
            
 half_adder half_adder2(
            .a_in(sum_out0),
            .b_in(c_in),
            .car_out(car_out2),
            .sum_out(sum_out)
            );  
    assign car_out = car_out1|car_out2; 
   
    
endmodule
