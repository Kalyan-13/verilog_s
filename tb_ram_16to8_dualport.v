`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.10.2024 10:43:29
// Design Name: 
// Module Name: tb_ram_16to8_dualport
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


module tb_ram_16to8_dualport();

reg clk,cs_0,wr_en_0,out_en_0,cs_1,wr_en_1,out_en_1;
wire [7:0] data_inout_0;
wire [7:0] data_inout_1;
reg [3:0]  address_in_0;
reg [3:0]  address_in_1;
reg [7:0]temp_reg_1;
reg [7:0]temp_reg_2;


ram_16to8_dualport DUT(clk,cs_0,wr_en_0,out_en_0,cs_1,wr_en_1,out_en_1,data_inout_0,data_inout_1,
                   address_in_0,address_in_1
                   );
                   
      assign data_inout_0 = (!out_en_0&wr_en_0&&cs_0) ? temp_reg_1 : 8'bz;
      assign data_inout_1 = (!out_en_1&wr_en_1&&cs_1) ? temp_reg_2 : 8'bz;
     always #5 clk =~clk;
     always #10 address_in_0 = address_in_0+1;
     always #10 address_in_1 = address_in_1+1;
     always #160 wr_en_0 =!wr_en_0;
     always #160 wr_en_1 =!wr_en_1;
     always #400 cs_0 =~cs_0;
     always #400 cs_1 =~cs_1;
     always #160 out_en_0 = !out_en_0;
     always #160 out_en_1 = !out_en_1;
     always #10 temp_reg_1= $random(); 
     always #10 temp_reg_2= $random(); 
                
                   
  initial 
  begin
  
     cs_0=1;cs_1=1;
     clk=0;
     wr_en_0=1;wr_en_1=0;
     out_en_0=0;out_en_1=1;
     temp_reg_1=0;temp_reg_2=0;
     address_in_0=0;address_in_1=0;
                   
     end                    
endmodule
