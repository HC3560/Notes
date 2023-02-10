`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/28 11:06:52
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


module tb_src();
    reg sys_clk;
    wire hdmi_vs,hdmi_hs,hdmi_de,hdmi_clk;
    wire [7:0] hdmi_r,hdmi_g,hdmi_b;
    wire hdmi_rst_n;
    wire hdmi_scl,hdmi_sda;
    
//    color_bar U1(
    src U1(
        .hdmi_clk(hdmi_clk),
//        .rst(rst),
        .hdmi_vs(hdmi_vs),
        .hdmi_hs(hdmi_hs),
        .hdmi_de(hdmi_de),
        .hdmi_r(hdmi_r),
        .hdmi_g(hdmi_g),
        .hdmi_b(hdmi_b),
        .hdmi_rst_n(hdmi_rst_n),
        .hdmi_scl(hdmi_scl),
        .hdmi_sda(hdmi_sda)
        );
    
    initial begin
//        rst = 1'b0;
        sys_clk = 1'b0;
    end
//    initial begin
//        #10 rst = 1'b1;
//    end
    always #5 sys_clk=~sys_clk; 
endmodule
