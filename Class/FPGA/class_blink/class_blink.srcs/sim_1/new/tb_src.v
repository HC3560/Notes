`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/05 15:51:04
// Design Name: 
// Module Name: tb_src
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


module tb_src(
	);
    reg clk;
    wire out;
    src test0(
    .clk(clk),
    .out(out)
    );
    always
	begin
        clk=0;
        #10;
        clk=1;
        #10;
    end
endmodule