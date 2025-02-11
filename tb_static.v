`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 19:49:10
// Design Name: 
// Module Name: tb_static
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


module tb_static();
 integer i=1;
    initial
        print();
    initial 
        print();
    initial 
        print();
    task automatic  print();
    begin
            i=i+1;
            $display("%h",i);
        end
    endtask

endmodule
