`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2024 21:52:00
// Design Name: 
// Module Name: jami
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


module jami(

               input a_in,                        
              output y_out
               );
                        
             buf u1(y_out,a_in);
            
            specify
             specparam tperiod=6;
              $period(posedge a_in,tperiod);
           endspecify
                    
                    
endmodule


 