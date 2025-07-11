`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2025 16:42:53
// Design Name: 
// Module Name: full_subt_tb
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


module full_subt_tb;
reg a,b,c ; wire d, bo;
full_subt uut(a,b,c ,d,bo);
initial
begin
    a=0;b=0;c=0; #10
    a=0;b=0;c=1; #10
    a=0;b=1;c=0; #10
    a=0;b=1;c=1; #10
    a=1;b=0;c=0; #10
    a=1;b=0;c=1; #10
    a=1;b=1;c=0; #10
    a=1;b=1;c=1; #10
$finish;
end
endmodule
   
