`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 08:14:47
// Design Name: 
// Module Name: tb_clk_generator
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


module tb_clk_generator();
reg clk;
//always #5 clk=~clk;
initial
begin
    clk=0;
    forever #10 clk=~clk;
    end
  initial
   begin
    #250 $finish();
    end

endmodule
