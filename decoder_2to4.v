`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 20:03:28
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4(
                input [1:0] sel_in,
                input en_in,
                output [3:0] y_out   
   );
 // wire y_out[0],y_out[1],y_out[2],y_out[3];;
  //assign y_out[0]= en_in & !(sel_in[0]) & !(sel_in[1]);
   //assign y_out[1]= en_in & !(sel_in[0]) & (sel_in[1]);
   //assign y_out[2]= en_in & sel_in[0]& !(sel_in[1]);
    //assign y_out[3]= en_in & sel_in[0] & (sel_in[1]);
  always@(sel_in,en_in)
  begin
  if(enable) begin
  case(sel_in)
  2'b00:y=4'b0001;
    2'b00:y=4'b0001;
  2'b00:y=4'b0001;
  2'b00:y=4'b0001;

 end
  
endmodule
