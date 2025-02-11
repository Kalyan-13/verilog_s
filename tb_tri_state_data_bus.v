`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2024 21:17:33
// Design Name: 
// Module Name: tb_tri_state_data_bus
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


module tb_tri_state_data_bus();
reg [7:0] data_bus_in;
reg en_in;
wire [7:0]data_bus_out;

tri_state_data_bus DUT(data_bus_in,en_in,data_bus_out);


always #10 en_in=~en_in;
always #20 data_bus_in=data_bus_in+1;
initial
begin  
data_bus_in=0;
en_in=1;
#300 $finish();

end



endmodule
