`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2024 20:13:25
// Design Name: 
// Module Name: task_f_adder
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
 task addition(input a, b, c_in,
                  output s, c);
       begin
       {c,s}=a+b+c_in;
       end
       endtask

module task_f_adder(
                    input a_in,b_in,carry_in,
                    output reg sum_out,carry_out 
                    );
                           //adder(a_in,b_in,carry_in,sum_out,carry_out);
         always@*
         begin
        addition(a_in,b_in,carry_in,sum_out,carry_out);
        end
      /* task addition(input a, b, c_in,
                  output s, c);
       begin
       {c,s}=a+b+c_in;
       end
       endtask*/
endmodule
