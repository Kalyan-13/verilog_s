`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2024 20:55:00
// Design Name: 
// Module Name: no_of_1s
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


module no_of_1s(
                input [15:0] d_in,clk,reset_n,
                output reg [4:0] d_out
    );
    integer i;
    reg [4:0] count;
    always@(posedge clk,negedge reset_n)
    begin
      if(~reset_n)
        d_out<='b0;
      else
       count=5'b0;
        for(i=0;i<16;i=i+1)
        begin
        if (d_in[i]==1)
        count=count+1;
       
     end

   d_out <= count;
end
endmodule
