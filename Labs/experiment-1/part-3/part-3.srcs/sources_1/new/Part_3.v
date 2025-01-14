`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 10:47:28 AM
// Design Name: 
// Module Name: Part_3
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


module Part_3(
    input A, B,
    output S, W, X, Y, Z
    );
    
    assign S = ~A;
    assign W = A & B;
    assign X = A | B;
    assign Y = ~(A & B);
    assign Z = A ^ B;
    
endmodule
