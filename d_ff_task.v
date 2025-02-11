`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 20:52:19
// Design Name: 
// Module Name: d_ff_task
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


module d_ff_task(
                    input d_in,clk,reset_n,
                    output reg q_out
                );
                always@(posedge clk)
                begin
                    ff(d_in,reset_n,q_out);
                end
                task ff(input d_in,reset_n,output reg q_out);
                begin
                if(~reset_n)
                  q_out='b0;
                else
                    q_out=d_in;
                 end  
              endtask
           
                
                 /*  dff(clk,reset_n,d_in,q1_out,q2_out);
                   
                 end
                 
                 task d_ff (input clk, reset_n,d_in,
                             output q1_out,q2_out);
                  begin
                /* always@(posedge clk,negedge reset_n)
                 begin
                 if(!reset_n)
                    begin
                        q_out<='b0;
                        q1_out<='b0;
                     end
                    else
                    begin
                    q_out<=d_in;
                    q1_out<=!d_in;
                    end
                end*/
                
                
endmodule
