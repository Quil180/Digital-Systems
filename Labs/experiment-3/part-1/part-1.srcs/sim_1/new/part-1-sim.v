`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2025 12:39:56 AM
// Design Name: 
// Module Name: part-1-sim
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


module part_1_sim();
    parameter NUMIN = 3;
    reg[NUMIN - 1:0] count;
    integer i;
    
    reg a, b, c;
    wire f;
    
    part_1 UUT(.A(a), .B(b), .C(c), .F(f));
    
    initial begin
        count = 0;
        for (i = 0; i < 2**NUMIN; i = i + 1) begin
            assign a = count[2];
            assign b = count[1];
            assign c = count[0];
            
            count = count + 1;
            #10;
        end
    end
    
endmodule
