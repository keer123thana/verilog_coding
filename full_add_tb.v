`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2025 15:01:16
// Design Name: 
// Module Name: full_add_tb
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


module full_add_tb;
reg a,b,c; wire sum,carry;
full_add uut(a,b,c ,sum,carry);
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