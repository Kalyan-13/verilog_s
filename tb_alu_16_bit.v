`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2024 18:06:01
// Design Name: 
// Module Name: tb_alu_16_bit
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


module tb_alu_16_bit( );
reg clk,reset;
reg [15:0]a_in;
reg [15:0] b_in;
reg [3:0] op_code;
wire [15:0]q_out;

wire carry_borrow,zero,sign,parity,carry_flag;
    alu_16_bit DUT(clk,reset,a_in,b_in,op_code,q_out,carry_borrow,zero,sign,carry_flag,parity);
    always #5 clk =~clk;
    integer i;
    
    initial
    begin
    clk=1'b0;
    reset=1'b0;
    a_in=16'b0;
    b_in=16'b0;
    op_code=4'b0;
    
    #10 reset=1'b1;
        a_in=16'd10;
        b_in=16'd5;
    
    #10   
    for(i=0;i<16;i=i+1) begin
       op_code=op_code+8'h01;
       #20;
       end
    end
    
endmodule
