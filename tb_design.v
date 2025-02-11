`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 08:46:09
// Design Name: 
// Module Name: tb_design
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


module tb_design();
reg [3:0] a_in;
initial
//begin
fork
//$monitor("time=%0t,a_in=%0b",$time,a_in);

a_in=0;
#10 a_in=4'b0001;
#20 a_in=4'b0101;
#30 a_in=4'b0110;
#40 a_in=4'b0110;
#100 $finish();
join
//end



endmodule
