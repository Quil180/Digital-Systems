`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 02:45:24 PM
// Design Name: 
// Module Name: binary_adder
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


module half_adder(
        input A, B,
        output Sum, Carry
    );
    
    assign Sum = A ^ B;
    assign Carry = A & B;
    
endmodule

module full_adder(
        input A, B, CarryIN,
        output Sum, CarryOUT
    );
    
    wire carry1, carry2, sum1;
    
    half_adder a(.A(A), .B(B), .Carry(carry1), .Sum(sum1));
    half_adder b(.A(CarryIN), .B(sum1), .Sum(Sum), .Carry(carry2));
    
    assign CarryOUT = carry1 | carry2; 
    
endmodule

//module eight_bit_ripple_adder(
//        input[7:0] A, B, 
//        input CarryIN,
//        output[7:0] Sum, 
//        output CarryOUT
//    );
    
//    wire[8:0] carry;
    
//    assign carry[0] = CarryIN;
    
//    genvar i;
    
//    generate
//        for ( i = 0; i < 8; i = i + 1 ) begin
//            full_adder a(.A(A[i]), .B(B[i]), .CarryIN(carry[i]), .CarryOUT(carry[i + 1]), .Sum(Sum[i]));
//        end
//    endgenerate
    
//    assign CarryOUT = carry[8];
    
//endmodule