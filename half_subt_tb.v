`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2025 16:05:51
// Design Name: 
// Module Name: half_subt_tb
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


module half_subt_tb;
reg i_a;
reg i_b;
wire o_diff;
wire o_borrow;
half_subt uut(
.i_a(i_a),
.i_b(i_b),
.o_diff(o_diff),
.o_borrow(o_borrow)
);
initial begin
    i_a=0; i_b=0; #10;
    i_a=0; i_b=1; #10;
    i_a=1; i_b=0; #10;
    i_a=1; i_b=1; #10;
   $finish;
end
endmodule


