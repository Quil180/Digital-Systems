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


//module AND( // part 1
//    input A, B,
//    output Out
//    );
    
//    assign Out = A & B;
    
//endmodule

//module BOOL_NETWORK( // Simple Boolean Network aka part 2
//        input A, B, C, D,
//        output OUT
//    );
//    wire andAB, orCD;

//    assign andAB = A & B;
//    assign orCD = (C | D);

//    assign OUT = ~(andAB | (~orCD));
    
//endmodule

//module COMPLEX_BOOL_NETWORK( // part 3
//        input A, B, C, D, E,
//        output OUT // F
//    );
//    wire w1, w2, w3, w4;
    
//    assign w1 = ~(A & B);
//    assign w2 = ~(D | E);
//    assign w3 = w1 | C;
//    assign w4 = w2 & (~C);
    
//    assign OUT = w3 ^ w4;
    
//endmodule

module CIRCUIT_DEBUGGING( // part 4
        input A, B, C,
        output X, Y
    );
    
    wire w1, w2, w3;
    
    // following is true so don't edit them.
    assign w1 = A ^ B;
    assign w2 = C & w1;
    assign w3 = A & B;
    
    // following can be false so you can edit them
    
    //  before
    //  assign X = C | w1;  // simplified = C | (A ^ B)
    //  assign Y = w2 & w3; // simplified = (C & (A ^ B)) & (A & B)
    
    assign X = C ^ w1;      // simplified = C ^ (A ^ B)
    assign Y = w2 | w3;     // simplified = (C & (A ^ B)) | (A & B)
    
endmodule