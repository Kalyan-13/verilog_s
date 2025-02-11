`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 20:19:29
// Design Name: 
// Module Name: tb_left_shift
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


module tb_left_shift();
reg clk,load,reset_n;
reg [7:0] d_in;
wire [7:0] d_out;

left_shift_reg DUT (clk,load,reset_n,d_in,d_out);

always #5 clk=~clk;
always #70 load=~load;
always #50 reset_n=~reset_n;
always #100 d_in=d_in+1;

initial
begin
    clk=0;d_in=0;load=0;reset_n=0;
    #2000 $finish;
end
endmodule
