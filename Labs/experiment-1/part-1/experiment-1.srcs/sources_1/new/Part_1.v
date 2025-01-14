`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 09:33:57 AM
// Design Name: 
// Module Name: Part_1
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


module Part_1(
    input Inp_1, Inp_2,
    output Outp
    );
    
    assign Outp = Inp_1 & Inp_2;
    
endmodule
