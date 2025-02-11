`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 07:54:05
// Design Name: 
// Module Name: tb_while
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


module tb_while();
integer i=0;

initial
begin
    while(i<10)
    begin
     //$display("The value of i=%0h",i);
        i=i+1;
        $display("The value of i=%0h",i);
        end
        end
endmodule
