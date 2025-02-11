`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 19:02:06
// Design Name: 
// Module Name: tb_sdfg
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


module tb_sdfg();
 reg clock;
    reg reset_n;
    reg [15:0] a_in, b_in;
    reg [3:0] opcode;
    wire [15:0] ALU_OUT;
    wire CarryOut;
    wire sign;
    wire zero;
    wire parity;
 
    integer i;
    
    alu_16_bit DUT (clk,reset_n, a_in,b_in, opcode,ALU_Out,CarryOut,sign,zero,parity);
   
 
    initial clock = 1'b0; 
 
  
    always #10 clock = ~clk;
 
   
    initial begin
        a_in = 16'h0;
        b_in = 16'h0;
        opcode = 4'h0;
        reset_n= 0;
         #100 reset_n =1;
         a_in = 16'h10;
        b_in = 16'h05;
        opcode = 4'h2;
  
        for (i=0;i<=15;i=i+1) begin
            opcode = opcode + 8'h01;
            #200;
         end
     end
endmodule
