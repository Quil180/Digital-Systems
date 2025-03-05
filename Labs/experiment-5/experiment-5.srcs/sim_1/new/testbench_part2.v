`timescale 1ns / 1ps
//

module testbench_part2();
  reg[2:0] inputs;
  reg[2:0] S_i;
  
  wire output_mux;
  
  mux8_1 MUX(.A(inputs[2]), .B(inputs[1]), .C(inputs[0]), .S_i(S_i), .OUT(output_mux));
  
  integer i, j;
  
  initial begin
    for (i = 0; i < 2**3; i = i + 1) begin
      assign inputs = i;
      for (j = 0; j < 2**3; j = j + 1) begin
        assign S_i = j;
        #10;
      end
      #10;
    end
  end
  
endmodule