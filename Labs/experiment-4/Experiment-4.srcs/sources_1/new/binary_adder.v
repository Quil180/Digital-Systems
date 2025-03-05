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


module half_adder( // Part 1
    input A, B,
    output Sum, Carry
  );
  
  assign Sum = A ^ B;
  assign Carry = A & B;
  
endmodule

module full_adder( // Part 1
    input A, B, CarryIN,
    output Sum, CarryOUT
  );
  
  wire carry1, carry2, sum1;
  
  half_adder a(.A(A), .B(B), .Carry(carry1), .Sum(sum1));
  half_adder b(.A(CarryIN), .B(sum1), .Sum(Sum), .Carry(carry2));
  
  assign CarryOUT = carry1 | carry2; 
  
endmodule

//module eight_bit_ripple_adder( // Part 2
//    input[7:0] A, B, 
//    input CarryIN,
//    output[7:0] Sum, 
//    output CarryOUT
//  );
  
//  wire[8:0] carry;
  
//  assign carry[0] = CarryIN;
  
//  genvar i;
  
//  // note that this adds in sequential order, and therefore has a delay to the addition in the real world.
//  generate
//    for ( i = 0; i < 8; i = i + 1 ) begin
//      full_adder a(.A(A[i]), .B(B[i]), .CarryIN(carry[i]), .CarryOUT(carry[i + 1]), .Sum(Sum[i]));
//    end
//  endgenerate
  
//  assign CarryOUT = carry[8];
  
//endmodule

//module eight_bit_carry_look_adder( // part 3
//    input[7:0] Num1, Num2,
//    input CarryIN,
//    output[7:0] Sum,
//    output CarryOUT
//  );
//  // why use carry look ahead adders?
//  // this gets rid of the propogation delay and therefore is "faster", of which adds in parallel instead of sequentially.
//  // this, however, uses a lot more gates to be used and is therefore more area intensive.
//  wire[7:0] carryGenerate, carryPropagate, carryTemp;
//  genvar i; // temporary variable i
  
//  // logic for carry look adders
//  assign carryGenerate = Num1 & Num2;
//  assign carryPropagate = Num1 ^ Num2;

//  assign carryTemp[0] = CarryIN;
//  generate
//    for ( i = 1; i < 8; i = i + 1) begin
//      assign carryTemp[i] = carryGenerate[i - 1] | (carryPropagate[i - 1] & carryTemp[i - 1]);
//    end
//  endgenerate

//  // addition logic proper
//  generate
//    full_adder a(.A(Num1[0]), .B(Num2[0]), .CarryIN(CarryIN), .CarryOUT(), .Sum(Sum[0]));
//    for (i = 1; i < 8; i = i + 1) begin
//      full_adder a(.A(Num1[i]), .B(Num2[i]), .CarryIN(carryTemp[i]), .CarryOUT(), .Sum(Sum[i]));
//    end
//  endgenerate
  
//  assign CarryOUT = carryTemp[7];

//endmodule

module thirtytwo_bit_multi_adder( // part 4
    input[31:0] Num1, Num2,
    input Mode, // carryIN is the mode for reference
    output[31:0] Sum,
    output CarryOUT
  );
  
  wire[31:0] funny_xor, carry;

  assign funny_xor = Num2 ^ {32{Mode}}; // xo's Num2 with the mode for 2's complement subtraction.
  
  genvar i;

  generate
    full_adder FA(.A(Num1[0]), .B(funny_xor[0]), .CarryIN(Mode), .Sum(Sum[0]), .CarryOUT(carry[0]));
    for (i = 1; i < 32; i = i + 1) begin
      full_adder FA(.A(Num1[i]), .B(funny_xor[i]), .CarryIN(carry[i - 1]), .Sum(Sum[i]), .CarryOUT(carry[i]));
    end
  endgenerate
  
  assign CarryOUT = carry[31];

endmodule

module thirtytwo_bit_multi_rca_adder( // part 4 A
    input[31:0] Num1, Num2,
    input Mode, // carryIN is the mode for reference
    output[31:0] Sum,
    output CarryOUT
  );
  
  wire[31:0] funny_xor, carry;

  assign funny_xor = Num2 ^ {32{Mode}}; // xo's Num2 with the mode for 2's complement subtraction.
  
  genvar i;

  generate
    full_adder FA(.A(Num1[0]), .B(funny_xor[0]), .CarryIN(Mode), .Sum(Sum[0]), .CarryOUT(carry[0]));
    for (i = 1; i < 32; i = i + 1) begin
      full_adder FA(.A(Num1[i]), .B(funny_xor[i]), .CarryIN(carry[i - 1]), .Sum(Sum[i]), .CarryOUT(carry[i]));
    end
  endgenerate
  
  assign CarryOUT = carry[31];

endmodule