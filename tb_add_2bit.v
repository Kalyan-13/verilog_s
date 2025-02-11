`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 08:26:19
// Design Name: 
// Module Name: tb_add_2bit
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


module tb_add_2bit();

       reg a_in, b_in;
       wire sum_out,carry_out;
    
 add_2bit DUT(.a_in(a_in),.b_in(b_in),.sum_out(sum_out),.carry_out(carry_out));
     
 initial 
   begin
    a_in=0;b_in=0;
    #10 a_in=0;b_in=1;
    #10 a_in=1;b_in=0;
    #10 a_in=1;b_in=1;
    #10 $finish;
   end
endmodule
