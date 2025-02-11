`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 07:53:31
// Design Name: 
// Module Name: tb_task_no_of_0s
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


module tb_task_no_of_0s();
reg [7:0] a_in;
wire [3:0] np_of_0s;
always #10 a_in =a_in+1;
task_no_of_0s DUT ( a_in, np_of_0s );
                    initial begin
                   a_in=8'b00000000;
                   
                   #500 $finish;
                    end
endmodule
