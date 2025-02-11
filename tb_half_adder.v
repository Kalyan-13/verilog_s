`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2024 19:58:59
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder( );
    reg a_in;
    reg b_in;
    wire sum_out;
    wire car_out;
    
   half_adder DUT (
            .a_in(a_in),
           .b_in(b_in),
          .sum_out(sum_out),
          .car_out(car_out)
            
    );
    
    initial 
    begin
    a_in=0;
    b_in=0;
    #10 a_in=0;
        b_in=0;
    #10 a_in=0;
        b_in=1;
    #10 a_in=1;
        b_in=0;
    #10 a_in=1;
        b_in=1;
    
    end
    
  endmodule
