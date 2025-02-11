`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 07:40:49
// Design Name: 
// Module Name: task_no_of_0s
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


module task_no_of_0s(
                    input [7:0] a_in,
                    output reg [3:0] np_of_0s );
                    
    integer i;
    always@*
    begin
        count_no(a_in,np_of_0s);          
    end
  task count_no(input [7:0] a_in,
                output [3:0] count);
       begin
           count =0;
           for (i=0;i<8;i=i+1)
           begin
                if(a_in[i]==0)
                count=count+1;
                else  
                count=count;
           end
       end
 endtask   
endmodule  
                
