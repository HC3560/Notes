`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/09/20 16:41:41
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
    input                   sys_clk,                            // system clock
	output                  hdmi_vs,hdmi_hs,hdmi_de,hdmi_clk,   // hdmi control
    output[7:0]             hdmi_r,hdmi_g,hdmi_b,               // hdmi data
	output                  hdmi_rst_n,                         // encoder 9134
    inout                   hdmi_scl,hdmi_sda                   // i2c configration
    );
        
    wire                   video_clk;
    wire                   cfg_clk;
    wire                   pll_locked;
    sys_clk sys_clk_u0(
        .clk_in1            (sys_clk),                      // Clock in ports
        .clk_out1           (cfg_clk),                      // Clock out ports
        .clk_out2           (video_clk),
        .locked             (pll_locked)                    // Status and control signals
        );

    src_gen hdmi_image_gen(
        .clk                     (video_clk),
        .vs                      (hdmi_vs),
        .hs                      (hdmi_hs),
        .de                      (hdmi_de),
        .rgb_r                   (hdmi_r),
        .rgb_g                   (hdmi_g),
        .rgb_b                   (hdmi_b)
        );
    assign hdmi_clk = video_clk;
    assign hdmi_rst_n = pll_locked;
    
    wire[9:0]                       lut_index;
    wire[31:0]                      lut_data;
    i2c_config i2c_config_m0(
        .rst                        (~pll_locked),
        .clk                        (cfg_clk),
        .clk_div_cnt                (16'd499),
        .i2c_addr_2byte             (1'b0),
        .lut_index                  (lut_index),
        .lut_dev_addr               (lut_data[31:24]),
        .lut_reg_addr               (lut_data[23:8]),
        .lut_reg_data               (lut_data[7:0]),
        .error                      (             ),
        .done                       (             ),
        .i2c_scl                    (hdmi_scl),
        .i2c_sda                    (hdmi_sda)
    );
        
    lut_sil9134 lut_sil9134_m0(
        .lut_index                  (lut_index),
        .lut_data                   (lut_data)
    );

endmodule
