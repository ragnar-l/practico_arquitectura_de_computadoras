`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2017 04:15:54 PM
// Design Name: 
// Module Name: tb_super_top
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


module tb_super_top(

    );
    
	reg clk = 0;
	reg reset;
	
	super_top #()
		u_super_top(
			.CLK100MHZ(clk),
			.reset(reset)
			);
	
	initial	
	begin
	      reset = 1;
	      #50
	      reset = 0;
	end
	
	always #5 clk = ~clk;

endmodule
