`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2024 15:51:24
// Design Name: 
// Module Name: alu_16_bit
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


module alu_16_bit(input clk,
                 input reset,
                 input [15:0]a_in,
                 input [15:0]b_in,
                 input [3:0]op_code,
                 output reg [15:0]q_out,
                 output reg carry_borrow,
                 output reg zero,
                 output reg sign,
                 output reg carry_flag,
                 output reg parity);
                 
               
  
    always@(posedge clk or negedge reset)
    begin
        if(~reset)
            begin
            
                q_out<=16'b0;
                carry_borrow<=0;
                zero<=0;      
                sign<=0;      
                carry_flag<=0;
                parity<=0; 
            end 
        else begin
         case(op_code)
            
            4'b0000: {carry_borrow,q_out}<=a_in+b_in;
            4'b0001: {carry_borrow,q_out}<=a_in-b_in;
            4'b0010: {carry_borrow,q_out}<=a_in+1;
            4'b0011: {carry_borrow,q_out}<=a_in-1;
            4'b0100: q_out<={1'b0,a_in[15:1]}; ///right shift
            4'b0101: q_out<={a_in[14:0],1'b0}; ///left shift
            4'b0110: q_out<=a_in | b_in;
            4'b0111: q_out<=a_in ^ b_in;
            4'b1000: q_out<=a_in & b_in;
            4'b1001:q_out<=~a_in;
            default:q_out<=16'b0;
          endcase
          
         zero<=(q_out==16'b0);
         carry_flag<=carry_borrow;
         sign<=(carry_borrow)?1'b1:1'b0;
         parity<=~^q_out;
        end
    end
endmodule