`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 10:13:09 AM
// Design Name: 
// Module Name: Part_2_Sim
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


module Part_2_Sim();
//    reg In1, In2;
    reg In1;
    wire Out;
    
    Part_2_D UUT(.In1(In1), .Out(Out));
    
    initial begin
        In1 = 0;
//        In2 = 0;
        #10
        In1 = 1;
//        In2 = 0;
        #10
        In1 = 0;
//        In2 = 1;
        #10
        In1 = 1;
//        In2 = 1;
    end
endmodule
