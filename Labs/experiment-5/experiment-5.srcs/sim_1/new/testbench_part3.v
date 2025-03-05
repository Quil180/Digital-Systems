`timescale 1ns / 1ps
//

module testbench_part3();
  reg[2:0] inputs;
  
  wire[7:0] output_decoder;
  
  decoder3_8 DECODE(.A(inputs[2]), .B(inputs[1]), .C(inputs[0]), .OUT(output_decoder));
  
  integer i;
  
  initial begin
    for (i = 0; i < 2**3; i = i + 1) begin
      assign inputs = i;
      #10;
    end
  end
  
endmodule
