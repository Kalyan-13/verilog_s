`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 21:48:43
// Design Name: 
// Module Name: tb_pr_en
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


module tb_pr_en#(parameter DATA_WIDTH=4)();
reg [DATA_WIDTH-1:0] int_reg;
wire [DATA_WIDTH-3:0] y_out;
wire valid_out;

pr_en #(.DATA_WIDTH(4))DUT(
.int_reg(int_reg),
.y_out(y_out),
.valid_out(valid_out)
 );
 always #10 int_reg=int_reg+1;
 initial
 begin
 int_reg=4'b0000;
 #160 $finish;
 
 end

endmodule
