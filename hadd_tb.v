`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:43:03 07/06/2025
// Design Name:   hadd_s
// Module Name:   hadd.v
// Project Name:  hadd_s
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hadd_s
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hadd_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	hadd_s uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		#2 a=0;b=1;
		#2 a=1;b=0;
		#2 a=1;b=1;
		
		$monitor("time=%g,s=%b,c=%b,a=%b,b=%b",$time, s,c,a,b);
		#10 $finish;
		end
      endmodule

