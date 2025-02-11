`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2024 18:59:48
// Design Name: 
// Module Name: sdfg
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


module sdfg(
    input clock,
    input reset,
    input [15:0] A, B,  // ALU 16-bit Inputs                 
    input [3:0] ALU_Sel, // ALU Selection
    output reg [15:0] ALU_Out, // ALU 16-bit Output
    output reg CarryOut, // Carry Out Flag
    output reg Zero, // Zero Flag
    output reg Sign, // Sign Flag
    output reg Parity // Parity Flag
);

  reg [15:0] ALU_Result;
  wire [16:0] tmp_add, tmp_sub;

  assign tmp_add = {1'b0, A} + {1'b0, B};
  assign tmp_sub = {1'b0, A} - {1'b0, B};

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      ALU_Out <= 16'd0;
      CarryOut <= 1'd0;
      Zero <= 1'd0;
      Sign <= 1'd0;
      Parity <= 1'd0;
    end else begin
      ALU_Out <= ALU_Result;
      CarryOut <= (ALU_Sel == 4'b0000) ? tmp_add[16] : (ALU_Sel == 4'b0001) ? tmp_sub[16] : 1'b0;
      Zero <= (ALU_Result == 16'd0);
      Sign <= ALU_Result[15];
      Parity <= ~^ALU_Result; // Parity flag: 1 if even number of 1s, 0 if odd
    end
  end

  always @(*) begin
    case (ALU_Sel)
      4'b0000: // Addition
        ALU_Result = A + B;
      4'b0001: // Subtraction
        ALU_Result = A - B;
      4'b0010: // Multiplication
        ALU_Result = A * B;
      4'b0011: // Division
        ALU_Result = A / B;
      4'b0100: // Increment
        ALU_Result = A + 1;
      4'b0101: // Decrement
        ALU_Result = A - 1;
      default: 
        ALU_Result = 16'hACAC; // Default case
    endcase
  end

endmodule
