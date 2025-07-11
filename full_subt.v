`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2025 16:38:17
// Design Name: 
// Module Name: full_subt
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

//dataflow
module full_subt(
input a,b,c ,output d, bo );
assign d=a^b^c;
assign w1=(~a)&b;
assign w2=(~a)&c;
assign w3=b&c;
assign bo= w1|w2|w3;
endmodule
   

//behavioral
//module full_subt (
//  input a, b, c,
//  output reg d, bo
//);
//  always @(*) begin
//    d = a ^ b ^ c;
//    bo = (~a & b) | (~a & c) | (b & c);
//  end
//endmodule

//structural(not correct)
//module full_sub_struct (
//  input a, b, c,
//  output d, bo
//);
//  wire not_a, w1, w2, w3;

//  assign not_a = ~a;
//  assign d = a ^ b ^ c;
//  assign w1 = not_a & b;
//  assign w2 = not_a & c;
//  assign w3 = b & c;
//  assign bo = w1 | w2 | w3;
//endmodule