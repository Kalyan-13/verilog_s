`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 20:40:25
// Design Name: 
// Module Name: half_adder_task
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
 task adder(input a, b,
                  output s, c);
       begin
       {c,s}=a+b;
       end
       endtask

module half_adder_task(
                        input a_in,b_in,
                    output reg sum_out,carry_out 
                        
                        
    );
     always@*
         begin
        adder(a_in,b_in,sum_out,carry_out);
        end
endmodule

module task_f_adder(
                    input a_in,b_in,carry_in,
                    output reg sum_out,carry_out 
                    );
      half_adder_task1(
                        a_in,b_in,
                    sum_out,carry_out);
      half_adder_task(
                        a_in,b_in,
                  sum_out,carry_out);
                  
                  
endmodule