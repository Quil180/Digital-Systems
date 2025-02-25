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


//module part_1(
//        input A, B, C,
//        output F
//    );
    
//    wire w1, w2;
    
//    assign w1 = A | B;
//    assign w2 = B & C;
    
//    assign F = w1 | w2;
//endmodule

module part_3_simplified(
        input A, B, C, D,
        output F
    );
        
    assign F = C & (~B & ~D | ~A & B);
    
endmodule

//module part_4_sop(
//        input A, B, C, D,
//        output OUT
//    );
    
//    assign OUT = (~A & C &~D) | (~A & B & D) | (A & B & ~C) | (~B & C & ~D);

//endmodule

//module part_4_pos(
//        input A, B, C, D,
//        output OUT
//    );
    
//    assign OUT = (B | C | D) & (A | C | D) & (~D | A | B) & ( ~C | ~A | ~B) & (~D | ~A | B);

//endmodule

//module part_5_sop(
//        input A, B, C, D,
//        output F
//    );
    
//    assign F = A & ~D | ~A & C & D | A & ~ C;
    
//endmodule

//module part_5_pos(
//        input A, B, C, D,
//        output F
//    );
    
//    assign F = (A | C) & (~A | ~C | ~D) & (A | ~C | D);
    
//endmodule