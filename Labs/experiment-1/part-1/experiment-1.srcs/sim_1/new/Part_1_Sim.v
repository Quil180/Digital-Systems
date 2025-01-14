`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 09:48:43 AM
// Design Name: 
// Module Name: Part_1_Sim
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


module Part_1_Sim();
    reg Inp1, Inp2;
    wire Out;
    
    Part_1 UUT(.Inp_1(Inp1), .Inp_2(Inp2), .Outp(Out));
    
    // actual test bench proper
    initial
    begin
        Inp1 = 0;
        Inp2 = 0;
        #10
        Inp1 = 1;
        Inp2 = 0;
        #10
        Inp1 = 0;
        Inp2 = 1;
        #10
        Inp1 = 1;
        Inp2 = 1;
    end
endmodule
