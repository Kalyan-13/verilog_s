`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2024 09:24:17
// Design Name: 
// Module Name: tb_16to8_inout
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


module tb_16to8_inout();

reg clk,cs,wr_en,out_en;
  //reg [7:0]data_inout;
  reg [3:0]address_in;
  reg [7:0]temp_reg;
  wire [7:0] data_inout;
  
ram_16to8_inout DUT ( clk,cs,wr_en,out_en,data_inout,address_in);
 assign data_inout = (!out_en && wr_en && cs) ? temp_reg : 8'bz;
     always #5 clk =~clk;
     always #10 address_in = address_in+1;
     always #160 wr_en =!wr_en;
     always #400 cs =~cs;
     always #160 out_en = !out_en;
     always #10 temp_reg= $random();
     //assign data_inout = (!out_en&wr_en&&cs) ? temp_reg : 8'bz;
     initial begin
     cs=1;
     clk=0;
     wr_en=1;
     out_en=0;
     temp_reg=0;
     address_in=0;
     
     // #10 data_inout = data_inout+1;
     #500 $finish;
     end
endmodule
