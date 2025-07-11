`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2025 16:56:02
// Design Name: 
// Module Name: jk_ff_tb
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


//TestBench:
module jk_ff_tb;
reg clk,j,k;
wire q;
jk_ff uut(j,k,clk,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial
begin
j=0; k=0; #10
j=0; k=1; #10
j=1; k=0; #10
j=1; k=1; #10
j=0; k=0; #10
$finish;
end
endmodule
  