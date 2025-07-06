`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:17:05 07/06/2025 
// Design Name: 
// Module Name:    hadd_s 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

//halfadder-structural model
/*module hadd(a, b, s, c);
    input a,b;
    output s,c;
    xor(s,a,b);
	 and(c,a,b);
endmodule


//halfadder- dataflow model
module hadd(a,b,s,c);
	input a,b;
	output s,c;
	assign s=a^b;
	assign c=a&b;
endmodule*/


//halfadder- behavioral model
module hadd(a,b,s,c);
	input a,b;
	output reg s,c;
   always@(*)
	begin
	s=a^b;
	c=a&b;
   end
endmodule
