`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 14:23:11
// Design Name: 
// Module Name: logic_gates_tb
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


module logic_gates_tb;
reg a,b;
wire and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out;
logic_gates uut(
 .a(a),
 .b(b),
 .and_out(and_out),
 .or_out(or_out),
 .notb_out(notb_out),
 .nand_out(nand_out),
 .nor_out(nor_out),
 .xor_out(xor_out),
 .xnor_out(xnor_out)
);
initial
begin
 a=0; b=0; #10
 a=0; b=1; #10
 a=1; b=0; #10
 a=1; b=1; #10
 a=0; b=0; #10
 $finish;
end
endmodule
