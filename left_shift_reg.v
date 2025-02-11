`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 20:10:21
// Design Name: 
// Module Name: left_shift_reg
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


module left_shift_reg(

                       input clk,load,reset_n,
                       input [7:0] d_in,
                       output reg [7:0] d_out
                      );
                      integer i;
                      always@(posedge clk,negedge reset_n)
                      begin
                      if(~reset_n)
                            d_out<=8'b0;
                         else
                            if(load)
                             d_out<=d_in;
                      else
                      begin
                      for(i=0;i<7;i=i+1)
                      begin
                      d_out[i+1]<=d_out[i];
                      end
                      d_out[0]<=d_out[7];
                      
                      //d_out<={d_out [6:0],d_out[7]};
        
         end         
     end  
endmodule
