`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2025 14:58:42
// Design Name: 
// Module Name: half_subt
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
//module half_subt(
//input i_a,i_b,
//output o_diff,o_borrow
//    );
//    assign o_diff=i_a^i_b;
//    assign o_borrow = ~i_a&i_b;
//endmodule

//behavioral
//module half_subt(
//input i_a,i_b,
//output reg o_diff, o_borrow
//);
//always @(*)begin
//    o_diff=i_a^i_b;
//    o_borrow= ~i_a&i_b;
//end
//endmodule

//structural
module half_subt(
input i_a,i_b,
output o_diff, o_borrow
);
wire not_a;
xor u1(o_diff,i_a,i_b);
not u2(not_a, i_a);
and u3(o_borrow,not_a,i_b);
endmodule