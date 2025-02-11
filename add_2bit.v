`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 08:22:18
// Design Name: 
// Module Name: add_2bit
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


module add_2bit(
     input a_in,
     input b_in,
     output  sum_out,
     output  carry_out

    );
    wire [1:0] tmp_sum; 
    assign tmp_sum = a_in+b_in;
    assign sum_out= tmp_sum[0];
    assign carry_out= tmp_sum[1];
endmodule
