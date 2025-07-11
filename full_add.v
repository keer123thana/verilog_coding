`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2025 14:54:31
// Design Name: 
// Module Name: full_add
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
module full_add(
input a,b,c,output sum, carry
);
assign sum= a^b^c;
assign w1=a&b;
assign w2=b&c;
assign w3=a&c;
assign carry=w1|w2|w3;
endmodule
  
  
//behavioral
//module full_add(
//input a,b,c,output sum, carry
//);
//always@(a or b or c)
//begin{carry,sum}=a+b+c;
//end
//endmodule

//structural
//module half_adder(
//input a ,b,
//output sum, carry
//);
//    xor(sum,a,b);
//    and(carry,a,b);
//endmodule


//module full_add(
//input a ,b,c,
//output sum, carry
//);
//wire S1, C1, C2;
//half_adder HA1(
//.A(A),.B(B),.sum(S1),.carry(C1)
//);
//half_adder HA2(
//.A(S1),.B(c),.sum(sum),.carry(C2)
//);
//or(carry,C1,C2);
//endmodule