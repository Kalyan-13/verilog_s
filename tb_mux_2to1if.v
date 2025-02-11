`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 20:57:12
// Design Name: 
// Module Name: tb_mux_2to1if
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



/*integer i,j,k;
initial begin
for(i=0;i<2;i=i+1)
begin
sel_in=i;
for(j=0;j<2;j=i+1)
begin
a_in=j;
for(k=0;k<2;k=i+1)
begin
b_in=k;
#10
end
end
$finishbegin 
end
endmodule*/
module tb_mux_2to1if();
reg a_in,b_in,sel_in;
wire y_out;

mux_2to1if DUT( .a_in(a_in),.b_in(b_in),.sel_in(sel_in),.y_out(y_out));

always #10 sel_in =~sel_in;
always #10 a_in = ~a_in;
always #10 b_in = ~b_in;

initial begin

a_in = 0;
b_in =1;
sel_in=0;


end
endmodule
