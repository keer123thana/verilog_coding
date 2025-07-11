`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 14:21:26
// Design Name: 
// Module Name: logic_gates
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


//gate level(structural)
module logic_gates (a,b,and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out);
input a,b;
output and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out;
and a1 (and_out,a,b);
or o1(or_out,a,b);
nand n1(nand_out,a,b);
nor n2(nor_out,a,b);
not n3(notb_out,b);
xor x1(xor_out,a,b);
xnor x2 (xnor_out,a,b);
endmodule


//dataflow
//module data_flow(a,b,and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out);
//input a,b;
//output and_out,or_out,nand_out,nor_out,notb_out,xor_out,xnor_out;
//assign and_out=a&b; 
//assign or_out=a|b;
//assign nand_out=~(a&b);
//assign nor_out=~(a|b);
//assign notb_out=~b;
//assign xor_out=a^b;
//assign xnor_out=~(a^b);
//endmodule

