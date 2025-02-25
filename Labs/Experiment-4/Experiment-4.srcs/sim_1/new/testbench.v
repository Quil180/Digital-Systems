`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2025 02:54:48 PM
// Design Name: 
// Module Name: testbench
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


module testbench_part11();
    parameter numin = 2;
    integer i;
    reg[numin - 1:0] count;
    
    reg a, b, carryIN;
    wire carry, sum;
    
    full_adder UUT(.A(a), .B(b), .CarryIN(carryIN), .CarryOUT(carry), .Sum(sum));
//    half_adder UUT(.A(a), .B(b), .Carry(carry), .Sum(sum));

    
    initial begin
        count = 0;
        for ( i = 0; i < 2**numin; i = i + 1 ) begin
            assign a = count[1];
            assign b = count[0];
            assign carryIN = 0;
            
            count = count + 1;
            #10;
        end
    end
    
endmodule

//module testbench_part2();
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