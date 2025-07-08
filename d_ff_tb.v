`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2025 20:52:15
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb;
reg i_d, i_clk;
wire o_q;
d_ff uut(
    .i_d(i_d),
    .i_clk(i_clk),
    .o_q(o_q)
    );
always #5 i_clk=~i_clk;
initial begin 
    i_clk=0;
    i_d=0;
    #10 i_d=1;
    #10 i_d=0;
    #10 i_d=1;
    #10 i_d=1;
    #10 i_d=0;
    #10 $finish;
end
endmodule
