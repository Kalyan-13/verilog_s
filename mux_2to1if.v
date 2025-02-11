`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 20:53:37
// Design Name: 
// Module Name: mux_2to1if
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


module mux_2to1if(input a_in,b_in,sel_in,output reg y_out);
always @ (a_in,b_in,sel_in)
begin
if (sel_in==1'b1)
y_out=b_in;
else
y_out=a_in;
end
endmodule
