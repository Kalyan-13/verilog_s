`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 07:50:31
// Design Name: 
// Module Name: sum_1
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


module sum_1#(parameter DATA_WIDTH=4)(
       input [DATA_WIDTH-1:0] a_in,
       input [DATA_WIDTH-1:0] b_in,
       output [DATA_WIDTH-1:0] Not_out,
       output [DATA_WIDTH-1:0] And_out,
       output [DATA_WIDTH-1:0] Nand_out,
       output [DATA_WIDTH-1:0] or_out,
       output [DATA_WIDTH-1:0] nor_out,
       output [DATA_WIDTH-1:0] Xor_out,
       output [DATA_WIDTH-1:0] Xnor_out
    );
    assign Not_out = ~(a_in);
    assign And_out = a_in & b_in;
    assign Nand_out = ~(a_in &b_in);
    assign or_out = a_in | b_in;
    assign nor_out = ~(a_in | b_in );
    assign Xor_out = a_in ^ b_in;
    assign Xnor_out = ~(a_in ^ b_in);
endmodule
