`timescale 1ns / 1ps
//

module decoder3_8( // part 3
    input A, B, C,
    output[7:0] OUT
  );
  
  assign OUT = {
                A & B & ~C,
                ~A & ~B & C,
                ~A & B & ~C,
                A & B & C,
                A & ~B & C,
                ~A & ~B & ~C,
                A & ~B & ~C,
                ~A & B & C
               };
  
endmodule