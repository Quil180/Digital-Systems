`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 10:50:58 AM
// Design Name: 
// Module Name: Part_3_Sim
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


module Part_3_Sim();
    reg A, B;
    wire S, W, X, Y, Z;
    
    Part_3 UUT(.A(A), .B(B), .S(S), .W(W), .X(X), .Y(Y), .Z(Z));

    initial begin
        A = 0;
        B = 0;
        #10
        A = 1;
        B = 0;
        #10
        A = 0;
        B = 1;
        #10
        A = 1;
        B = 1;
        #10
        A = 0;
        B = 0;
    end

endmodule
