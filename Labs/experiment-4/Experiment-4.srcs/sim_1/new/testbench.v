`timescale 1ns / 1ps

//module testbench_part11(); // part 1
//    parameter numin = 2;
//    integer i;
//    reg[numin - 1:0] count;
    
//    reg a, b, carryIN;
//    wire carry, sum;
    
//    full_adder UUT(.A(a), .B(b), .CarryIN(carryIN), .CarryOUT(carry), .Sum(sum));
////    half_adder UUT(.A(a), .B(b), .Carry(carry), .Sum(sum));

    
//    initial begin
//        count = 0;
//        for ( i = 0; i < 2**numin; i = i + 1 ) begin
//            assign a = count[1];
//            assign b = count[0];
//            assign carryIN = 0;
            
//            count = count + 1;
//            #10;
//        end
//    end
    
//endmodule

//module testbench_part2(); // part 2
//    parameter numin = 8;
    
//    reg[numin - 1:0] a, b;
//    reg carryIN;
//    wire[numin - 1:0] sum;
//    wire carryOUT;
    
//    eight_bit_ripple_adder UUT(.A(a), .B(b), .CarryIN(carryIN), .CarryOUT(carryOUT), .Sum(sum));
    
//    initial begin
//        assign a = 8'b11001011;
//        assign b = 8'b10101010;
//        assign carryIN = 0;
//        #10;
//        assign carryIN = 1;
//        #10
//        assign a = 0;
//        assign b = 0;
//        assign carryIN = 0;
//    end
    
//endmodule

//module testbench_part3();
//  reg [7:0] Num1, Num2;
//  reg CarryIN;

//  wire[7:0] Sum;
//  wire CarryOUT;

//  eight_bit_carry_look_adder instance_1(.Num1(Num1), .Num2(Num2), .CarryIN(CarryIN), .CarryOUT(CarryOUT), .Sum(Sum));
////  eight_bit_ripple_adder UUT(.A(Num1), .B(Num2), .CarryIN(CarryIN), .CarryOUT(CarryOUT), .Sum(Sum));

//  initial begin
//    $monitor("Num1 = %d, Num2 = %d, CarryIN = %b | CarryOUT = %b, Sum = %d", Num1, Num2, CarryIN, CarryOUT, Sum);

//    Num1 = 8'b11001011; 
//    Num2 = 8'b10101010; 
//    CarryIN = 0;
//    #10;

//  end
//endmodule

module testbench_part4();
  reg[31:0] num1, num2;
  reg mode;
  
  wire [31:0] sum;
  wire carryout;
  
  // CarryIN is the mode (0 for addition; 1 for subtractions)
  thirtytwo_bit_multi_adder UUT(.Num1(num1), .Num2(num2), .Mode(mode), .CarryOUT(carryout), .Sum(sum));

  initial begin
    $monitor("Mode = %b | Number 1 = %d, Number2 = %d | Sum = %d, CarryOUT = %b", mode, num1, num2, sum, carryout);

    mode = 0;
    num1 = 32'd50;
    num2 = 32'd25;
    #10;

    mode = 1;
    num1 = 32'd50;
    num2 = 32'd25;
    #10;

  end

endmodule
