`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2024 10:24:37
// Design Name: 
// Module Name: ram_16to8_dualport
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


module ram_16to8_dualport(
                          input clk,cs_0,wr_en_0,out_en_0,cs_1,wr_en_1,out_en_1,
                           inout [7:0]data_inout_0,
                           inout [7:0]data_inout_1,
                           input [3:0]address_in_0,
                           input [3:0]address_in_1
                         );
                   reg[7:0]temp_reg_1;
                   reg[7:0]temp_reg_2;
                   reg[7:0]memory[0:15];
                  // assign temp_reg=data_inout;
           always@(posedge clk)
           begin
                   if(cs_0 && wr_en_0)
                       memory[address_in_0]<=data_inout_0; ///write to memory
                      
           end
           
           always@(posedge clk)
           begin
            if(cs_1 && wr_en_1)
                       memory[address_in_1]<=data_inout_1;    
            end
            
           always@(posedge clk) ///read to temp_reg
           begin
                if(cs_0 && !wr_en_0)
                 temp_reg_1<=memory[address_in_0];
                        
           end
           
            always@(posedge clk) ///read to temp_reg
                   begin
                   if(cs_1 && !wr_en_1)
                       temp_reg_2<=memory[address_in_1];
                   end
                   
                       
           assign data_inout_0 = ((cs_0&&!wr_en_0&&out_en_0)?temp_reg_1:8'bzzzz_zzzz);
           assign data_inout_1 = ((cs_1&&!wr_en_1&&out_en_1)?temp_reg_2:8'bzzzz_zzzz);        


  
endmodule
