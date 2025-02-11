`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 23:05:13
// Design Name: 
// Module Name: tb_ram
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


module tb_ram#(parameter DATA_WIDTH=8 ,ADDRESS_WIDTH=16)();
  reg clk,cs,wr_en,out_en;
  reg [DATA_WIDTH-1:0]data_in;
  reg [3:0]address_in;
  wire [DATA_WIDTH-1:0] data_out;
    
    
    ram #(.DATA_WIDTH(8),.ADDRESS_WIDTH(16)) DUT ( clk,cs,wr_en,out_en,data_in,address_in);
     always #5 clk =~clk;
     always #10 address_in = address_in+1;
     always #160 wr_en =!wr_en;
     always #400 cs =~cs;
     always #160 out_en = !out_en;
     always #10 data_in = data_in+1;
     initial begin
     cs=1;
     clk=0;
     wr_en=1;
     out_en=0;
     data_in=0;
     address_in=0;
     #500 $finish;
    /*#100
    cs=1;
     wr_en=1;
     out_en=0;
     data_in=8'h11110000;
     address_in=4'b1000;*/
    /* #200
    cs=1;
     wr_en=0;
     out_en=1;
     data_in=8'h11110000;
     address_in=4'b1000;
    end */
    end
endmodule
