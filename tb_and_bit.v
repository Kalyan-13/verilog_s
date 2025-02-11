`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 09:00:42
// Design Name: 
// Module Name: tb_and_bit
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


module tb_and_bit( );
     reg [3:0] a_in;
     reg [3:0] b_in;
     wire [3:0] y_out;
     
     //module instance
     multi_bit #(.DATA_WIDTH(4))DUT
     (
       .a_in(a_in),
       .b_in(b_in),
       .y_out(y_out)
     );
     
 initial //execute only once
  begin
     a_in =0;
     b_in =0;
     //at 10 nsec a_in=a,b_in=b
     #10 a_in = 4'b1010; b_in = 4'b1011;
     //at 10+20=30 nsec a_in =f,b_in=7
     #20 a_in = 4'b1111; b_in = 4'b0111;
  end   
endmodule
