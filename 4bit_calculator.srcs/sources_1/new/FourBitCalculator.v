`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2025 06:31:23
// Design Name: 
// Module Name: FourBitCalculator
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


module FourBitCalculator(
    input [9:0] sw,
    output [7:0] LED
    );
    
    wire [7:0] addition;
    wire [7:0] subtraction;
    wire [7:0] multiplication;
    wire [7:0] division;

    assign addition = sw[7:4] + sw[3:0]; //adding two 4-bit numbers
    assign subtraction = sw[7:4] - sw[3:0];//subtracting two 4-bit numbers
    assign multiplication = sw[7:4] * sw[3:0];//multiplicating two 4-bit numbers
    assign division = sw[7:4] / sw[3:0]; //dividing two 4-bit numbers
    
    assign LED =({8{~sw[9]}} & {8{~sw[8]}}&addition) |  ({8{~sw[9]}} & {8{sw[8]}}&subtraction) | ({8{sw[9]}} & {8{~sw[8]}}&multiplication) | ({8{sw[9]}} & {8{sw[8]}}&division);
    
    
    
endmodule
