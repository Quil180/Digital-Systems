`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2025 10:07:10 AM
// Design Name: 
// Module Name: Part_2
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


//module Part_2_A(
//    input In1, In2,
//    output Out
//    );
    
//    assign Out = ~(In1 & In2);
    
//endmodule

//module Part_2_B(
//    input In1, In2,
//    output Out
//    );
    
//    assign Out = (In1 | In2);
    
//endmodule

//module Part_2_C(
//    input In1, In2,
//    output Out
//    );
    
//    assign Out = (In1 ^ In2);
    
//endmodule

module Part_2_D(
    input In1,
    output Out
    );
    
    assign Out = ~(In1);
    
endmodule