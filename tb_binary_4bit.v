`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2024 20:30:45
// Design Name: 
// Module Name: tb_binary_4bit
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


module tb_binary_4bit();
reg [1:0] opcode;
reg [3:0] a_in,b_in;
wire[3:0] y_out;

 binary_4bit DUT(
                 .opcode(opcode),
                 .a_in(a_in),.b_in(b_in),
                 .y_out(y_out)
                );
          always #10 a_in=a_in+1;
          always #20 b_in=b_in+1;
          always #100 opcode=opcode+1;
           
       initial
            begin
              a_in=4'b0000;b_in=4'b0000;
              opcode=2'b00;
              #500 $finish;
            end
endmodule
