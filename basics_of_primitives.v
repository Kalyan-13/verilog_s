`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 08:29:58
// Design Name: 
// Module Name: basics_of_primitives
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


module basics_of_primitives(
                            input a_in,b_in,sel_in,
                            output y_out);
             and u1(y2,a_in,sel_in);
             not u2(y1,sel_in);
             and u3 (y3,b_in,y1);
             or u4(y_out,y2,y3);
endmodule
