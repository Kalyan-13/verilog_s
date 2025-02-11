`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2024 21:01:49
// Design Name: 
// Module Name: ram
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


module ram #(parameter DATA_WIDTH=8 ,ADDRESS_WIDTH=16)(
               input clk,cs,wr_en,out_en,
              input [DATA_WIDTH-1:0]data_in,
              input [3:0]address_in,
              output  [DATA_WIDTH:0] data_out
           );
  reg [DATA_WIDTH-1:0] memory[0:ADDRESS_WIDTH-1];
  reg [DATA_WIDTH-1:0] temp_reg;
           always@(posedge clk)
           begin
                   if(cs && wr_en)
                       memory[address_in]<=data_in; ///write to memory
           end
           always@(posedge clk) ///read to temp_reg
                   begin
                        if(cs && !wr_en)
                       temp_reg<=memory[address_in];
                   end
           assign data_out = ((cs&&!wr_en&&out_en)?temp_reg:8'bzzzz_zzzz);
 endmodule
