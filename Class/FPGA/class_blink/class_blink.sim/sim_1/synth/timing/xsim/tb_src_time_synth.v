// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Sep 20 14:42:52 2022
// Host        : HC-R7000 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/Projects/class/class.sim/sim_1/synth/timing/xsim/tb_src_time_synth.v
// Design      : src
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module src
   (clk,
    out);
  input clk;
  output out;

  wire clear;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire out;
  wire out_OBUF;
  wire out_i_1_n_0;
  wire \timer_cnt[0]_i_10_n_0 ;
  wire \timer_cnt[0]_i_11_n_0 ;
  wire \timer_cnt[0]_i_3_n_0 ;
  wire \timer_cnt[0]_i_4_n_0 ;
  wire \timer_cnt[0]_i_5_n_0 ;
  wire \timer_cnt[0]_i_6_n_0 ;
  wire \timer_cnt[0]_i_7_n_0 ;
  wire \timer_cnt[0]_i_8_n_0 ;
  wire \timer_cnt[0]_i_9_n_0 ;
  wire [31:0]timer_cnt_reg;
  wire \timer_cnt_reg[0]_i_2_n_0 ;
  wire \timer_cnt_reg[0]_i_2_n_1 ;
  wire \timer_cnt_reg[0]_i_2_n_2 ;
  wire \timer_cnt_reg[0]_i_2_n_3 ;
  wire \timer_cnt_reg[0]_i_2_n_4 ;
  wire \timer_cnt_reg[0]_i_2_n_5 ;
  wire \timer_cnt_reg[0]_i_2_n_6 ;
  wire \timer_cnt_reg[0]_i_2_n_7 ;
  wire \timer_cnt_reg[12]_i_1_n_0 ;
  wire \timer_cnt_reg[12]_i_1_n_1 ;
  wire \timer_cnt_reg[12]_i_1_n_2 ;
  wire \timer_cnt_reg[12]_i_1_n_3 ;
  wire \timer_cnt_reg[12]_i_1_n_4 ;
  wire \timer_cnt_reg[12]_i_1_n_5 ;
  wire \timer_cnt_reg[12]_i_1_n_6 ;
  wire \timer_cnt_reg[12]_i_1_n_7 ;
  wire \timer_cnt_reg[16]_i_1_n_0 ;
  wire \timer_cnt_reg[16]_i_1_n_1 ;
  wire \timer_cnt_reg[16]_i_1_n_2 ;
  wire \timer_cnt_reg[16]_i_1_n_3 ;
  wire \timer_cnt_reg[16]_i_1_n_4 ;
  wire \timer_cnt_reg[16]_i_1_n_5 ;
  wire \timer_cnt_reg[16]_i_1_n_6 ;
  wire \timer_cnt_reg[16]_i_1_n_7 ;
  wire \timer_cnt_reg[20]_i_1_n_0 ;
  wire \timer_cnt_reg[20]_i_1_n_1 ;
  wire \timer_cnt_reg[20]_i_1_n_2 ;
  wire \timer_cnt_reg[20]_i_1_n_3 ;
  wire \timer_cnt_reg[20]_i_1_n_4 ;
  wire \timer_cnt_reg[20]_i_1_n_5 ;
  wire \timer_cnt_reg[20]_i_1_n_6 ;
  wire \timer_cnt_reg[20]_i_1_n_7 ;
  wire \timer_cnt_reg[24]_i_1_n_0 ;
  wire \timer_cnt_reg[24]_i_1_n_1 ;
  wire \timer_cnt_reg[24]_i_1_n_2 ;
  wire \timer_cnt_reg[24]_i_1_n_3 ;
  wire \timer_cnt_reg[24]_i_1_n_4 ;
  wire \timer_cnt_reg[24]_i_1_n_5 ;
  wire \timer_cnt_reg[24]_i_1_n_6 ;
  wire \timer_cnt_reg[24]_i_1_n_7 ;
  wire \timer_cnt_reg[28]_i_1_n_1 ;
  wire \timer_cnt_reg[28]_i_1_n_2 ;
  wire \timer_cnt_reg[28]_i_1_n_3 ;
  wire \timer_cnt_reg[28]_i_1_n_4 ;
  wire \timer_cnt_reg[28]_i_1_n_5 ;
  wire \timer_cnt_reg[28]_i_1_n_6 ;
  wire \timer_cnt_reg[28]_i_1_n_7 ;
  wire \timer_cnt_reg[4]_i_1_n_0 ;
  wire \timer_cnt_reg[4]_i_1_n_1 ;
  wire \timer_cnt_reg[4]_i_1_n_2 ;
  wire \timer_cnt_reg[4]_i_1_n_3 ;
  wire \timer_cnt_reg[4]_i_1_n_4 ;
  wire \timer_cnt_reg[4]_i_1_n_5 ;
  wire \timer_cnt_reg[4]_i_1_n_6 ;
  wire \timer_cnt_reg[4]_i_1_n_7 ;
  wire \timer_cnt_reg[8]_i_1_n_0 ;
  wire \timer_cnt_reg[8]_i_1_n_1 ;
  wire \timer_cnt_reg[8]_i_1_n_2 ;
  wire \timer_cnt_reg[8]_i_1_n_3 ;
  wire \timer_cnt_reg[8]_i_1_n_4 ;
  wire \timer_cnt_reg[8]_i_1_n_5 ;
  wire \timer_cnt_reg[8]_i_1_n_6 ;
  wire \timer_cnt_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_timer_cnt_reg[28]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_src_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF out_OBUF_inst
       (.I(out_OBUF),
        .O(out));
  LUT2 #(
    .INIT(4'h6)) 
    out_i_1
       (.I0(clear),
        .I1(out_OBUF),
        .O(out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(out_i_1_n_0),
        .Q(out_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAEAEAAAEAAAEAAA)) 
    \timer_cnt[0]_i_1 
       (.I0(\timer_cnt[0]_i_3_n_0 ),
        .I1(timer_cnt_reg[25]),
        .I2(\timer_cnt[0]_i_4_n_0 ),
        .I3(timer_cnt_reg[18]),
        .I4(\timer_cnt[0]_i_5_n_0 ),
        .I5(timer_cnt_reg[17]),
        .O(clear));
  LUT3 #(
    .INIT(8'h80)) 
    \timer_cnt[0]_i_10 
       (.I0(timer_cnt_reg[2]),
        .I1(timer_cnt_reg[1]),
        .I2(timer_cnt_reg[0]),
        .O(\timer_cnt[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \timer_cnt[0]_i_11 
       (.I0(timer_cnt_reg[13]),
        .I1(timer_cnt_reg[12]),
        .I2(timer_cnt_reg[15]),
        .I3(timer_cnt_reg[14]),
        .O(\timer_cnt[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \timer_cnt[0]_i_3 
       (.I0(timer_cnt_reg[27]),
        .I1(timer_cnt_reg[26]),
        .I2(\timer_cnt[0]_i_7_n_0 ),
        .O(\timer_cnt[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \timer_cnt[0]_i_4 
       (.I0(timer_cnt_reg[19]),
        .I1(timer_cnt_reg[20]),
        .I2(timer_cnt_reg[21]),
        .I3(timer_cnt_reg[23]),
        .I4(timer_cnt_reg[22]),
        .O(\timer_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEE0000)) 
    \timer_cnt[0]_i_5 
       (.I0(\timer_cnt[0]_i_8_n_0 ),
        .I1(timer_cnt_reg[7]),
        .I2(\timer_cnt[0]_i_9_n_0 ),
        .I3(\timer_cnt[0]_i_10_n_0 ),
        .I4(\timer_cnt[0]_i_11_n_0 ),
        .I5(timer_cnt_reg[16]),
        .O(\timer_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timer_cnt[0]_i_6 
       (.I0(timer_cnt_reg[0]),
        .O(\timer_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \timer_cnt[0]_i_7 
       (.I0(timer_cnt_reg[24]),
        .I1(timer_cnt_reg[25]),
        .I2(timer_cnt_reg[30]),
        .I3(timer_cnt_reg[31]),
        .I4(timer_cnt_reg[29]),
        .I5(timer_cnt_reg[28]),
        .O(\timer_cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer_cnt[0]_i_8 
       (.I0(timer_cnt_reg[9]),
        .I1(timer_cnt_reg[8]),
        .I2(timer_cnt_reg[11]),
        .I3(timer_cnt_reg[10]),
        .O(\timer_cnt[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \timer_cnt[0]_i_9 
       (.I0(timer_cnt_reg[6]),
        .I1(timer_cnt_reg[5]),
        .I2(timer_cnt_reg[4]),
        .I3(timer_cnt_reg[3]),
        .O(\timer_cnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[0]_i_2_n_7 ),
        .Q(timer_cnt_reg[0]),
        .R(clear));
  CARRY4 \timer_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_cnt_reg[0]_i_2_n_0 ,\timer_cnt_reg[0]_i_2_n_1 ,\timer_cnt_reg[0]_i_2_n_2 ,\timer_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\timer_cnt_reg[0]_i_2_n_4 ,\timer_cnt_reg[0]_i_2_n_5 ,\timer_cnt_reg[0]_i_2_n_6 ,\timer_cnt_reg[0]_i_2_n_7 }),
        .S({timer_cnt_reg[3:1],\timer_cnt[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[8]_i_1_n_5 ),
        .Q(timer_cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[8]_i_1_n_4 ),
        .Q(timer_cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[12]_i_1_n_7 ),
        .Q(timer_cnt_reg[12]),
        .R(clear));
  CARRY4 \timer_cnt_reg[12]_i_1 
       (.CI(\timer_cnt_reg[8]_i_1_n_0 ),
        .CO({\timer_cnt_reg[12]_i_1_n_0 ,\timer_cnt_reg[12]_i_1_n_1 ,\timer_cnt_reg[12]_i_1_n_2 ,\timer_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[12]_i_1_n_4 ,\timer_cnt_reg[12]_i_1_n_5 ,\timer_cnt_reg[12]_i_1_n_6 ,\timer_cnt_reg[12]_i_1_n_7 }),
        .S(timer_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[12]_i_1_n_6 ),
        .Q(timer_cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[12]_i_1_n_5 ),
        .Q(timer_cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[12]_i_1_n_4 ),
        .Q(timer_cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[16]_i_1_n_7 ),
        .Q(timer_cnt_reg[16]),
        .R(clear));
  CARRY4 \timer_cnt_reg[16]_i_1 
       (.CI(\timer_cnt_reg[12]_i_1_n_0 ),
        .CO({\timer_cnt_reg[16]_i_1_n_0 ,\timer_cnt_reg[16]_i_1_n_1 ,\timer_cnt_reg[16]_i_1_n_2 ,\timer_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[16]_i_1_n_4 ,\timer_cnt_reg[16]_i_1_n_5 ,\timer_cnt_reg[16]_i_1_n_6 ,\timer_cnt_reg[16]_i_1_n_7 }),
        .S(timer_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[16]_i_1_n_6 ),
        .Q(timer_cnt_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[16]_i_1_n_5 ),
        .Q(timer_cnt_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[16]_i_1_n_4 ),
        .Q(timer_cnt_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[0]_i_2_n_6 ),
        .Q(timer_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[20]_i_1_n_7 ),
        .Q(timer_cnt_reg[20]),
        .R(clear));
  CARRY4 \timer_cnt_reg[20]_i_1 
       (.CI(\timer_cnt_reg[16]_i_1_n_0 ),
        .CO({\timer_cnt_reg[20]_i_1_n_0 ,\timer_cnt_reg[20]_i_1_n_1 ,\timer_cnt_reg[20]_i_1_n_2 ,\timer_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[20]_i_1_n_4 ,\timer_cnt_reg[20]_i_1_n_5 ,\timer_cnt_reg[20]_i_1_n_6 ,\timer_cnt_reg[20]_i_1_n_7 }),
        .S(timer_cnt_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[20]_i_1_n_6 ),
        .Q(timer_cnt_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[20]_i_1_n_5 ),
        .Q(timer_cnt_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[20]_i_1_n_4 ),
        .Q(timer_cnt_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[24]_i_1_n_7 ),
        .Q(timer_cnt_reg[24]),
        .R(clear));
  CARRY4 \timer_cnt_reg[24]_i_1 
       (.CI(\timer_cnt_reg[20]_i_1_n_0 ),
        .CO({\timer_cnt_reg[24]_i_1_n_0 ,\timer_cnt_reg[24]_i_1_n_1 ,\timer_cnt_reg[24]_i_1_n_2 ,\timer_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[24]_i_1_n_4 ,\timer_cnt_reg[24]_i_1_n_5 ,\timer_cnt_reg[24]_i_1_n_6 ,\timer_cnt_reg[24]_i_1_n_7 }),
        .S(timer_cnt_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[24]_i_1_n_6 ),
        .Q(timer_cnt_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[24]_i_1_n_5 ),
        .Q(timer_cnt_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[24]_i_1_n_4 ),
        .Q(timer_cnt_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[28]_i_1_n_7 ),
        .Q(timer_cnt_reg[28]),
        .R(clear));
  CARRY4 \timer_cnt_reg[28]_i_1 
       (.CI(\timer_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_timer_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\timer_cnt_reg[28]_i_1_n_1 ,\timer_cnt_reg[28]_i_1_n_2 ,\timer_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[28]_i_1_n_4 ,\timer_cnt_reg[28]_i_1_n_5 ,\timer_cnt_reg[28]_i_1_n_6 ,\timer_cnt_reg[28]_i_1_n_7 }),
        .S(timer_cnt_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[28]_i_1_n_6 ),
        .Q(timer_cnt_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[0]_i_2_n_5 ),
        .Q(timer_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[28]_i_1_n_5 ),
        .Q(timer_cnt_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[28]_i_1_n_4 ),
        .Q(timer_cnt_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[0]_i_2_n_4 ),
        .Q(timer_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[4]_i_1_n_7 ),
        .Q(timer_cnt_reg[4]),
        .R(clear));
  CARRY4 \timer_cnt_reg[4]_i_1 
       (.CI(\timer_cnt_reg[0]_i_2_n_0 ),
        .CO({\timer_cnt_reg[4]_i_1_n_0 ,\timer_cnt_reg[4]_i_1_n_1 ,\timer_cnt_reg[4]_i_1_n_2 ,\timer_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[4]_i_1_n_4 ,\timer_cnt_reg[4]_i_1_n_5 ,\timer_cnt_reg[4]_i_1_n_6 ,\timer_cnt_reg[4]_i_1_n_7 }),
        .S(timer_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[4]_i_1_n_6 ),
        .Q(timer_cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[4]_i_1_n_5 ),
        .Q(timer_cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[4]_i_1_n_4 ),
        .Q(timer_cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[8]_i_1_n_7 ),
        .Q(timer_cnt_reg[8]),
        .R(clear));
  CARRY4 \timer_cnt_reg[8]_i_1 
       (.CI(\timer_cnt_reg[4]_i_1_n_0 ),
        .CO({\timer_cnt_reg[8]_i_1_n_0 ,\timer_cnt_reg[8]_i_1_n_1 ,\timer_cnt_reg[8]_i_1_n_2 ,\timer_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_cnt_reg[8]_i_1_n_4 ,\timer_cnt_reg[8]_i_1_n_5 ,\timer_cnt_reg[8]_i_1_n_6 ,\timer_cnt_reg[8]_i_1_n_7 }),
        .S(timer_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\timer_cnt_reg[8]_i_1_n_6 ),
        .Q(timer_cnt_reg[9]),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
