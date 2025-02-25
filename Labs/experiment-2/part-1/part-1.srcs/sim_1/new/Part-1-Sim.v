`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2025 11:11:47 PM
// Design Name: 
// Module Name: Part-1-Sim
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


//module and_tb();
//    parameter NUMIN = 2; // number of input bits
//    reg[NUMIN - 1:0] count; // an bit array of size NUMIN - 1
//    integer i; // counter for the for loop
    
//    reg a, b; // inputs
//    wire out; // output
    
//    AND UUT(.A(a), .B(b), .Out(out)); // instantiating the AND operation
    
//    initial begin
//        count = 0; // note that count starts with 00 (then 01 10 11 or 1 2 3)
//        for (i = 0; i < 2**NUMIN; i = i + 1) begin
//            a = count[1];
//            b = count[0];
//            count = count + 1;
//            #10; // delays the simulation by 10 nanoseconds
//        end
//    end
    
//endmodule

//module bool_tb();
//    parameter NUMIN = 4;
//    reg[NUMIN - 1:0] count;
//    integer i;
    
//    reg a, b, c, d;
//    wire out;
    
//    BOOL_NETWORK UUT(.A(a), .B(b), .C(c), .D(d), .OUT(out));
    
//    initial begin
//        count = 0; // setting count to 000
//        for (i = 0; i < 2**NUMIN; i = i + 1)begin
//            a = count[3];
//            b = count[2];
//            c = count[1];
//            d = count[0];
//            count = count + 1;
//            #10;
//        end
//    end
    
//endmodule

//module complex_bool_tb();
//    parameter NUMIN = 5;
//    reg[NUMIN - 1:0] count;
//    integer i;
    
//    reg a, b, c, d, e;
//    wire out; // F
    
//    COMPLEX_BOOL_NETWORK UUT(.A(a), .B(b), .C(c), .D(d), .E(e), .OUT(out));
    
//    initial begin
//        count = 0;
//        for (i = 0; i < 2**NUMIN; i = i + 1) begin
//            a = count[4];
//            b = count[3];
//            c = count[2];
//            d = count[1];
//            e = count[0];
            
//            count = count + 1;
//            #10;
//        end
//    end
    
//endmodule

module circuit_debugging_tb();
    parameter NUMIN = 3;
    reg[NUMIN - 1:0] count;
    integer i;
    
    reg a, b , c; // inputs are registers
    wire x, y; // wires are outputs
    
    CIRCUIT_DEBUGGING UUT(.A(a), .B(b), .C(c), .X(x), .Y(y));
    
    initial begin
        count = 0;
        for (i = 0; i < 2**NUMIN; i = i + 1) begin
            a = count[2];
            b = count[1];
            c = count[0];
            
            count = count + 1;
            #10;
        end
    end
    
endmodule