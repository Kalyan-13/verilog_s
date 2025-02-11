`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 20:16:17
// Design Name: 
// Module Name: tb_repeat_loop
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


module tb_repeat_loop();
integer i;
initial
begin
i=0;

repeat(10)
begin
i=i+1;
$display("the value of i=%0d",i);
end
end
endmodule
