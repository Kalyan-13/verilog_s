`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 09:09:10
// Design Name: 
// Module Name: half_adder_sim
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



module half_adder_sim(
                    input a_in,
                    input b_in,
                    output reg sum_out,
                    output reg carry_out
                 );
                 always@*
                 begin
                    sum_out=a_in^b_in;
                    carry_out=a_in&b_in;
                end  
endmodule

