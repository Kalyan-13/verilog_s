`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 07:39:19
// Design Name: 
// Module Name: add_sub_1bit
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


module add_sub_1bit(
input a_in,b_in,opcode,
output sum_out,flag_out);
reg sum_out,flag_out,inter_b_in;
always@(*)
begin
{flag_out,sum_out}=a_in+inter_b_in+opcode;
if(opcode==1'b0)
inter_b_in=b_in;
else
inter_b_in=~b_in;
end
endmodule
