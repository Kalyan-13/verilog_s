`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 08:02:53
// Design Name: 
// Module Name: tb_add_4bit
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


module tb_add_4bit();
reg [3:0] a_in,b_in;
wire [3:0]sum_out;
wire carry_out;

add_4bit DUT(a_in,b_in,sum_out,carry_out);

always #10 a_in=~a_in;
always #20 b_in=~b_in;

initial
begin
    $monitor("a_in=%h,b_in=%h,sum_out=%0h,carry_out=%0h"
    ,$a_in,b_in,sum_out,carry_out);
    a_in=0;b_in=0;
    #500 $finish;
    end

endmodule
