`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 21:02:06
// Design Name: 
// Module Name: pr_en
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


module pr_en #(parameter DATA_WIDTH =4)(
                                         input [DATA_WIDTH-1:0] int_reg,
                                         output reg [DATA_WIDTH-3:0] y_out,
                                         output reg valid_out
                                         );
  always@*
  begin
    if(int_reg[3]==1'b1)
    begin
      y_out =2'b11;
      valid_out=1;
    end 
    else if(int_reg[2]==1'b1)
    begin
      y_out =2'b10;
      valid_out=1;
    end 
    else if(int_reg[1]==1'b1)
    begin
      y_out =2'b01;
      valid_out=1;
    end  
    else if(int_reg[0]==1'b1)
    begin
      y_out =2'b00;
      valid_out=1;
    end
    else
     begin
      y_out =2'b00;
      valid_out=0;
      end
      /*
     case(int_reg)
      4'b0000:begin
                  y_out=3'b000;
                  valid_out=0;
              end
              
      4'b0001:begin
                  y_out=3'b001;
                  valid_out=1;
              end
      4'b001x:begin
                   y_out=3'b010;
                   valid_out=1;
              end
      4'b01xx:begin
                    y_out=3'b011;
                    valid_out=1;
              end
       4'b1xxx:begin
                    y_out=3'b100;
                    valid_out=1;
              end*/
      /*default:begin
         
              y_out=3'b000;
              valid_out=0;*/
             
     
      end                                
endmodule
