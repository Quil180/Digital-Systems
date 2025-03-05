`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 04:29:45 PM
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(
    input A, B, S_i, // S_i is the index selector
    output reg OUT
  );
  
  always@(*) begin
    case(S_i)
      1'b0: OUT = A;
      1'b1: OUT = B;
    endcase
  end
  
endmodule
