`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2023 09:31:53 AM
// Design Name: 
// Module Name: demux_1_4
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

module demux_1_4(I,S,Y);

        input I;
        input [1:0] S;
        output reg [3:0] Y;
        
            always@(I or S)
            begin 
                case(S)
                    2'b00: begin
                           Y[0] = I;
                           Y[1] = 0;
                           Y[2] = 0;
                           Y[3] = 0;
                           end
                   
                    2'b01: begin
                           Y[0] = 0;
                           Y[1] = I;
                           Y[2] = 0;
                           Y[3] = 0;
                           end
                   
                   2'b10: begin
                           Y[0] = 0;
                           Y[1] = 0;
                           Y[2] = I;
                           Y[3] = 0;
                           end
                   
                   2'b11: begin
                           Y[0] = 0;
                           Y[1] = 0;
                           Y[2] = 0;
                           Y[3] = I;
                           end 
                           
               endcase
          end                            
endmodule
