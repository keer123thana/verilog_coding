`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 15:01:32
// Design Name: 
// Module Name: and_4input
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


module and_4input(
  input a, b, c, d,
  output y
);
  wire ab, cd;
  and (ab, a, b);      // ab = a AND b
  and (cd, c, d);      // cd = c AND d
  and (y, ab, cd);     // y = ab AND cd => final 4-input AND
endmodule


//module and_4input (
//  input a, b, c, d,
//  output y
//);

//  assign y = a & b & c & d;

//endmodule


//module and_4input (
//  input a, b, c, d,
//  output reg y
//);

//  always @(*) begin
//    y = a & b & c & d;
//  end

//endmodule
