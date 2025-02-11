`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2024 09:17:35
// Design Name: 
// Module Name: ram_16to8_inout
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


module ram_16to8_inout(
                        input clk,cs,wr_en,out_en,
                        inout [7:0]data_inout,
                         input [3:0]address_in
                       );
                   reg[7:0]temp_reg;
                   reg[7:0]memory[0:15];
                  // assign temp_reg=data_inout;
                   always@(posedge clk)
           begin
                   if(cs && wr_en)
                       memory[address_in]<=data_inout; ///write to memory
           end
           always@(posedge clk) ///read to temp_reg
                   begin
                        if(cs && !wr_en)
                       temp_reg<=memory[address_in];
                   end
           assign data_inout = ((cs&&!wr_en&&out_en)?temp_reg:8'bzzzz_zzzz);
                   
endmodule
