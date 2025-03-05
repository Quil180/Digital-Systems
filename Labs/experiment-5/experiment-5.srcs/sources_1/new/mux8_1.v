`timescale 1ns / 1ps
//

module mux8_1( // part 2
    input A, B, C,
    input[2:0] S_i,
    output reg OUT
  );
  
  always@(*) begin
    case(S_i)
      3'b000: OUT = ~A & B & C;
      3'b001: OUT = A & ~B & ~C;
      3'b010: OUT = ~A & ~B & ~C;
      3'b011: OUT = A & ~B & C;
      3'b100: OUT = A & B & C;
      3'b101: OUT = ~A & B & ~C;
      3'b110: OUT = ~A & ~B & C;
      3'b111: OUT = A & B & ~C;
    endcase
  end
endmodule