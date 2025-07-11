`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 15:06:33
// Design Name: 
// Module Name: and_4input_tb
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


//module and_4input_tb;
//  reg a, b, c, d;
//  wire y;

//  // Change the module name here depending on which one you're testing
//  and_4input uut (
//  .a(a),
//   .b(b), 
//   .c(c), 
//   .d(d), 
//   .y(y));

//  initial begin
//    // Test all input combinations: 2^4 = 16
//    for (integer i = 0; i < 16; i = i + 1) begin
//      {a, b, c, d} = i; // Assign binary value of i
//      #10 $display("%b %b %b %b | %b", a, b, c, d, y);
//    end
//  end
//endmodule
   
   
//   `timescale 1ns/1ps

module and_4input_tb;

reg a, b, c, d;
wire y;

// DUT instance
and_4input uut (
    .a(a), .b(b), .c(c), .d(d), .y(y)
);

integer i;

initial begin
    $monitor("Time=%0t | a=%b b=%b c=%b d=%b => y=%b", $time, a, b, c, d, y);

    for (i = 0; i < 16; i = i + 1) begin
        {a, b, c, d} = i[3:0];  // Assign bits of i to a, b, c, d
        #10;
    end
$finish;
end
endmodule