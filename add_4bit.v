`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 07:55:16
// Design Name: 
// Module Name: add_4bit
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


module add_4bit(
                input [3:0] a_in,b_in,
                output [3:0] sum_out,
                output carry_out
                );
                assign {carry_out,sum_out}=addition(a_in,b_in);
                function [4:0] addition (input [3:0]a_in,b_in);
                begin
                    addition=a_in+b_in;
                end
                endfunction
endmodule
