`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 08:38:34
// Design Name: 
// Module Name: multiple_drivers
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


module multiple_drivers(
                       input a_in,b_in,
                       output reg y_out
                        );
                always@* y_out=~a_in;
               // begin
               // y_out=~a_in;
               // end
                always@*
                begin
                y_out = a_in^b_in;
                end
                always@* 
                begin
                y_out = a_in&b_in;
                end
             
                    
endmodule
