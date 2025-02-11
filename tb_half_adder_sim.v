`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 09:06:12
// Design Name: 
// Module Name: tb_half_adder_sim
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


module tb_half_adder_sim();
reg a_in,b_in;
wire sum_out,carry_out;

half_adder_sim DUT (a_in, b_in,sum_out,carry_out);

initial
//begin
fork
a_in=0;b_in=0;
#10 a_in=1;
#20 a_in=0;           
#25 b_in=1;
#30 a_in=1;
#40 b_in=0;
#50 a_in=0;
#60 a_in=1;
#80 b_in=1;
#120 $finish();
join
//end
endmodule
