`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2017 03:38:48 PM
// Design Name: 
// Module Name: tb_top
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


module tb_top_mips(

    );
    
	reg clk;
	reg reset;

	reg flag = 0;

    top_mips#(
    	.LEN(32)
 		)
        u_top(
        	.clk(clk),
        	.reset(reset)
        );

	initial
	begin
		clk = 0;
		reset = 1;
		#10
		reset = 0;
	end

	always 
	begin
		#5 clk = ~clk;
	end
    
endmodule
