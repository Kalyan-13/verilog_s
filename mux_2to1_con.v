`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 19:48:57
// Design Name: 
// Module Name: mux_2to1_con
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


module mux_2to1_con(
         input a_in,b_in,
         input sel_in,
         output reg y_out  

    ); 
    
    always@(*)
    begin
    case(sel_in)
    
    1'b0:y_out=a_in;
    1'b1:y_out=b_in;

  endcase
  end  
endmodule
