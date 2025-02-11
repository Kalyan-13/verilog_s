`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 08:10:34
// Design Name: 
// Module Name: full_adder_1bit_func
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


module full_adder_1bit_func(
                input  a_in,b_in,carry_in,
                output  sum_out,
                output carry_out
                );
    assign {carry_out,sum_out}= addition(a_in,b_in,carry_in);
   
function  [1:0] addition(input a_in,b_in,carry_in);
begin
     addition = a_in+b_in+carry_in; 
end
endfunction  


endmodule
