`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2025 12:39:27 AM
// Design Name: 
// Module Name: part-1
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


module part_1(
        input A, B, C,
        output F
    );
    
    wire w1, w2;
    
    assign w1 = A | B;
    assign w2 = B & C;
    
    assign F = w1 | w2;
endmodule
