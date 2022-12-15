`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/05 11:27:24
// Design Name: 
// Module Name: src
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


module src(
    input clk,
    output reg out
    );
    reg[31:0] timer_cnt;
    initial
    begin
        out <= 0;
        timer_cnt <= 0;
    end
    
    always@(posedge clk)
    begin
        if(timer_cnt >= 49999999)
        begin
            out <= ~out;
            timer_cnt <= 0;
        end
        else
        begin
            out <= out;
            timer_cnt <= timer_cnt + 1;
        end
    end
endmodule
