`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2025 04:31:33 PM
// Design Name: 
// Module Name: decoder2_4
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


module decoder2_4( // part 1
    input A, B,
    output reg[3:0] OUT
  );
  
  always@(*) begin
    case({A, B})
      2'b00: OUT = 4'b0001; // F[0] = A'B'
      2'b01: OUT = 4'b0010; // F[1] = A'B
      2'b10: OUT = 4'b0100; // F[2] = AB'
      2'b11: OUT = 4'b1000; // F[3] = AB
    endcase
  end
  
endmodule
