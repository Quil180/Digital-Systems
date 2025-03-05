`timescale 1ns / 1ps
//

module testbench_part1();
  reg[1:0] inputs;
  reg S_i;
  
  wire output_mux;
  wire[3:0] output_decode;
  
  mux2_1 MUX(.A(inputs[1]), .B(inputs[0]), .S_i(S_i), .OUT(output_mux));
  decoder2_4 DECODE(.A(inputs[1]), .B(inputs[0]), .OUT(output_decode));
  
  integer i;
  
  initial begin
    for (i = 0; i < 2**2; i = i + 1) begin
      if (i >= 2) begin
        assign S_i = 1;
      end else begin
        assign S_i = 0;
      end
      
      assign inputs = i;
      #10;
    end
  end
  
endmodule
