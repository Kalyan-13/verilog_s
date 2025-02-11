`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 21:03:54
// Design Name: 
// Module Name: tri_state_data_bus
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


module tri_state_data_bus(
                          input [7:0] data_bus_in,
                          input en_in,
                          output reg [7:0] data_bus_out
    
                          );
                          
                          
                         always@*
                         begin
                         if(en_in)
                            data_bus_out=data_bus_in;
                         else
                             data_bus_out=8'bzzzz_zzzz;
                    end
                    specify
                specparam trecovery=2;
                $recovery(posedge en_in,data_bus_in,trecovery);
                endspecify
                    
endmodule
