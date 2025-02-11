`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 21:21:04
// Design Name: 
// Module Name: tb_no_of_1s
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


module tb_no_of_1s();
reg[15:0] d_in;
reg clk;
reg reset_n;

wire [4:0]d_out;

no_of_1s DUT(d_in,clk,reset_n,d_out);
always #10 clk=~clk;
initial begin

clk=0;reset_n=-0;d_in=0;
#10 reset_n=1;
d_in=16'b0000001111110010;
#500 $finish;
end
endmodule
