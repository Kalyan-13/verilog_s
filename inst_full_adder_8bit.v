`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 08:38:43
// Design Name: 
// Module Name: inst_full_adder_8bit
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


module inst_full_adder_8bit(
                input  [7:0]a_in,b_in,
                input carry_in,
                output [7:0]  sum_out,
                output carry_out

    );
    wire [6:0] c_in;
    full_adder_1bit_func f1(
                  .a_in(a_in[0]),
                  .b_in(b_in[0]),
                  .carry_in(carry_in),
                  .sum_out(sum_out[0]),
                 .carry_out(c_in[0])
                );
    full_adder_1bit_func f2(
                  .a_in(a_in[1]),
                  .b_in(b_in[1]),
                  .carry_in(c_in[0]),
                  .sum_out(sum_out[1]),
                 .carry_out(c_in[1])
                );
    full_adder_1bit_func f3(
                  .a_in(a_in[2]),
                  .b_in(b_in[2]),
                  .carry_in(c_in[1]),
                  .sum_out(sum_out[2]),
                 .carry_out(c_in[2])
                );
      full_adder_1bit_func f4(
                  .a_in(a_in[3]),
                  .b_in(b_in[3]),
                  .carry_in(c_in[2]),
                  .sum_out(sum_out[3]),
                 .carry_out(c_in[3])
                );
      full_adder_1bit_func f5(
                  .a_in(a_in[4]),
                  .b_in(b_in[4]),
                  .carry_in(c_in[3]),
                  .sum_out(sum_out[4]),
                 .carry_out(c_in[4])
                );
      full_adder_1bit_func f6(
                  .a_in(a_in[5]),
                  .b_in(b_in[5]),
                  .carry_in(c_in[4]),
                  .sum_out(sum_out[5]),
                 .carry_out(c_in[5])
                );
      full_adder_1bit_func f7(
                  .a_in(a_in[6]),
                  .b_in(b_in[6]),
                  .carry_in(c_in[5]),
                  .sum_out(sum_out[6]),
                 .carry_out(c_in[6])
                );
      full_adder_1bit_func f8(
                  .a_in(a_in[7]),
                  .b_in(b_in[7]),
                  .carry_in(c_in[6]),
                  .sum_out(sum_out[7]),
                 .carry_out(carry_out)
                );
    
endmodule
