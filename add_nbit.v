`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 08:50:22
// Design Name: 
// Module Name: add_nbit
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


module add_nbit #(parameter N=8)(
     input[N-1:0] a_in,
     input[N-1:0] b_in,
     output[N-1:0] sum_out,
     output carry_out

    );
    assign {carry_out,sum_out} = a_in+b_in;
endmodule
