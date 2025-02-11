`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 21:22:56
// Design Name: 
// Module Name: tb_dff_task
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


module tb_dff_task();
reg d_in,clk,reset_n;
wire q_out;

d_ff_task DUT(d_in,clk,reset_n,q_out);
                    always #5 clk=~clk;
                    always #10 d_in=~d_in;
                    
                    initial begin
                    clk=0; reset_n=0;d_in=0;
                    #10 reset_n=1;
                    end
endmodule
