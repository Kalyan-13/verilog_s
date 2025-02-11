`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 08:57:12
// Design Name: 
// Module Name: tb_add_nbit
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


module tb_add_nbit();
    reg [7:0]   a_in;
    reg [7:0]   b_in;
    wire [7:0]  sum_out;
    wire        carry_out;
    
   add_nbit #(.N(8)) DUT(.a_in(a_in),.b_in(b_in),.sum_out(sum_out),.carry_out(carry_out));
     
   initial
     begin
       a_in=8'b00000000;b_in=8'b00000000;
       #10 a_in=8'b00000011;b_in=8'b00000010;
       #10 a_in=8'b00000001;b_in=8'b00000110;
       #10 a_in=8'b00000111;b_in=8'b00001010;
       #10 a_in=8'b00010011;b_in=8'b00100010;
       #10 a_in=8'b00010001;b_in=8'b00000010;
       #10 a_in=8'b11111111;b_in=8'b111111111;
       #10 $finish;
     end
endmodule
