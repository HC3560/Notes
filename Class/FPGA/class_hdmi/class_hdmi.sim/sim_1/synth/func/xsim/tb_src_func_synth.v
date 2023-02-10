// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Feb  9 23:39:21 2023
// Host        : HC-R7000 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/Xilinx/Projects/class_hdmi/class_hdmi.sim/sim_1/synth/func/xsim/tb_src_func_synth.v
// Design      : src
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module i2c_config
   (hdmi_scl_TRI,
    hdmi_sda_TRI,
    clk_out1,
    locked,
    hdmi_scl_IBUF,
    hdmi_sda_IBUF);
  output hdmi_scl_TRI;
  output hdmi_sda_TRI;
  input clk_out1;
  input locked;
  input hdmi_scl_IBUF;
  input hdmi_sda_IBUF;

  wire clk_out1;
  wire hdmi_scl_IBUF;
  wire hdmi_scl_TRI;
  wire hdmi_sda_IBUF;
  wire hdmi_sda_TRI;
  wire i2c_master_top_m0_n_1;
  wire i2c_master_top_m0_n_3;
  wire i2c_master_top_m0_n_4;
  wire i2c_master_top_m0_n_5;
  wire i2c_master_top_m0_n_6;
  wire i2c_write_req_reg_n_0;
  wire locked;
  wire \lut_index[0]_i_1_n_0 ;
  wire \lut_index[1]_i_1_n_0 ;
  wire \lut_index[2]_i_1_n_0 ;
  wire \lut_index[3]_i_1_n_0 ;
  wire \lut_index[4]_i_1_n_0 ;
  wire \lut_index[5]_i_1_n_0 ;
  wire \lut_index[5]_i_2_n_0 ;
  wire \lut_index[6]_i_1_n_0 ;
  wire \lut_index[7]_i_1_n_0 ;
  wire \lut_index[8]_i_1_n_0 ;
  wire \lut_index[9]_i_2_n_0 ;
  wire \lut_index[9]_i_3_n_0 ;
  wire \lut_index_reg_n_0_[0] ;
  wire \lut_index_reg_n_0_[1] ;
  wire \lut_index_reg_n_0_[2] ;
  wire \lut_index_reg_n_0_[3] ;
  wire \lut_index_reg_n_0_[4] ;
  wire \lut_index_reg_n_0_[5] ;
  wire \lut_index_reg_n_0_[6] ;
  wire \lut_index_reg_n_0_[7] ;
  wire \lut_index_reg_n_0_[8] ;
  wire \lut_index_reg_n_0_[9] ;
  (* RTL_KEEP = "yes" *) wire [1:0]state;

  (* FSM_ENCODED_STATES = "S_IDLE:00,S_WR_I2C_CHECK:01,S_WR_I2C:10,S_WR_I2C_DONE:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(i2c_master_top_m0_n_1),
        .D(i2c_master_top_m0_n_5),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "S_IDLE:00,S_WR_I2C_CHECK:01,S_WR_I2C:10,S_WR_I2C_DONE:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(i2c_master_top_m0_n_1),
        .D(i2c_master_top_m0_n_4),
        .Q(state[1]));
  i2c_master_top i2c_master_top_m0
       (.E(i2c_master_top_m0_n_6),
        .\FSM_sequential_state_reg[0] (i2c_master_top_m0_n_5),
        .\FSM_sequential_state_reg[1] (i2c_master_top_m0_n_4),
        .Q({\lut_index_reg_n_0_[9] ,\lut_index_reg_n_0_[8] ,\lut_index_reg_n_0_[7] ,\lut_index_reg_n_0_[6] ,\lut_index_reg_n_0_[5] ,\lut_index_reg_n_0_[4] ,\lut_index_reg_n_0_[3] ,\lut_index_reg_n_0_[2] ,\lut_index_reg_n_0_[1] ,\lut_index_reg_n_0_[0] }),
        .\cSDA_reg[0] (i2c_master_top_m0_n_1),
        .clk_out1(clk_out1),
        .dscl_oen_reg(hdmi_scl_TRI),
        .hdmi_scl_IBUF(hdmi_scl_IBUF),
        .hdmi_sda_IBUF(hdmi_sda_IBUF),
        .hdmi_sda_TRI(hdmi_sda_TRI),
        .i2c_write_req_reg(i2c_master_top_m0_n_3),
        .i2c_write_req_reg_0(i2c_write_req_reg_n_0),
        .in0(state),
        .locked(locked),
        .out(state));
  FDRE #(
    .INIT(1'b0)) 
    i2c_write_req_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(i2c_master_top_m0_n_3),
        .Q(i2c_write_req_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \lut_index[0]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[0] ),
        .O(\lut_index[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \lut_index[1]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[1] ),
        .I2(\lut_index_reg_n_0_[0] ),
        .O(\lut_index[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \lut_index[2]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[2] ),
        .I2(\lut_index_reg_n_0_[1] ),
        .I3(\lut_index_reg_n_0_[0] ),
        .O(\lut_index[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \lut_index[3]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[3] ),
        .I2(\lut_index_reg_n_0_[2] ),
        .I3(\lut_index_reg_n_0_[0] ),
        .I4(\lut_index_reg_n_0_[1] ),
        .O(\lut_index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \lut_index[4]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[4] ),
        .I2(\lut_index_reg_n_0_[3] ),
        .I3(\lut_index_reg_n_0_[1] ),
        .I4(\lut_index_reg_n_0_[0] ),
        .I5(\lut_index_reg_n_0_[2] ),
        .O(\lut_index[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \lut_index[5]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[5] ),
        .I2(\lut_index[5]_i_2_n_0 ),
        .O(\lut_index[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \lut_index[5]_i_2 
       (.I0(\lut_index_reg_n_0_[4] ),
        .I1(\lut_index_reg_n_0_[2] ),
        .I2(\lut_index_reg_n_0_[0] ),
        .I3(\lut_index_reg_n_0_[1] ),
        .I4(\lut_index_reg_n_0_[3] ),
        .O(\lut_index[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \lut_index[6]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[6] ),
        .I2(\lut_index[9]_i_3_n_0 ),
        .O(\lut_index[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2888)) 
    \lut_index[7]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[7] ),
        .I2(\lut_index_reg_n_0_[6] ),
        .I3(\lut_index[9]_i_3_n_0 ),
        .O(\lut_index[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28888888)) 
    \lut_index[8]_i_1 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[8] ),
        .I2(\lut_index_reg_n_0_[7] ),
        .I3(\lut_index[9]_i_3_n_0 ),
        .I4(\lut_index_reg_n_0_[6] ),
        .O(\lut_index[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \lut_index[9]_i_2 
       (.I0(state[1]),
        .I1(\lut_index_reg_n_0_[9] ),
        .I2(\lut_index_reg_n_0_[8] ),
        .I3(\lut_index_reg_n_0_[6] ),
        .I4(\lut_index[9]_i_3_n_0 ),
        .I5(\lut_index_reg_n_0_[7] ),
        .O(\lut_index[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \lut_index[9]_i_3 
       (.I0(\lut_index_reg_n_0_[5] ),
        .I1(\lut_index_reg_n_0_[3] ),
        .I2(\lut_index_reg_n_0_[1] ),
        .I3(\lut_index_reg_n_0_[0] ),
        .I4(\lut_index_reg_n_0_[2] ),
        .I5(\lut_index_reg_n_0_[4] ),
        .O(\lut_index[9]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[0] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[0]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[1] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[1]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[2] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[2]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[3] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[3]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[4] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[4]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[5] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[5]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[6] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[6]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[7] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[7]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[8] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[8]_i_1_n_0 ),
        .Q(\lut_index_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \lut_index_reg[9] 
       (.C(clk_out1),
        .CE(i2c_master_top_m0_n_6),
        .CLR(i2c_master_top_m0_n_1),
        .D(\lut_index[9]_i_2_n_0 ),
        .Q(\lut_index_reg_n_0_[9] ));
endmodule

module i2c_master_bit_ctrl
   (dscl_oen_reg_0,
    c_state1,
    hdmi_sda_TRI,
    \core_cmd_reg[3] ,
    c_state,
    ack_out_reg,
    \cSDA_reg[0]_0 ,
    \sr_reg[0] ,
    \FSM_sequential_c_state_reg[2]_0 ,
    \FSM_sequential_c_state_reg[1]_0 ,
    \FSM_sequential_c_state_reg[0]_0 ,
    ld,
    core_txd,
    shift,
    cmd_ack_reg_0,
    clk_out1,
    locked,
    irxack,
    out,
    \core_cmd_reg[0] ,
    \core_cmd_reg[3]_0 ,
    \core_cmd_reg[1] ,
    \core_cmd_reg[2] ,
    Q,
    ld_reg,
    in0,
    start_reg,
    cnt_done,
    start_reg_0,
    done,
    read_reg,
    write_reg,
    stop_reg,
    ack_in,
    rxr,
    stop_reg_0,
    hdmi_scl_IBUF,
    hdmi_sda_IBUF,
    core_txd_reg);
  output dscl_oen_reg_0;
  output c_state1;
  output hdmi_sda_TRI;
  output \core_cmd_reg[3] ;
  output c_state;
  output ack_out_reg;
  output \cSDA_reg[0]_0 ;
  output \sr_reg[0] ;
  output \FSM_sequential_c_state_reg[2]_0 ;
  output \FSM_sequential_c_state_reg[1]_0 ;
  output \FSM_sequential_c_state_reg[0]_0 ;
  output ld;
  output core_txd;
  output shift;
  output cmd_ack_reg_0;
  input clk_out1;
  input locked;
  input irxack;
  input [2:0]out;
  input \core_cmd_reg[0] ;
  input \core_cmd_reg[3]_0 ;
  input \core_cmd_reg[1] ;
  input \core_cmd_reg[2] ;
  input [0:0]Q;
  input ld_reg;
  input [2:0]in0;
  input start_reg;
  input cnt_done;
  input start_reg_0;
  input done;
  input read_reg;
  input write_reg;
  input stop_reg;
  input ack_in;
  input [0:0]rxr;
  input stop_reg_0;
  input hdmi_scl_IBUF;
  input hdmi_sda_IBUF;
  input core_txd_reg;

  wire \FSM_sequential_c_state[0]_i_1_n_0 ;
  wire \FSM_sequential_c_state[0]_i_2_n_0 ;
  wire \FSM_sequential_c_state[1]_i_1_n_0 ;
  wire \FSM_sequential_c_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_c_state[1]_i_2_n_0 ;
  wire \FSM_sequential_c_state[1]_i_3_n_0 ;
  wire \FSM_sequential_c_state[2]_i_1_n_0 ;
  wire \FSM_sequential_c_state[2]_i_2__0_n_0 ;
  wire \FSM_sequential_c_state[2]_i_2_n_0 ;
  wire \FSM_sequential_c_state[3]_i_1_n_0 ;
  wire \FSM_sequential_c_state[3]_i_2_n_0 ;
  wire \FSM_sequential_c_state[3]_i_3_n_0 ;
  wire \FSM_sequential_c_state[4]_i_1_n_0 ;
  wire \FSM_sequential_c_state[4]_i_2_n_0 ;
  wire \FSM_sequential_c_state[4]_i_3_n_0 ;
  wire \FSM_sequential_c_state_reg[0]_0 ;
  wire \FSM_sequential_c_state_reg[1]_0 ;
  wire \FSM_sequential_c_state_reg[2]_0 ;
  wire [0:0]Q;
  wire ack_in;
  wire ack_out_i_2_n_0;
  wire ack_out_reg;
  wire al_i_1_n_0;
  wire al_i_2_n_0;
  wire al_i_3_n_0;
  wire al_reg_n_0;
  wire \cSDA_reg[0]_0 ;
  wire \cSDA_reg_n_0_[1] ;
  wire c_state;
  wire c_state1;
  (* RTL_KEEP = "yes" *) wire [4:0]c_state_0;
  wire clk_en;
  wire clk_out1;
  wire cmd_ack_i_2_n_0;
  wire cmd_ack_reg_0;
  wire cmd_stop;
  wire cmd_stop_i_1_n_0;
  wire cmd_stop_reg_n_0;
  wire [15:0]cnt;
  wire [15:1]cnt0;
  wire cnt0_carry__0_i_1_n_0;
  wire cnt0_carry__0_i_2_n_0;
  wire cnt0_carry__0_i_3_n_0;
  wire cnt0_carry__0_i_4_n_0;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_i_1_n_0;
  wire cnt0_carry__1_i_2_n_0;
  wire cnt0_carry__1_i_3_n_0;
  wire cnt0_carry__1_i_4_n_0;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_i_1_n_0;
  wire cnt0_carry__2_i_2_n_0;
  wire cnt0_carry__2_i_3_n_0;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry_i_1_n_0;
  wire cnt0_carry_i_2_n_0;
  wire cnt0_carry_i_3_n_0;
  wire cnt0_carry_i_4_n_0;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt1;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[15]_i_1_n_0 ;
  wire \cnt[15]_i_2_n_0 ;
  wire \cnt[15]_i_3_n_0 ;
  wire \cnt[15]_i_4_n_0 ;
  wire \cnt[15]_i_5_n_0 ;
  wire \cnt[15]_i_6_n_0 ;
  wire cnt_done;
  wire core_ack;
  wire \core_cmd[3]_i_4_n_0 ;
  wire \core_cmd_reg[0] ;
  wire \core_cmd_reg[1] ;
  wire \core_cmd_reg[2] ;
  wire \core_cmd_reg[3] ;
  wire \core_cmd_reg[3]_0 ;
  wire core_rxd;
  wire core_txd;
  wire core_txd_reg;
  wire dSCL;
  wire dSCL_i_1_n_0;
  wire dSDA;
  wire dSDA_i_1_n_0;
  wire done;
  wire dout_i_1_n_0;
  wire dscl_oen;
  wire dscl_oen_reg_0;
  wire \fSCL[2]_i_1_n_0 ;
  wire \fSCL_reg_n_0_[2] ;
  wire \fSDA[2]_i_1_n_0 ;
  wire \fSDA_reg_n_0_[0] ;
  wire \fSDA_reg_n_0_[1] ;
  wire \fSDA_reg_n_0_[2] ;
  wire [13:0]filter_cnt;
  wire [13:1]filter_cnt0;
  wire filter_cnt0_carry__0_i_1_n_0;
  wire filter_cnt0_carry__0_i_2_n_0;
  wire filter_cnt0_carry__0_i_3_n_0;
  wire filter_cnt0_carry__0_i_4_n_0;
  wire filter_cnt0_carry__0_n_0;
  wire filter_cnt0_carry__0_n_1;
  wire filter_cnt0_carry__0_n_2;
  wire filter_cnt0_carry__0_n_3;
  wire filter_cnt0_carry__1_i_1_n_0;
  wire filter_cnt0_carry__1_i_2_n_0;
  wire filter_cnt0_carry__1_i_3_n_0;
  wire filter_cnt0_carry__1_i_4_n_0;
  wire filter_cnt0_carry__1_n_0;
  wire filter_cnt0_carry__1_n_1;
  wire filter_cnt0_carry__1_n_2;
  wire filter_cnt0_carry__1_n_3;
  wire filter_cnt0_carry__2_i_1_n_0;
  wire filter_cnt0_carry_i_1_n_0;
  wire filter_cnt0_carry_i_2_n_0;
  wire filter_cnt0_carry_i_3_n_0;
  wire filter_cnt0_carry_i_4_n_0;
  wire filter_cnt0_carry_n_0;
  wire filter_cnt0_carry_n_1;
  wire filter_cnt0_carry_n_2;
  wire filter_cnt0_carry_n_3;
  wire \filter_cnt[0]_i_1_n_0 ;
  wire \filter_cnt[13]_i_1_n_0 ;
  wire \filter_cnt[13]_i_2_n_0 ;
  wire \filter_cnt[13]_i_3_n_0 ;
  wire \filter_cnt[13]_i_4_n_0 ;
  wire \filter_cnt[2]_i_1_n_0 ;
  wire \filter_cnt[3]_i_1_n_0 ;
  wire \filter_cnt[4]_i_1_n_0 ;
  wire \filter_cnt[5]_i_1_n_0 ;
  wire \filter_cnt[6]_i_1_n_0 ;
  wire hdmi_scl_IBUF;
  wire hdmi_sda_IBUF;
  wire hdmi_sda_TRI;
  wire [2:0]in0;
  wire irxack;
  wire ld;
  wire ld_reg;
  wire locked;
  wire [2:0]out;
  wire [1:1]p_0_in;
  wire [1:1]p_0_in__0;
  wire [2:0]p_0_in__1;
  wire read_reg;
  wire [0:0]rxr;
  wire sSCL;
  wire sSCL_i_1_n_0;
  wire sSDA;
  wire sSDA_i_1_n_0;
  wire scl_oen_i_1_n_0;
  wire scl_oen_i_2_n_0;
  wire scl_oen_i_3_n_0;
  wire sda_chk;
  wire sda_chk_i_1_n_0;
  wire sda_chk_reg_n_0;
  wire sda_oen_i_1_n_0;
  wire sda_oen_i_2_n_0;
  wire sda_oen_i_3_n_0;
  wire shift;
  wire slave_wait;
  wire slave_wait0;
  wire \sr_reg[0] ;
  wire start_reg;
  wire start_reg_0;
  wire sto_condition;
  wire sto_condition_reg_n_0;
  wire stop_reg;
  wire stop_reg_0;
  wire write_reg;
  wire [3:2]NLW_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_filter_cnt0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_filter_cnt0_carry__2_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[15]_i_2 
       (.I0(locked),
        .O(\cSDA_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \FSM_sequential_c_state[0]_i_1 
       (.I0(c_state_0[0]),
        .I1(\FSM_sequential_c_state[4]_i_3_n_0 ),
        .I2(c_state_0[2]),
        .I3(c_state_0[3]),
        .I4(\FSM_sequential_c_state[0]_i_2_n_0 ),
        .I5(c_state_0[4]),
        .O(\FSM_sequential_c_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \FSM_sequential_c_state[0]_i_1__0 
       (.I0(al_reg_n_0),
        .I1(locked),
        .I2(start_reg_0),
        .I3(c_state),
        .I4(in0[0]),
        .O(\FSM_sequential_c_state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \FSM_sequential_c_state[0]_i_2 
       (.I0(c_state_0[1]),
        .I1(\core_cmd_reg[1] ),
        .I2(\core_cmd_reg[0] ),
        .I3(\core_cmd_reg[2] ),
        .I4(\core_cmd_reg[3]_0 ),
        .O(\FSM_sequential_c_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_c_state[1]_i_1 
       (.I0(c_state_0[4]),
        .I1(locked),
        .I2(al_reg_n_0),
        .I3(\FSM_sequential_c_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_c_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0151FFFF01510000)) 
    \FSM_sequential_c_state[1]_i_1__0 
       (.I0(\FSM_sequential_c_state[1]_i_2__0_n_0 ),
        .I1(start_reg),
        .I2(out[1]),
        .I3(cnt_done),
        .I4(c_state),
        .I5(in0[1]),
        .O(\FSM_sequential_c_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hEEEFEFFE44444444)) 
    \FSM_sequential_c_state[1]_i_2 
       (.I0(c_state_0[0]),
        .I1(c_state_0[1]),
        .I2(\core_cmd_reg[1] ),
        .I3(\core_cmd_reg[2] ),
        .I4(\core_cmd_reg[3]_0 ),
        .I5(\FSM_sequential_c_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_c_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFFFFFF)) 
    \FSM_sequential_c_state[1]_i_2__0 
       (.I0(read_reg),
        .I1(write_reg),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(\FSM_sequential_c_state[4]_i_3_n_0 ),
        .O(\FSM_sequential_c_state[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00001101)) 
    \FSM_sequential_c_state[1]_i_3 
       (.I0(c_state_0[2]),
        .I1(c_state_0[1]),
        .I2(\core_cmd_reg[0] ),
        .I3(c_state_0[0]),
        .I4(c_state_0[3]),
        .O(\FSM_sequential_c_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002A0A2AAAA0002)) 
    \FSM_sequential_c_state[2]_i_1 
       (.I0(\FSM_sequential_c_state[3]_i_2_n_0 ),
        .I1(c_state_0[3]),
        .I2(c_state_0[1]),
        .I3(\FSM_sequential_c_state[2]_i_2_n_0 ),
        .I4(c_state_0[2]),
        .I5(c_state_0[0]),
        .O(\FSM_sequential_c_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_c_state[2]_i_1__0 
       (.I0(\FSM_sequential_c_state[2]_i_2__0_n_0 ),
        .I1(c_state),
        .I2(in0[2]),
        .O(\FSM_sequential_c_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEEF)) 
    \FSM_sequential_c_state[2]_i_2 
       (.I0(c_state_0[0]),
        .I1(\core_cmd_reg[2] ),
        .I2(\core_cmd_reg[1] ),
        .I3(\core_cmd_reg[3]_0 ),
        .I4(\core_cmd_reg[0] ),
        .O(\FSM_sequential_c_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C000004000400)) 
    \FSM_sequential_c_state[2]_i_2__0 
       (.I0(out[0]),
        .I1(locked),
        .I2(al_reg_n_0),
        .I3(stop_reg_0),
        .I4(cnt_done),
        .I5(out[1]),
        .O(\FSM_sequential_c_state[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0AA8A0A800A800A8)) 
    \FSM_sequential_c_state[3]_i_1 
       (.I0(\FSM_sequential_c_state[3]_i_2_n_0 ),
        .I1(\FSM_sequential_c_state[3]_i_3_n_0 ),
        .I2(c_state_0[3]),
        .I3(c_state_0[0]),
        .I4(c_state_0[2]),
        .I5(c_state_0[1]),
        .O(\FSM_sequential_c_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_c_state[3]_i_2 
       (.I0(al_reg_n_0),
        .I1(locked),
        .I2(c_state_0[4]),
        .O(\FSM_sequential_c_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000006)) 
    \FSM_sequential_c_state[3]_i_3 
       (.I0(\core_cmd_reg[3]_0 ),
        .I1(\core_cmd_reg[2] ),
        .I2(\core_cmd_reg[0] ),
        .I3(\core_cmd_reg[1] ),
        .I4(c_state_0[1]),
        .I5(c_state_0[2]),
        .O(\FSM_sequential_c_state[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \FSM_sequential_c_state[4]_i_1 
       (.I0(al_reg_n_0),
        .I1(locked),
        .I2(clk_en),
        .O(\FSM_sequential_c_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF000080000000)) 
    \FSM_sequential_c_state[4]_i_2 
       (.I0(c_state_0[3]),
        .I1(c_state_0[1]),
        .I2(c_state_0[2]),
        .I3(c_state_0[0]),
        .I4(\FSM_sequential_c_state[4]_i_3_n_0 ),
        .I5(c_state_0[4]),
        .O(\FSM_sequential_c_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_c_state[4]_i_3 
       (.I0(locked),
        .I1(al_reg_n_0),
        .O(\FSM_sequential_c_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00000,start_a:00001,start_b:00010,start_c:00011,start_d:00100,start_e:00101,stop_a:00110,stop_b:00111,stop_c:01000,stop_d:01001,rd_a:01110,rd_b:01111,rd_c:10000,rd_d:10001,wr_a:01010,wr_b:01011,wr_c:01100,wr_d:01101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[0] 
       (.C(clk_out1),
        .CE(\FSM_sequential_c_state[4]_i_1_n_0 ),
        .D(\FSM_sequential_c_state[0]_i_1_n_0 ),
        .Q(c_state_0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:00000,start_a:00001,start_b:00010,start_c:00011,start_d:00100,start_e:00101,stop_a:00110,stop_b:00111,stop_c:01000,stop_d:01001,rd_a:01110,rd_b:01111,rd_c:10000,rd_d:10001,wr_a:01010,wr_b:01011,wr_c:01100,wr_d:01101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[1] 
       (.C(clk_out1),
        .CE(\FSM_sequential_c_state[4]_i_1_n_0 ),
        .D(\FSM_sequential_c_state[1]_i_1_n_0 ),
        .Q(c_state_0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:00000,start_a:00001,start_b:00010,start_c:00011,start_d:00100,start_e:00101,stop_a:00110,stop_b:00111,stop_c:01000,stop_d:01001,rd_a:01110,rd_b:01111,rd_c:10000,rd_d:10001,wr_a:01010,wr_b:01011,wr_c:01100,wr_d:01101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[2] 
       (.C(clk_out1),
        .CE(\FSM_sequential_c_state[4]_i_1_n_0 ),
        .D(\FSM_sequential_c_state[2]_i_1_n_0 ),
        .Q(c_state_0[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:00000,start_a:00001,start_b:00010,start_c:00011,start_d:00100,start_e:00101,stop_a:00110,stop_b:00111,stop_c:01000,stop_d:01001,rd_a:01110,rd_b:01111,rd_c:10000,rd_d:10001,wr_a:01010,wr_b:01011,wr_c:01100,wr_d:01101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[3] 
       (.C(clk_out1),
        .CE(\FSM_sequential_c_state[4]_i_1_n_0 ),
        .D(\FSM_sequential_c_state[3]_i_1_n_0 ),
        .Q(c_state_0[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle:00000,start_a:00001,start_b:00010,start_c:00011,start_d:00100,start_e:00101,stop_a:00110,stop_b:00111,stop_c:01000,stop_d:01001,rd_a:01110,rd_b:01111,rd_c:10000,rd_d:10001,wr_a:01010,wr_b:01011,wr_c:01100,wr_d:01101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[4] 
       (.C(clk_out1),
        .CE(\FSM_sequential_c_state[4]_i_1_n_0 ),
        .D(\FSM_sequential_c_state[4]_i_2_n_0 ),
        .Q(c_state_0[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    ack_out_i_1
       (.I0(core_rxd),
        .I1(al_reg_n_0),
        .I2(locked),
        .I3(ack_out_i_2_n_0),
        .I4(irxack),
        .O(ack_out_reg));
  LUT6 #(
    .INIT(64'hFFFF0008FFFFFFFF)) 
    ack_out_i_2
       (.I0(out[2]),
        .I1(core_ack),
        .I2(out[1]),
        .I3(out[0]),
        .I4(al_reg_n_0),
        .I5(locked),
        .O(ack_out_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    al_i_1
       (.I0(sto_condition_reg_n_0),
        .I1(cmd_stop_reg_n_0),
        .I2(locked),
        .I3(al_i_2_n_0),
        .I4(al_i_3_n_0),
        .O(al_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    al_i_2
       (.I0(c_state_0[4]),
        .I1(c_state_0[1]),
        .I2(c_state_0[0]),
        .I3(c_state_0[2]),
        .I4(c_state_0[3]),
        .O(al_i_2_n_0));
  LUT4 #(
    .INIT(16'h4000)) 
    al_i_3
       (.I0(sSDA),
        .I1(locked),
        .I2(sda_chk_reg_n_0),
        .I3(hdmi_sda_TRI),
        .O(al_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    al_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(al_i_1_n_0),
        .Q(al_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cSCL_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(hdmi_scl_IBUF),
        .Q(p_0_in),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cSCL_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in),
        .Q(p_0_in__1[0]),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cSDA_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(hdmi_sda_IBUF),
        .Q(p_0_in__0),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cSDA_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(\cSDA_reg_n_0_[1] ),
        .R(\cSDA_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    clk_en_i_1
       (.I0(\cnt[15]_i_3_n_0 ),
        .I1(\cnt[15]_i_4_n_0 ),
        .I2(locked),
        .I3(dSCL),
        .I4(dscl_oen_reg_0),
        .I5(sSCL),
        .O(cnt1));
  FDRE #(
    .INIT(1'b0)) 
    clk_en_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(cnt1),
        .Q(clk_en),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h44000400)) 
    cmd_ack_i_1
       (.I0(out[1]),
        .I1(out[2]),
        .I2(stop_reg),
        .I3(core_ack),
        .I4(out[0]),
        .O(cmd_ack_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    cmd_ack_i_1__0
       (.I0(al_reg_n_0),
        .I1(locked),
        .O(c_state1));
  LUT6 #(
    .INIT(64'h0000000002A80000)) 
    cmd_ack_i_2
       (.I0(clk_en),
        .I1(c_state_0[2]),
        .I2(c_state_0[3]),
        .I3(c_state_0[4]),
        .I4(c_state_0[0]),
        .I5(c_state_0[1]),
        .O(cmd_ack_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_ack_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(cmd_ack_i_2_n_0),
        .Q(core_ack),
        .R(c_state1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBA8A)) 
    cmd_stop_i_1
       (.I0(cmd_stop),
        .I1(clk_en),
        .I2(locked),
        .I3(cmd_stop_reg_n_0),
        .O(cmd_stop_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000400)) 
    cmd_stop_i_2
       (.I0(\core_cmd_reg[0] ),
        .I1(locked),
        .I2(\core_cmd_reg[3]_0 ),
        .I3(\core_cmd_reg[1] ),
        .I4(\core_cmd_reg[2] ),
        .O(cmd_stop));
  FDRE #(
    .INIT(1'b0)) 
    cmd_stop_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(cmd_stop_i_1_n_0),
        .Q(cmd_stop_reg_n_0),
        .R(1'b0));
  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI(cnt[4:1]),
        .O(cnt0[4:1]),
        .S({cnt0_carry_i_1_n_0,cnt0_carry_i_2_n_0,cnt0_carry_i_3_n_0,cnt0_carry_i_4_n_0}));
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cnt[8:5]),
        .O(cnt0[8:5]),
        .S({cnt0_carry__0_i_1_n_0,cnt0_carry__0_i_2_n_0,cnt0_carry__0_i_3_n_0,cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_1
       (.I0(cnt[8]),
        .O(cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_2
       (.I0(cnt[7]),
        .O(cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_3
       (.I0(cnt[6]),
        .O(cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_4
       (.I0(cnt[5]),
        .O(cnt0_carry__0_i_4_n_0));
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(cnt[12:9]),
        .O(cnt0[12:9]),
        .S({cnt0_carry__1_i_1_n_0,cnt0_carry__1_i_2_n_0,cnt0_carry__1_i_3_n_0,cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_1
       (.I0(cnt[12]),
        .O(cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_2
       (.I0(cnt[11]),
        .O(cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_3
       (.I0(cnt[10]),
        .O(cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_4
       (.I0(cnt[9]),
        .O(cnt0_carry__1_i_4_n_0));
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({NLW_cnt0_carry__2_CO_UNCONNECTED[3:2],cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt[14:13]}),
        .O({NLW_cnt0_carry__2_O_UNCONNECTED[3],cnt0[15:13]}),
        .S({1'b0,cnt0_carry__2_i_1_n_0,cnt0_carry__2_i_2_n_0,cnt0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_1
       (.I0(cnt[15]),
        .O(cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_2
       (.I0(cnt[14]),
        .O(cnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_3
       (.I0(cnt[13]),
        .O(cnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_1
       (.I0(cnt[4]),
        .O(cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_2
       (.I0(cnt[3]),
        .O(cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_3
       (.I0(cnt[2]),
        .O(cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_4
       (.I0(cnt[1]),
        .O(cnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4FFF4F4F4F)) 
    \cnt[15]_i_1 
       (.I0(\cnt[15]_i_3_n_0 ),
        .I1(\cnt[15]_i_4_n_0 ),
        .I2(locked),
        .I3(dSCL),
        .I4(dscl_oen_reg_0),
        .I5(sSCL),
        .O(\cnt[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[15]_i_2 
       (.I0(slave_wait),
        .O(\cnt[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[15]_i_3 
       (.I0(cnt[3]),
        .I1(cnt[7]),
        .I2(cnt[13]),
        .I3(cnt[12]),
        .I4(\cnt[15]_i_5_n_0 ),
        .O(\cnt[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt[15]_i_4 
       (.I0(cnt[2]),
        .I1(cnt[11]),
        .I2(cnt[5]),
        .I3(cnt[10]),
        .I4(\cnt[15]_i_6_n_0 ),
        .O(\cnt[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[15]_i_5 
       (.I0(cnt[8]),
        .I1(cnt[1]),
        .I2(cnt[14]),
        .I3(cnt[0]),
        .O(\cnt[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[15]_i_6 
       (.I0(cnt[9]),
        .I1(cnt[6]),
        .I2(cnt[15]),
        .I3(cnt[4]),
        .O(\cnt[15]_i_6_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[0] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .S(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[10]),
        .Q(cnt[10]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[11]),
        .Q(cnt[11]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[12]),
        .Q(cnt[12]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[13]),
        .Q(cnt[13]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[14]),
        .Q(cnt[14]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[15]),
        .Q(cnt[15]),
        .R(\cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[1] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[1]),
        .Q(cnt[1]),
        .S(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[2]),
        .Q(cnt[2]),
        .R(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[3]),
        .Q(cnt[3]),
        .R(\cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[4] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[4]),
        .Q(cnt[4]),
        .S(\cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[5] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[5]),
        .Q(cnt[5]),
        .S(\cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[6] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[6]),
        .Q(cnt[6]),
        .S(\cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[7] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[7]),
        .Q(cnt[7]),
        .S(\cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_reg[8] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[8]),
        .Q(cnt[8]),
        .S(\cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_out1),
        .CE(\cnt[15]_i_2_n_0 ),
        .D(cnt0[9]),
        .Q(cnt[9]),
        .R(\cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \core_cmd[3]_i_1 
       (.I0(c_state),
        .I1(al_reg_n_0),
        .I2(locked),
        .O(\core_cmd_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFF0E2FFFFFFFF)) 
    \core_cmd[3]_i_2 
       (.I0(\core_cmd[3]_i_4_n_0 ),
        .I1(out[1]),
        .I2(core_ack),
        .I3(out[2]),
        .I4(al_reg_n_0),
        .I5(locked),
        .O(c_state));
  LUT6 #(
    .INIT(64'h8B8B8B8B8B8B8B88)) 
    \core_cmd[3]_i_4 
       (.I0(core_ack),
        .I1(out[0]),
        .I2(done),
        .I3(read_reg),
        .I4(write_reg),
        .I5(stop_reg),
        .O(\core_cmd[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFDFFFD32202220)) 
    core_txd_i_1
       (.I0(out[2]),
        .I1(out[0]),
        .I2(ack_in),
        .I3(core_ack),
        .I4(out[1]),
        .I5(rxr),
        .O(core_txd));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dSCL_i_1
       (.I0(sSCL),
        .I1(locked),
        .O(dSCL_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dSCL_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dSCL_i_1_n_0),
        .Q(dSCL),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    dSDA_i_1
       (.I0(sSDA),
        .I1(locked),
        .O(dSDA_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dSDA_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dSDA_i_1_n_0),
        .Q(dSDA),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    dout_i_1
       (.I0(sSDA),
        .I1(sSCL),
        .I2(dSCL),
        .I3(core_rxd),
        .O(dout_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dout_i_1_n_0),
        .Q(core_rxd),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    dscl_oen_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(dscl_oen_reg_0),
        .Q(dscl_oen),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF7B3)) 
    \fSCL[2]_i_1 
       (.I0(\filter_cnt[13]_i_2_n_0 ),
        .I1(locked),
        .I2(p_0_in__1[2]),
        .I3(\fSCL_reg_n_0_[2] ),
        .O(\fSCL[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \fSCL_reg[0] 
       (.C(clk_out1),
        .CE(\filter_cnt[13]_i_1_n_0 ),
        .D(p_0_in__1[0]),
        .Q(p_0_in__1[1]),
        .S(\cSDA_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \fSCL_reg[1] 
       (.C(clk_out1),
        .CE(\filter_cnt[13]_i_1_n_0 ),
        .D(p_0_in__1[1]),
        .Q(p_0_in__1[2]),
        .S(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fSCL_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\fSCL[2]_i_1_n_0 ),
        .Q(\fSCL_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF7B3)) 
    \fSDA[2]_i_1 
       (.I0(\filter_cnt[13]_i_2_n_0 ),
        .I1(locked),
        .I2(\fSDA_reg_n_0_[1] ),
        .I3(\fSDA_reg_n_0_[2] ),
        .O(\fSDA[2]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \fSDA_reg[0] 
       (.C(clk_out1),
        .CE(\filter_cnt[13]_i_1_n_0 ),
        .D(\cSDA_reg_n_0_[1] ),
        .Q(\fSDA_reg_n_0_[0] ),
        .S(\cSDA_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \fSDA_reg[1] 
       (.C(clk_out1),
        .CE(\filter_cnt[13]_i_1_n_0 ),
        .D(\fSDA_reg_n_0_[0] ),
        .Q(\fSDA_reg_n_0_[1] ),
        .S(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fSDA_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\fSDA[2]_i_1_n_0 ),
        .Q(\fSDA_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 filter_cnt0_carry
       (.CI(1'b0),
        .CO({filter_cnt0_carry_n_0,filter_cnt0_carry_n_1,filter_cnt0_carry_n_2,filter_cnt0_carry_n_3}),
        .CYINIT(filter_cnt[0]),
        .DI(filter_cnt[4:1]),
        .O(filter_cnt0[4:1]),
        .S({filter_cnt0_carry_i_1_n_0,filter_cnt0_carry_i_2_n_0,filter_cnt0_carry_i_3_n_0,filter_cnt0_carry_i_4_n_0}));
  CARRY4 filter_cnt0_carry__0
       (.CI(filter_cnt0_carry_n_0),
        .CO({filter_cnt0_carry__0_n_0,filter_cnt0_carry__0_n_1,filter_cnt0_carry__0_n_2,filter_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(filter_cnt[8:5]),
        .O(filter_cnt0[8:5]),
        .S({filter_cnt0_carry__0_i_1_n_0,filter_cnt0_carry__0_i_2_n_0,filter_cnt0_carry__0_i_3_n_0,filter_cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__0_i_1
       (.I0(filter_cnt[8]),
        .O(filter_cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__0_i_2
       (.I0(filter_cnt[7]),
        .O(filter_cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__0_i_3
       (.I0(filter_cnt[6]),
        .O(filter_cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__0_i_4
       (.I0(filter_cnt[5]),
        .O(filter_cnt0_carry__0_i_4_n_0));
  CARRY4 filter_cnt0_carry__1
       (.CI(filter_cnt0_carry__0_n_0),
        .CO({filter_cnt0_carry__1_n_0,filter_cnt0_carry__1_n_1,filter_cnt0_carry__1_n_2,filter_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(filter_cnt[12:9]),
        .O(filter_cnt0[12:9]),
        .S({filter_cnt0_carry__1_i_1_n_0,filter_cnt0_carry__1_i_2_n_0,filter_cnt0_carry__1_i_3_n_0,filter_cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__1_i_1
       (.I0(filter_cnt[12]),
        .O(filter_cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__1_i_2
       (.I0(filter_cnt[11]),
        .O(filter_cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__1_i_3
       (.I0(filter_cnt[10]),
        .O(filter_cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__1_i_4
       (.I0(filter_cnt[9]),
        .O(filter_cnt0_carry__1_i_4_n_0));
  CARRY4 filter_cnt0_carry__2
       (.CI(filter_cnt0_carry__1_n_0),
        .CO(NLW_filter_cnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_filter_cnt0_carry__2_O_UNCONNECTED[3:1],filter_cnt0[13]}),
        .S({1'b0,1'b0,1'b0,filter_cnt0_carry__2_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry__2_i_1
       (.I0(filter_cnt[13]),
        .O(filter_cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry_i_1
       (.I0(filter_cnt[4]),
        .O(filter_cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry_i_2
       (.I0(filter_cnt[3]),
        .O(filter_cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry_i_3
       (.I0(filter_cnt[2]),
        .O(filter_cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    filter_cnt0_carry_i_4
       (.I0(filter_cnt[1]),
        .O(filter_cnt0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \filter_cnt[0]_i_1 
       (.I0(filter_cnt[0]),
        .O(\filter_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \filter_cnt[13]_i_1 
       (.I0(\filter_cnt[13]_i_2_n_0 ),
        .I1(locked),
        .O(\filter_cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \filter_cnt[13]_i_2 
       (.I0(\filter_cnt[13]_i_3_n_0 ),
        .I1(\filter_cnt[13]_i_4_n_0 ),
        .I2(filter_cnt[10]),
        .I3(filter_cnt[0]),
        .I4(filter_cnt[5]),
        .I5(filter_cnt[6]),
        .O(\filter_cnt[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \filter_cnt[13]_i_3 
       (.I0(filter_cnt[9]),
        .I1(filter_cnt[4]),
        .I2(filter_cnt[2]),
        .I3(filter_cnt[12]),
        .I4(filter_cnt[11]),
        .I5(filter_cnt[13]),
        .O(\filter_cnt[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \filter_cnt[13]_i_4 
       (.I0(filter_cnt[7]),
        .I1(filter_cnt[8]),
        .I2(filter_cnt[1]),
        .I3(filter_cnt[3]),
        .O(\filter_cnt[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \filter_cnt[2]_i_1 
       (.I0(filter_cnt0[2]),
        .I1(\filter_cnt[13]_i_2_n_0 ),
        .O(\filter_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \filter_cnt[3]_i_1 
       (.I0(filter_cnt0[3]),
        .I1(\filter_cnt[13]_i_2_n_0 ),
        .O(\filter_cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \filter_cnt[4]_i_1 
       (.I0(filter_cnt0[4]),
        .I1(\filter_cnt[13]_i_2_n_0 ),
        .O(\filter_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \filter_cnt[5]_i_1 
       (.I0(filter_cnt0[5]),
        .I1(\filter_cnt[13]_i_2_n_0 ),
        .O(\filter_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \filter_cnt[6]_i_1 
       (.I0(filter_cnt0[6]),
        .I1(\filter_cnt[13]_i_2_n_0 ),
        .O(\filter_cnt[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\filter_cnt[0]_i_1_n_0 ),
        .Q(filter_cnt[0]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[10]),
        .Q(filter_cnt[10]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[11]),
        .Q(filter_cnt[11]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[12]),
        .Q(filter_cnt[12]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[13]),
        .Q(filter_cnt[13]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[1]),
        .Q(filter_cnt[1]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\filter_cnt[2]_i_1_n_0 ),
        .Q(filter_cnt[2]),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\filter_cnt[3]_i_1_n_0 ),
        .Q(filter_cnt[3]),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\filter_cnt[4]_i_1_n_0 ),
        .Q(filter_cnt[4]),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\filter_cnt[5]_i_1_n_0 ),
        .Q(filter_cnt[5]),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\filter_cnt[6]_i_1_n_0 ),
        .Q(filter_cnt[6]),
        .R(\cSDA_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[7]),
        .Q(filter_cnt[7]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[8]),
        .Q(filter_cnt[8]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \filter_cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(filter_cnt0[9]),
        .Q(filter_cnt[9]),
        .R(\filter_cnt[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    ld_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(\core_cmd[3]_i_4_n_0 ),
        .O(ld));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFBB3)) 
    sSCL_i_1
       (.I0(p_0_in__1[2]),
        .I1(locked),
        .I2(p_0_in__1[1]),
        .I3(\fSCL_reg_n_0_[2] ),
        .O(sSCL_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sSCL_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sSCL_i_1_n_0),
        .Q(sSCL),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFBB3)) 
    sSDA_i_1
       (.I0(\fSDA_reg_n_0_[1] ),
        .I1(locked),
        .I2(\fSDA_reg_n_0_[0] ),
        .I3(\fSDA_reg_n_0_[2] ),
        .O(sSDA_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sSDA_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sSDA_i_1_n_0),
        .Q(sSDA),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFEFCFEF)) 
    scl_oen_i_1
       (.I0(scl_oen_i_2_n_0),
        .I1(al_reg_n_0),
        .I2(locked),
        .I3(scl_oen_i_3_n_0),
        .I4(dscl_oen_reg_0),
        .O(scl_oen_i_1_n_0));
  LUT5 #(
    .INIT(32'h00F3011F)) 
    scl_oen_i_2
       (.I0(c_state_0[3]),
        .I1(c_state_0[2]),
        .I2(c_state_0[1]),
        .I3(c_state_0[4]),
        .I4(c_state_0[0]),
        .O(scl_oen_i_2_n_0));
  LUT5 #(
    .INIT(32'hDDDDDDD7)) 
    scl_oen_i_3
       (.I0(clk_en),
        .I1(c_state_0[4]),
        .I2(c_state_0[3]),
        .I3(c_state_0[2]),
        .I4(c_state_0[1]),
        .O(scl_oen_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    scl_oen_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(scl_oen_i_1_n_0),
        .Q(dscl_oen_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h20302000)) 
    sda_chk_i_1
       (.I0(sda_chk),
        .I1(al_reg_n_0),
        .I2(locked),
        .I3(clk_en),
        .I4(sda_chk_reg_n_0),
        .O(sda_chk_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    sda_chk_i_2
       (.I0(c_state_0[2]),
        .I1(c_state_0[0]),
        .I2(c_state_0[3]),
        .I3(c_state_0[1]),
        .I4(c_state_0[4]),
        .O(sda_chk));
  FDRE #(
    .INIT(1'b0)) 
    sda_chk_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sda_chk_i_1_n_0),
        .Q(sda_chk_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEFCFEF)) 
    sda_oen_i_1
       (.I0(sda_oen_i_2_n_0),
        .I1(al_reg_n_0),
        .I2(locked),
        .I3(sda_oen_i_3_n_0),
        .I4(hdmi_sda_TRI),
        .O(sda_oen_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000C8CB03038F83)) 
    sda_oen_i_2
       (.I0(core_txd_reg),
        .I1(c_state_0[3]),
        .I2(c_state_0[2]),
        .I3(c_state_0[0]),
        .I4(c_state_0[4]),
        .I5(c_state_0[1]),
        .O(sda_oen_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF55FF55FD55FD57)) 
    sda_oen_i_3
       (.I0(clk_en),
        .I1(c_state_0[1]),
        .I2(c_state_0[2]),
        .I3(c_state_0[4]),
        .I4(c_state_0[0]),
        .I5(c_state_0[3]),
        .O(sda_oen_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sda_oen_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sda_oen_i_1_n_0),
        .Q(hdmi_sda_TRI),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00404040)) 
    shift_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(core_ack),
        .I3(out[0]),
        .I4(cnt_done),
        .O(shift));
  LUT4 #(
    .INIT(16'h00F2)) 
    slave_wait_i_1
       (.I0(dscl_oen_reg_0),
        .I1(dscl_oen),
        .I2(slave_wait),
        .I3(sSCL),
        .O(slave_wait0));
  FDRE #(
    .INIT(1'b0)) 
    slave_wait_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(slave_wait0),
        .Q(slave_wait),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[0]_i_1 
       (.I0(Q),
        .I1(ld_reg),
        .I2(core_rxd),
        .O(\sr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sto_condition_i_1
       (.I0(sSDA),
        .I1(sSCL),
        .I2(locked),
        .I3(dSDA),
        .O(sto_condition));
  FDRE #(
    .INIT(1'b0)) 
    sto_condition_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(sto_condition),
        .Q(sto_condition_reg_n_0),
        .R(1'b0));
endmodule

module i2c_master_byte_ctrl
   (dscl_oen_reg,
    hdmi_sda_TRI,
    read_reg,
    start_reg,
    stop_reg,
    write_reg,
    D,
    AR,
    clk_out1,
    locked,
    start_reg_0,
    read_reg_0,
    out,
    stop_reg_0,
    \FSM_onehot_state_reg[5] ,
    write_reg_0,
    \FSM_onehot_state_reg[3] ,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[11] ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[9] ,
    \FSM_onehot_state_reg[6] ,
    \FSM_onehot_state_reg[4] ,
    \FSM_onehot_state_reg[14] ,
    \FSM_onehot_state_reg[3]_0 ,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[9]_0 ,
    i2c_write_req_reg,
    Q,
    hdmi_scl_IBUF,
    hdmi_sda_IBUF,
    ack_in);
  output dscl_oen_reg;
  output hdmi_sda_TRI;
  output read_reg;
  output start_reg;
  output stop_reg;
  output write_reg;
  output [13:0]D;
  output [0:0]AR;
  input clk_out1;
  input locked;
  input start_reg_0;
  input read_reg_0;
  input [13:0]out;
  input stop_reg_0;
  input \FSM_onehot_state_reg[5] ;
  input write_reg_0;
  input \FSM_onehot_state_reg[3] ;
  input \FSM_onehot_state_reg[1] ;
  input \FSM_onehot_state_reg[2] ;
  input \FSM_onehot_state_reg[11] ;
  input \FSM_onehot_state_reg[1]_0 ;
  input \FSM_onehot_state_reg[9] ;
  input \FSM_onehot_state_reg[6] ;
  input \FSM_onehot_state_reg[4] ;
  input \FSM_onehot_state_reg[14] ;
  input \FSM_onehot_state_reg[3]_0 ;
  input \FSM_onehot_state_reg[0] ;
  input \FSM_onehot_state_reg[9]_0 ;
  input i2c_write_req_reg;
  input [7:0]Q;
  input hdmi_scl_IBUF;
  input hdmi_sda_IBUF;
  input ack_in;

  wire [0:0]AR;
  wire [13:0]D;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[11] ;
  wire \FSM_onehot_state_reg[14] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg[4] ;
  wire \FSM_onehot_state_reg[5] ;
  wire \FSM_onehot_state_reg[6] ;
  wire \FSM_onehot_state_reg[9] ;
  wire \FSM_onehot_state_reg[9]_0 ;
  wire \FSM_sequential_c_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_c_state[0]_i_3_n_0 ;
  wire \FSM_sequential_c_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_c_state[2]_i_3_n_0 ;
  wire [7:0]Q;
  wire ack_in;
  wire bit_controller_n_10;
  wire bit_controller_n_14;
  wire bit_controller_n_3;
  wire bit_controller_n_5;
  wire bit_controller_n_7;
  wire bit_controller_n_8;
  wire bit_controller_n_9;
  wire c_state;
  wire c_state1;
  (* RTL_KEEP = "yes" *) wire [2:0]c_state__0;
  wire clk_out1;
  wire cnt_done;
  wire [1:1]core_cmd;
  wire \core_cmd[0]_i_1_n_0 ;
  wire \core_cmd[1]_i_2_n_0 ;
  wire \core_cmd[2]_i_1_n_0 ;
  wire \core_cmd[2]_i_2_n_0 ;
  wire \core_cmd[3]_i_3_n_0 ;
  wire \core_cmd_reg_n_0_[0] ;
  wire \core_cmd_reg_n_0_[1] ;
  wire \core_cmd_reg_n_0_[2] ;
  wire \core_cmd_reg_n_0_[3] ;
  wire core_txd;
  wire core_txd_reg_n_0;
  wire dcnt;
  wire \dcnt[0]_i_1_n_0 ;
  wire \dcnt[1]_i_1_n_0 ;
  wire \dcnt[2]_i_1_n_0 ;
  wire \dcnt_reg_n_0_[0] ;
  wire \dcnt_reg_n_0_[1] ;
  wire \dcnt_reg_n_0_[2] ;
  wire done;
  wire dscl_oen_reg;
  wire hdmi_scl_IBUF;
  wire hdmi_sda_IBUF;
  wire hdmi_sda_TRI;
  wire i2c_write_req_reg;
  wire irxack;
  wire ld;
  wire ld_reg_n_0;
  wire locked;
  wire [13:0]out;
  wire read_reg;
  wire read_reg_0;
  wire [7:7]rxr;
  wire shift;
  wire shift_reg_n_0;
  wire \sr[1]_i_1_n_0 ;
  wire \sr[2]_i_1_n_0 ;
  wire \sr[3]_i_1_n_0 ;
  wire \sr[4]_i_1_n_0 ;
  wire \sr[5]_i_1_n_0 ;
  wire \sr[6]_i_1_n_0 ;
  wire \sr[7]_i_2_n_0 ;
  wire \sr_reg_n_0_[0] ;
  wire \sr_reg_n_0_[1] ;
  wire \sr_reg_n_0_[2] ;
  wire \sr_reg_n_0_[3] ;
  wire \sr_reg_n_0_[4] ;
  wire \sr_reg_n_0_[5] ;
  wire \sr_reg_n_0_[6] ;
  wire start_reg;
  wire start_reg_0;
  wire stop_reg;
  wire stop_reg_0;
  wire write_reg;
  wire write_reg_0;

  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(done),
        .I3(\FSM_onehot_state_reg[6] ),
        .I4(\FSM_onehot_state_reg[4] ),
        .I5(\FSM_onehot_state_reg[14] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h00000000200A2000)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state_reg[3]_0 ),
        .I1(irxack),
        .I2(done),
        .I3(out[2]),
        .I4(out[9]),
        .I5(\FSM_onehot_state_reg[0] ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(done),
        .I3(out[10]),
        .I4(out[8]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hA0A0A008)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(\FSM_onehot_state_reg[2] ),
        .I1(out[11]),
        .I2(done),
        .I3(out[9]),
        .I4(out[10]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h1000001010000000)) 
    \FSM_onehot_state[14]_i_1 
       (.I0(out[10]),
        .I1(out[9]),
        .I2(\FSM_onehot_state_reg[2] ),
        .I3(done),
        .I4(out[11]),
        .I5(out[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00008820)) 
    \FSM_onehot_state[15]_i_1 
       (.I0(\FSM_onehot_state_reg[11] ),
        .I1(done),
        .I2(out[13]),
        .I3(out[12]),
        .I4(out[11]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hC0E2)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(i2c_write_req_reg),
        .I3(done),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(out[1]),
        .I1(\FSM_onehot_state_reg[3]_0 ),
        .I2(done),
        .I3(out[0]),
        .I4(\FSM_onehot_state_reg[9]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000000F2000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[3]_0 ),
        .I1(\FSM_onehot_state_reg[9]_0 ),
        .I2(out[1]),
        .I3(irxack),
        .I4(done),
        .I5(out[0]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h000004A4)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(out[1]),
        .I1(out[4]),
        .I2(done),
        .I3(irxack),
        .I4(out[0]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[5]),
        .I3(done),
        .I4(out[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h000000000000AAA4)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(done),
        .I1(out[6]),
        .I2(out[4]),
        .I3(out[5]),
        .I4(out[0]),
        .I5(out[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[5]),
        .I3(out[4]),
        .I4(\FSM_onehot_state[7]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h000000FFFFFF00FB)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(out[2]),
        .I1(out[7]),
        .I2(\FSM_onehot_state_reg[14] ),
        .I3(out[3]),
        .I4(out[6]),
        .I5(done),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg[3] ),
        .I1(\FSM_onehot_state[8]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(out[10]),
        .I4(out[11]),
        .I5(\FSM_onehot_state_reg[9] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(done),
        .I1(out[12]),
        .I2(out[13]),
        .I3(out[2]),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FFC0FF10FFD0D0)) 
    \FSM_sequential_c_state[0]_i_2__0 
       (.I0(start_reg_0),
        .I1(c_state__0[0]),
        .I2(read_reg_0),
        .I3(\FSM_sequential_c_state[0]_i_3_n_0 ),
        .I4(c_state__0[1]),
        .I5(c_state__0[2]),
        .O(\FSM_sequential_c_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE0000FF0000)) 
    \FSM_sequential_c_state[0]_i_3 
       (.I0(\dcnt_reg_n_0_[2] ),
        .I1(\dcnt_reg_n_0_[0] ),
        .I2(\dcnt_reg_n_0_[1] ),
        .I3(c_state__0[0]),
        .I4(stop_reg_0),
        .I5(c_state__0[1]),
        .O(\FSM_sequential_c_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_c_state[1]_i_3__0 
       (.I0(start_reg_0),
        .I1(c_state__0[0]),
        .O(\FSM_sequential_c_state[1]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_c_state[1]_i_4 
       (.I0(\dcnt_reg_n_0_[1] ),
        .I1(\dcnt_reg_n_0_[0] ),
        .I2(\dcnt_reg_n_0_[2] ),
        .O(cnt_done));
  LUT5 #(
    .INIT(32'h8888888B)) 
    \FSM_sequential_c_state[2]_i_3 
       (.I0(stop_reg_0),
        .I1(c_state__0[2]),
        .I2(read_reg_0),
        .I3(write_reg_0),
        .I4(start_reg_0),
        .O(\FSM_sequential_c_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_START:001,ST_WRITE:011,ST_READ:010,ST_ACK:100,ST_STOP:101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(bit_controller_n_10),
        .Q(c_state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_START:001,ST_WRITE:011,ST_READ:010,ST_ACK:100,ST_STOP:101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(bit_controller_n_9),
        .Q(c_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_START:001,ST_WRITE:011,ST_READ:010,ST_ACK:100,ST_STOP:101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_c_state_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(bit_controller_n_8),
        .Q(c_state__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ack_out_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(bit_controller_n_5),
        .Q(irxack),
        .R(1'b0));
  i2c_master_bit_ctrl bit_controller
       (.\FSM_sequential_c_state_reg[0]_0 (bit_controller_n_10),
        .\FSM_sequential_c_state_reg[1]_0 (bit_controller_n_9),
        .\FSM_sequential_c_state_reg[2]_0 (bit_controller_n_8),
        .Q(Q[0]),
        .ack_in(ack_in),
        .ack_out_reg(bit_controller_n_5),
        .\cSDA_reg[0]_0 (AR),
        .c_state(c_state),
        .c_state1(c_state1),
        .clk_out1(clk_out1),
        .cmd_ack_reg_0(bit_controller_n_14),
        .cnt_done(cnt_done),
        .\core_cmd_reg[0] (\core_cmd_reg_n_0_[0] ),
        .\core_cmd_reg[1] (\core_cmd_reg_n_0_[1] ),
        .\core_cmd_reg[2] (\core_cmd_reg_n_0_[2] ),
        .\core_cmd_reg[3] (bit_controller_n_3),
        .\core_cmd_reg[3]_0 (\core_cmd_reg_n_0_[3] ),
        .core_txd(core_txd),
        .core_txd_reg(core_txd_reg_n_0),
        .done(done),
        .dscl_oen_reg_0(dscl_oen_reg),
        .hdmi_scl_IBUF(hdmi_scl_IBUF),
        .hdmi_sda_IBUF(hdmi_sda_IBUF),
        .hdmi_sda_TRI(hdmi_sda_TRI),
        .in0(c_state__0),
        .irxack(irxack),
        .ld(ld),
        .ld_reg(ld_reg_n_0),
        .locked(locked),
        .out(c_state__0),
        .read_reg(read_reg_0),
        .rxr(rxr),
        .shift(shift),
        .\sr_reg[0] (bit_controller_n_7),
        .start_reg(\FSM_sequential_c_state[1]_i_3__0_n_0 ),
        .start_reg_0(\FSM_sequential_c_state[0]_i_2__0_n_0 ),
        .stop_reg(stop_reg_0),
        .stop_reg_0(\FSM_sequential_c_state[2]_i_3_n_0 ),
        .write_reg(write_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_ack_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(bit_controller_n_14),
        .Q(done),
        .R(c_state1));
  LUT4 #(
    .INIT(16'h0004)) 
    \core_cmd[0]_i_1 
       (.I0(c_state__0[1]),
        .I1(start_reg_0),
        .I2(c_state__0[0]),
        .I3(c_state__0[2]),
        .O(\core_cmd[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h080808080808080B)) 
    \core_cmd[1]_i_1 
       (.I0(stop_reg_0),
        .I1(c_state__0[2]),
        .I2(c_state__0[0]),
        .I3(start_reg_0),
        .I4(\core_cmd[1]_i_2_n_0 ),
        .I5(c_state__0[1]),
        .O(core_cmd));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \core_cmd[1]_i_2 
       (.I0(read_reg_0),
        .I1(write_reg_0),
        .O(\core_cmd[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002EE2)) 
    \core_cmd[2]_i_1 
       (.I0(\core_cmd[2]_i_2_n_0 ),
        .I1(c_state__0[1]),
        .I2(c_state__0[0]),
        .I3(cnt_done),
        .I4(c_state__0[2]),
        .O(\core_cmd[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2232)) 
    \core_cmd[2]_i_2 
       (.I0(c_state__0[0]),
        .I1(read_reg_0),
        .I2(write_reg_0),
        .I3(start_reg_0),
        .O(\core_cmd[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F0C40FC4)) 
    \core_cmd[3]_i_3 
       (.I0(start_reg_0),
        .I1(read_reg_0),
        .I2(c_state__0[0]),
        .I3(c_state__0[1]),
        .I4(cnt_done),
        .I5(c_state__0[2]),
        .O(\core_cmd[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \core_cmd_reg[0] 
       (.C(clk_out1),
        .CE(c_state),
        .D(\core_cmd[0]_i_1_n_0 ),
        .Q(\core_cmd_reg_n_0_[0] ),
        .R(bit_controller_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \core_cmd_reg[1] 
       (.C(clk_out1),
        .CE(c_state),
        .D(core_cmd),
        .Q(\core_cmd_reg_n_0_[1] ),
        .R(bit_controller_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \core_cmd_reg[2] 
       (.C(clk_out1),
        .CE(c_state),
        .D(\core_cmd[2]_i_1_n_0 ),
        .Q(\core_cmd_reg_n_0_[2] ),
        .R(bit_controller_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \core_cmd_reg[3] 
       (.C(clk_out1),
        .CE(c_state),
        .D(\core_cmd[3]_i_3_n_0 ),
        .Q(\core_cmd_reg_n_0_[3] ),
        .R(bit_controller_n_3));
  FDRE #(
    .INIT(1'b0)) 
    core_txd_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(core_txd),
        .Q(core_txd_reg_n_0),
        .R(c_state1));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8CC8)) 
    \dcnt[0]_i_1 
       (.I0(ld_reg_n_0),
        .I1(locked),
        .I2(shift_reg_n_0),
        .I3(\dcnt_reg_n_0_[0] ),
        .O(\dcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hE0F0D0C0)) 
    \dcnt[1]_i_1 
       (.I0(\dcnt_reg_n_0_[0] ),
        .I1(ld_reg_n_0),
        .I2(locked),
        .I3(shift_reg_n_0),
        .I4(\dcnt_reg_n_0_[1] ),
        .O(\dcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FF00F100F000)) 
    \dcnt[2]_i_1 
       (.I0(\dcnt_reg_n_0_[1] ),
        .I1(\dcnt_reg_n_0_[0] ),
        .I2(ld_reg_n_0),
        .I3(locked),
        .I4(shift_reg_n_0),
        .I5(\dcnt_reg_n_0_[2] ),
        .O(\dcnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dcnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dcnt[0]_i_1_n_0 ),
        .Q(\dcnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dcnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dcnt[1]_i_1_n_0 ),
        .Q(\dcnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dcnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\dcnt[2]_i_1_n_0 ),
        .Q(\dcnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ld_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(ld),
        .Q(ld_reg_n_0),
        .R(c_state1));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h54)) 
    read_i_1
       (.I0(done),
        .I1(out[12]),
        .I2(read_reg_0),
        .O(read_reg));
  FDRE #(
    .INIT(1'b0)) 
    shift_reg
       (.C(clk_out1),
        .CE(1'b1),
        .D(shift),
        .Q(shift_reg_n_0),
        .R(c_state1));
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[1]_i_1 
       (.I0(Q[1]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[0] ),
        .O(\sr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[2]_i_1 
       (.I0(Q[2]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[1] ),
        .O(\sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[3]_i_1 
       (.I0(Q[3]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[2] ),
        .O(\sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[4]_i_1 
       (.I0(Q[4]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[3] ),
        .O(\sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[5]_i_1 
       (.I0(Q[5]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[4] ),
        .O(\sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[6]_i_1 
       (.I0(Q[6]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[5] ),
        .O(\sr[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \sr[7]_i_1 
       (.I0(ld_reg_n_0),
        .I1(shift_reg_n_0),
        .O(dcnt));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sr[7]_i_2 
       (.I0(Q[7]),
        .I1(ld_reg_n_0),
        .I2(\sr_reg_n_0_[6] ),
        .O(\sr[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[0] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(bit_controller_n_7),
        .Q(\sr_reg_n_0_[0] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[1] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[1]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[1] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[2] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[2]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[2] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[3] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[3]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[3] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[4] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[4]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[4] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[5] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[5]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[5] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[6] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[6]_i_1_n_0 ),
        .Q(\sr_reg_n_0_[6] ),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \sr_reg[7] 
       (.C(clk_out1),
        .CE(dcnt),
        .D(\sr[7]_i_2_n_0 ),
        .Q(rxr),
        .R(AR));
  LUT5 #(
    .INIT(32'h55555554)) 
    start_i_1
       (.I0(done),
        .I1(out[2]),
        .I2(out[11]),
        .I3(out[1]),
        .I4(start_reg_0),
        .O(start_reg));
  LUT4 #(
    .INIT(16'h5554)) 
    stop_i_1
       (.I0(done),
        .I1(out[13]),
        .I2(out[7]),
        .I3(stop_reg_0),
        .O(stop_reg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h51)) 
    write_i_1
       (.I0(done),
        .I1(\FSM_onehot_state_reg[5] ),
        .I2(write_reg_0),
        .O(write_reg));
endmodule

module i2c_master_top
   (dscl_oen_reg,
    \cSDA_reg[0] ,
    hdmi_sda_TRI,
    i2c_write_req_reg,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[0] ,
    E,
    clk_out1,
    locked,
    out,
    i2c_write_req_reg_0,
    Q,
    in0,
    hdmi_scl_IBUF,
    hdmi_sda_IBUF);
  output dscl_oen_reg;
  output \cSDA_reg[0] ;
  output hdmi_sda_TRI;
  output i2c_write_req_reg;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[0] ;
  output [0:0]E;
  input clk_out1;
  input locked;
  input [1:0]out;
  input i2c_write_req_reg_0;
  input [9:0]Q;
  input [1:0]in0;
  input hdmi_scl_IBUF;
  input hdmi_sda_IBUF;

  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_4_n_0 ;
  wire \FSM_onehot_state[11]_i_2_n_0 ;
  wire \FSM_onehot_state[11]_i_3_n_0 ;
  wire \FSM_onehot_state[12]_i_2_n_0 ;
  wire \FSM_onehot_state[12]_i_3_n_0 ;
  wire \FSM_onehot_state[14]_i_2_n_0 ;
  wire \FSM_onehot_state[14]_i_3_n_0 ;
  wire \FSM_onehot_state[15]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[8]_i_3_n_0 ;
  wire \FSM_onehot_state[8]_i_4_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[15] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[9] ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire [9:0]Q;
  wire ack_in;
  wire byte_controller_n_10;
  wire byte_controller_n_11;
  wire byte_controller_n_12;
  wire byte_controller_n_13;
  wire byte_controller_n_14;
  wire byte_controller_n_15;
  wire byte_controller_n_16;
  wire byte_controller_n_17;
  wire byte_controller_n_18;
  wire byte_controller_n_19;
  wire byte_controller_n_2;
  wire byte_controller_n_3;
  wire byte_controller_n_4;
  wire byte_controller_n_5;
  wire byte_controller_n_6;
  wire byte_controller_n_7;
  wire byte_controller_n_8;
  wire byte_controller_n_9;
  wire \cSDA_reg[0] ;
  wire clk_out1;
  wire dscl_oen_reg;
  wire hdmi_scl_IBUF;
  wire hdmi_sda_IBUF;
  wire hdmi_sda_TRI;
  (* RTL_KEEP = "yes" *) wire i2c_write_req_ack;
  wire i2c_write_req_reg;
  wire i2c_write_req_reg_0;
  wire [1:0]in0;
  wire locked;
  wire [13:13]lut_data;
  wire [1:0]out;
  (* RTL_KEEP = "yes" *) wire p_0_in1_in;
  (* RTL_KEEP = "yes" *) wire p_1_in;
  (* RTL_KEEP = "yes" *) wire p_3_in4_in;
  (* RTL_KEEP = "yes" *) wire p_4_in;
  (* RTL_KEEP = "yes" *) wire p_5_in;
  (* RTL_KEEP = "yes" *) wire p_6_in;
  (* RTL_KEEP = "yes" *) wire read;
  wire read_reg_n_0;
  wire start_reg_n_0;
  wire stop_reg_n_0;
  wire [7:0]txr;
  wire \txr[0]_i_2_n_0 ;
  wire \txr[0]_i_4_n_0 ;
  wire \txr[5]_i_2_n_0 ;
  wire \txr[5]_i_3_n_0 ;
  wire \txr[7]_i_2_n_0 ;
  wire [7:0]txr_0;
  wire write_i_2_n_0;
  wire write_i_3_n_0;
  wire write_reg_n_0;

  LUT6 #(
    .INIT(64'h4444444447444444)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(i2c_write_req_reg_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(i2c_write_req_ack),
        .I3(\FSM_onehot_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_state[11]_i_2_n_0 ),
        .I5(p_0_in1_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(p_3_in4_in),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(p_1_in),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(p_0_in1_in),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_4 
       (.I0(\FSM_onehot_state[8]_i_4_n_0 ),
        .I1(read),
        .I2(\FSM_onehot_state_reg_n_0_[15] ),
        .I3(p_6_in),
        .I4(p_4_in),
        .O(\FSM_onehot_state[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_onehot_state[11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[11]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[9] ),
        .I3(i2c_write_req_ack),
        .O(\FSM_onehot_state[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[12]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[12]_i_3 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_5_in),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(i2c_write_req_ack),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_onehot_state[14]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_state[14]_i_3_n_0 ),
        .I5(\FSM_onehot_state[11]_i_3_n_0 ),
        .O(\FSM_onehot_state[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[14]_i_3 
       (.I0(p_1_in),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_state[15]_i_3 
       (.I0(\FSM_onehot_state[14]_i_2_n_0 ),
        .I1(p_5_in),
        .I2(p_6_in),
        .O(\FSM_onehot_state[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(i2c_write_req_ack),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[8]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(i2c_write_req_ack),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(p_5_in),
        .O(\FSM_onehot_state[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000000A8)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(\FSM_onehot_state[12]_i_2_n_0 ),
        .I1(i2c_write_req_ack),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(p_0_in1_in),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\cSDA_reg[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_11),
        .Q(i2c_write_req_ack));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_10),
        .Q(p_5_in));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_9),
        .Q(p_6_in));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_8),
        .Q(p_4_in));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_7),
        .Q(read));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_6),
        .Q(\FSM_onehot_state_reg_n_0_[15] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_19),
        .Q(p_0_in1_in));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_18),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_17),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_16),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_15),
        .Q(p_1_in));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_14),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_13),
        .Q(p_3_in4_in));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_12),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "S_IDLE:0000000000000001,S_WR_DEV_ADDR:0000000000000010,S_WR_REG_ADDR:0000000000010000,S_WR_REG_ADDR1:0000000000100000,S_WR_DATA:0000000001000000,S_WR_ERR_NACK:0000000000001000,S_RD_ACK:0000000100000000,S_WR_ACK:0000010000000000,S_WAIT:0000001000000000,S_RD_DEV_ADDR0:0000000000000100,S_RD_REG_ADDR:0000100000000000,S_RD_REG_ADDR1:0001000000000000,S_RD_DEV_ADDR1:0010000000000000,S_RD_DATA:0100000000000000,S_RD_STOP:1000000000000000,S_WR_STOP:0000000010000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hEFEFEFE3)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(i2c_write_req_ack),
        .I4(in0[0]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_3_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[7]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hCECC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(i2c_write_req_ack),
        .I3(in0[1]),
        .O(\FSM_sequential_state_reg[1] ));
  FDCE #(
    .INIT(1'b0)) 
    ack_in_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(1'b1),
        .Q(ack_in));
  i2c_master_byte_ctrl byte_controller
       (.AR(\cSDA_reg[0] ),
        .D({byte_controller_n_6,byte_controller_n_7,byte_controller_n_8,byte_controller_n_9,byte_controller_n_10,byte_controller_n_11,byte_controller_n_12,byte_controller_n_13,byte_controller_n_14,byte_controller_n_15,byte_controller_n_16,byte_controller_n_17,byte_controller_n_18,byte_controller_n_19}),
        .\FSM_onehot_state_reg[0] (\FSM_onehot_state[11]_i_3_n_0 ),
        .\FSM_onehot_state_reg[11] (\FSM_onehot_state[15]_i_3_n_0 ),
        .\FSM_onehot_state_reg[14] (\FSM_onehot_state[10]_i_4_n_0 ),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state[12]_i_3_n_0 ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state[8]_i_3_n_0 ),
        .\FSM_onehot_state_reg[2] (\FSM_onehot_state[14]_i_2_n_0 ),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state[12]_i_2_n_0 ),
        .\FSM_onehot_state_reg[3]_0 (\FSM_onehot_state[11]_i_2_n_0 ),
        .\FSM_onehot_state_reg[4] (\FSM_onehot_state[10]_i_3_n_0 ),
        .\FSM_onehot_state_reg[5] (write_i_2_n_0),
        .\FSM_onehot_state_reg[6] (\FSM_onehot_state[10]_i_2_n_0 ),
        .\FSM_onehot_state_reg[9] (\FSM_onehot_state[8]_i_4_n_0 ),
        .\FSM_onehot_state_reg[9]_0 (\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(txr),
        .ack_in(ack_in),
        .clk_out1(clk_out1),
        .dscl_oen_reg(dscl_oen_reg),
        .hdmi_scl_IBUF(hdmi_scl_IBUF),
        .hdmi_sda_IBUF(hdmi_sda_IBUF),
        .hdmi_sda_TRI(hdmi_sda_TRI),
        .i2c_write_req_reg(i2c_write_req_reg_0),
        .locked(locked),
        .out({\FSM_onehot_state_reg_n_0_[15] ,read,p_4_in,p_6_in,p_5_in,\FSM_onehot_state_reg_n_0_[9] ,p_3_in4_in,\FSM_onehot_state_reg_n_0_[6] ,p_1_in,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,p_0_in1_in,\FSM_onehot_state_reg_n_0_[0] }),
        .read_reg(byte_controller_n_2),
        .read_reg_0(read_reg_n_0),
        .start_reg(byte_controller_n_3),
        .start_reg_0(start_reg_n_0),
        .stop_reg(byte_controller_n_4),
        .stop_reg_0(stop_reg_n_0),
        .write_reg(byte_controller_n_5),
        .write_reg_0(write_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFF3FFF10100000)) 
    i2c_write_req_i_1
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(out[1]),
        .I2(locked),
        .I3(i2c_write_req_ack),
        .I4(out[0]),
        .I5(i2c_write_req_reg_0),
        .O(i2c_write_req_reg));
  LUT3 #(
    .INIT(8'h45)) 
    \lut_index[9]_i_1 
       (.I0(out[0]),
        .I1(i2c_write_req_ack),
        .I2(out[1]),
        .O(E));
  FDCE #(
    .INIT(1'b0)) 
    read_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_2),
        .Q(read_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_3),
        .Q(start_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    stop_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_4),
        .Q(stop_reg_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEFA)) 
    \txr[0]_i_1 
       (.I0(\txr[0]_i_2_n_0 ),
        .I1(lut_data),
        .I2(p_4_in),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(p_1_in),
        .I5(\txr[0]_i_4_n_0 ),
        .O(txr_0[0]));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \txr[0]_i_2 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\txr[7]_i_2_n_0 ),
        .O(\txr[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \txr[0]_i_3 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(Q[0]),
        .O(lut_data));
  LUT2 #(
    .INIT(4'hE)) 
    \txr[0]_i_4 
       (.I0(p_6_in),
        .I1(p_5_in),
        .O(\txr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF5FC)) 
    \txr[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(Q[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\txr[5]_i_2_n_0 ),
        .I4(\txr[5]_i_3_n_0 ),
        .O(txr_0[1]));
  LUT5 #(
    .INIT(32'hCDEFFFEE)) 
    \txr[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(\txr[5]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(\txr[5]_i_2_n_0 ),
        .O(txr_0[2]));
  LUT5 #(
    .INIT(32'hFFF3FF77)) 
    \txr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\txr[5]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\txr[5]_i_3_n_0 ),
        .O(txr_0[3]));
  LUT5 #(
    .INIT(32'hFFFF2EFE)) 
    \txr[4]_i_1 
       (.I0(\txr[5]_i_3_n_0 ),
        .I1(\txr[7]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(Q[0]),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(txr_0[4]));
  LUT5 #(
    .INIT(32'hFFFFF7FE)) 
    \txr[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(Q[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\txr[5]_i_2_n_0 ),
        .I4(\txr[5]_i_3_n_0 ),
        .O(txr_0[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \txr[5]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(p_1_in),
        .I2(p_5_in),
        .I3(p_6_in),
        .O(\txr[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \txr[5]_i_3 
       (.I0(p_4_in),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\txr[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFFFFFFC)) 
    \txr[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(p_0_in1_in),
        .I3(p_4_in),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\txr[7]_i_2_n_0 ),
        .O(txr_0[6]));
  LUT3 #(
    .INIT(8'hBA)) 
    \txr[7]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\txr[7]_i_2_n_0 ),
        .O(txr_0[7]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \txr[7]_i_2 
       (.I0(p_6_in),
        .I1(p_5_in),
        .I2(\FSM_onehot_state[14]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(p_0_in1_in),
        .I5(p_4_in),
        .O(\txr[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[0]),
        .Q(txr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[1]),
        .Q(txr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[2]),
        .Q(txr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[3]),
        .Q(txr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[4]),
        .Q(txr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[5]),
        .Q(txr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[6]),
        .Q(txr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \txr_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(txr_0[7]),
        .Q(txr[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    write_i_2
       (.I0(write_i_3_n_0),
        .I1(p_1_in),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(p_5_in),
        .I5(p_6_in),
        .O(write_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    write_i_3
       (.I0(p_0_in1_in),
        .I1(p_4_in),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(write_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    write_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(\cSDA_reg[0] ),
        .D(byte_controller_n_5),
        .Q(write_reg_n_0));
endmodule

(* NotValidForBitStream *)
module src
   (sys_clk,
    hdmi_vs,
    hdmi_hs,
    hdmi_de,
    hdmi_clk,
    hdmi_r,
    hdmi_g,
    hdmi_b,
    hdmi_rst_n,
    hdmi_scl,
    hdmi_sda);
  (* CLOCK_BUFFER_TYPE = "none" *) input sys_clk;
  output hdmi_vs;
  output hdmi_hs;
  output hdmi_de;
  output hdmi_clk;
  output [7:0]hdmi_r;
  output [7:0]hdmi_g;
  output [7:0]hdmi_b;
  output hdmi_rst_n;
  inout hdmi_scl;
  inout hdmi_sda;

  wire cfg_clk;
  wire [7:0]hdmi_b;
  wire [0:0]hdmi_b_OBUF;
  wire hdmi_clk;
  wire hdmi_clk_OBUF;
  wire hdmi_de;
  wire hdmi_de_OBUF;
  wire [7:0]hdmi_g;
  wire hdmi_hs;
  wire hdmi_hs_OBUF;
  wire hdmi_image_gen_n_3;
  wire hdmi_image_gen_n_4;
  wire hdmi_image_gen_n_5;
  wire [7:0]hdmi_r;
  wire hdmi_rst_n;
  wire hdmi_rst_n_OBUF;
  wire hdmi_scl;
  wire hdmi_scl_IBUF;
  wire hdmi_scl_TRI;
  wire hdmi_sda;
  wire hdmi_sda_IBUF;
  wire hdmi_sda_TRI;
  wire hdmi_vs;
  wire hdmi_vs_OBUF;
  wire hdmi_vs_OBUF_BUFG;
  wire n_0_396;
  wire n_0_405;
  wire \rgb_r[7]_i_34_n_0 ;
  wire \rgb_r[7]_i_43_n_0 ;
  wire \rgb_r[7]_i_44_n_0 ;
  (* IBUF_LOW_PWR *) wire sys_clk;

  OBUF \hdmi_b_OBUF[0]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[0]));
  OBUF \hdmi_b_OBUF[1]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[1]));
  OBUF \hdmi_b_OBUF[2]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[2]));
  OBUF \hdmi_b_OBUF[3]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[3]));
  OBUF \hdmi_b_OBUF[4]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[4]));
  OBUF \hdmi_b_OBUF[5]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[5]));
  OBUF \hdmi_b_OBUF[6]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[6]));
  OBUF \hdmi_b_OBUF[7]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_b[7]));
  OBUF hdmi_clk_OBUF_inst
       (.I(hdmi_clk_OBUF),
        .O(hdmi_clk));
  OBUF hdmi_de_OBUF_inst
       (.I(hdmi_de_OBUF),
        .O(hdmi_de));
  OBUF \hdmi_g_OBUF[0]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[0]));
  OBUF \hdmi_g_OBUF[1]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[1]));
  OBUF \hdmi_g_OBUF[2]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[2]));
  OBUF \hdmi_g_OBUF[3]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[3]));
  OBUF \hdmi_g_OBUF[4]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[4]));
  OBUF \hdmi_g_OBUF[5]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[5]));
  OBUF \hdmi_g_OBUF[6]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[6]));
  OBUF \hdmi_g_OBUF[7]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_g[7]));
  OBUF hdmi_hs_OBUF_inst
       (.I(hdmi_hs_OBUF),
        .O(hdmi_hs));
  src_gen hdmi_image_gen
       (.O({hdmi_image_gen_n_3,hdmi_image_gen_n_4}),
        .S({\rgb_r[7]_i_43_n_0 ,\rgb_r[7]_i_44_n_0 }),
        .clk_out2(hdmi_clk_OBUF),
        .\frame_h_cnt_reg[8]_0 (\rgb_r[7]_i_34_n_0 ),
        .hdmi_b_OBUF(hdmi_b_OBUF),
        .hdmi_de_OBUF(hdmi_de_OBUF),
        .hdmi_hs_OBUF(hdmi_hs_OBUF),
        .hdmi_vs_OBUF(hdmi_vs_OBUF),
        .hdmi_vs_OBUF_BUFG(hdmi_vs_OBUF_BUFG),
        .\rgb_r_reg[7]_0 (hdmi_image_gen_n_5));
  OBUF \hdmi_r_OBUF[0]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[0]));
  OBUF \hdmi_r_OBUF[1]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[1]));
  OBUF \hdmi_r_OBUF[2]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[2]));
  OBUF \hdmi_r_OBUF[3]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[3]));
  OBUF \hdmi_r_OBUF[4]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[4]));
  OBUF \hdmi_r_OBUF[5]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[5]));
  OBUF \hdmi_r_OBUF[6]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[6]));
  OBUF \hdmi_r_OBUF[7]_inst 
       (.I(hdmi_b_OBUF),
        .O(hdmi_r[7]));
  OBUF hdmi_rst_n_OBUF_inst
       (.I(hdmi_rst_n_OBUF),
        .O(hdmi_rst_n));
  IOBUF hdmi_scl_IOBUF_inst
       (.I(1'b0),
        .IO(hdmi_scl),
        .O(hdmi_scl_IBUF),
        .T(hdmi_scl_TRI));
  IOBUF hdmi_sda_IOBUF_inst
       (.I(1'b0),
        .IO(hdmi_sda),
        .O(hdmi_sda_IBUF),
        .T(hdmi_sda_TRI));
  BUFG hdmi_vs_OBUF_BUFG_inst
       (.I(hdmi_vs_OBUF),
        .O(hdmi_vs_OBUF_BUFG));
  OBUF hdmi_vs_OBUF_inst
       (.I(hdmi_vs_OBUF_BUFG),
        .O(hdmi_vs));
  i2c_config i2c_config_m0
       (.clk_out1(cfg_clk),
        .hdmi_scl_IBUF(hdmi_scl_IBUF),
        .hdmi_scl_TRI(hdmi_scl_TRI),
        .hdmi_sda_IBUF(hdmi_sda_IBUF),
        .hdmi_sda_TRI(hdmi_sda_TRI),
        .locked(hdmi_rst_n_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_396
       (.I0(hdmi_rst_n_OBUF),
        .O(n_0_396));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    i_405
       (.I0(hdmi_rst_n_OBUF),
        .O(n_0_405));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_34 
       (.I0(hdmi_image_gen_n_5),
        .O(\rgb_r[7]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_43 
       (.I0(hdmi_image_gen_n_3),
        .O(\rgb_r[7]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_44 
       (.I0(hdmi_image_gen_n_4),
        .O(\rgb_r[7]_i_44_n_0 ));
  sys_clk sys_clk_u0
       (.clk_in1(sys_clk),
        .clk_out1(cfg_clk),
        .clk_out2(hdmi_clk_OBUF),
        .locked(hdmi_rst_n_OBUF));
endmodule

module src_gen
   (hdmi_hs_OBUF,
    hdmi_de_OBUF,
    hdmi_b_OBUF,
    O,
    \rgb_r_reg[7]_0 ,
    hdmi_vs_OBUF,
    clk_out2,
    hdmi_vs_OBUF_BUFG,
    S,
    \frame_h_cnt_reg[8]_0 );
  output hdmi_hs_OBUF;
  output hdmi_de_OBUF;
  output [0:0]hdmi_b_OBUF;
  output [1:0]O;
  output [0:0]\rgb_r_reg[7]_0 ;
  output hdmi_vs_OBUF;
  input clk_out2;
  input hdmi_vs_OBUF_BUFG;
  input [1:0]S;
  input [0:0]\frame_h_cnt_reg[8]_0 ;

  wire [1:0]O;
  wire [16:1]PCOUT;
  wire [1:0]S;
  wire _carry__0_i_10_n_0;
  wire _carry__0_i_11_n_0;
  wire _carry__0_i_12_n_0;
  wire _carry__0_i_13_n_0;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_i_5_n_0;
  wire _carry__0_i_6_n_0;
  wire _carry__0_i_7_n_0;
  wire _carry__0_i_8_n_0;
  wire _carry__0_i_9_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_i_5_n_0;
  wire _carry__1_i_6_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry_i_10_n_0;
  wire _carry_i_11_n_0;
  wire _carry_i_12_n_0;
  wire _carry_i_13_n_0;
  wire _carry_i_14_n_0;
  wire _carry_i_15_n_0;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_i_6_n_0;
  wire _carry_i_7_n_0;
  wire _carry_i_8_n_0;
  wire _carry_i_9_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire clk_out2;
  wire [11:1]data0;
  wire de0;
  wire [11:0]frame_h_cnt;
  wire \frame_h_cnt[11]_i_1_n_0 ;
  wire \frame_h_cnt[11]_i_3_n_0 ;
  wire \frame_h_cnt[11]_i_4_n_0 ;
  wire \frame_h_cnt_reg[11]_i_2_n_2 ;
  wire \frame_h_cnt_reg[11]_i_2_n_3 ;
  wire \frame_h_cnt_reg[11]_i_2_n_5 ;
  wire \frame_h_cnt_reg[11]_i_2_n_6 ;
  wire \frame_h_cnt_reg[11]_i_2_n_7 ;
  wire \frame_h_cnt_reg[4]_i_1_n_0 ;
  wire \frame_h_cnt_reg[4]_i_1_n_1 ;
  wire \frame_h_cnt_reg[4]_i_1_n_2 ;
  wire \frame_h_cnt_reg[4]_i_1_n_3 ;
  wire \frame_h_cnt_reg[4]_i_1_n_4 ;
  wire \frame_h_cnt_reg[4]_i_1_n_5 ;
  wire \frame_h_cnt_reg[4]_i_1_n_6 ;
  wire \frame_h_cnt_reg[4]_i_1_n_7 ;
  wire [0:0]\frame_h_cnt_reg[8]_0 ;
  wire \frame_h_cnt_reg[8]_i_1_n_0 ;
  wire \frame_h_cnt_reg[8]_i_1_n_1 ;
  wire \frame_h_cnt_reg[8]_i_1_n_2 ;
  wire \frame_h_cnt_reg[8]_i_1_n_3 ;
  wire \frame_h_cnt_reg[8]_i_1_n_4 ;
  wire \frame_h_cnt_reg[8]_i_1_n_5 ;
  wire \frame_h_cnt_reg[8]_i_1_n_6 ;
  wire \frame_h_cnt_reg[8]_i_1_n_7 ;
  wire \frame_s_cnt[0]_i_1_n_0 ;
  wire \frame_s_cnt[11]_i_1_n_0 ;
  wire \frame_s_cnt[11]_i_3_n_0 ;
  wire \frame_s_cnt[11]_i_4_n_0 ;
  wire \frame_s_cnt_reg[11]_i_2_n_2 ;
  wire \frame_s_cnt_reg[11]_i_2_n_3 ;
  wire \frame_s_cnt_reg[11]_i_2_n_5 ;
  wire \frame_s_cnt_reg[11]_i_2_n_6 ;
  wire \frame_s_cnt_reg[11]_i_2_n_7 ;
  wire \frame_s_cnt_reg[4]_i_1_n_0 ;
  wire \frame_s_cnt_reg[4]_i_1_n_1 ;
  wire \frame_s_cnt_reg[4]_i_1_n_2 ;
  wire \frame_s_cnt_reg[4]_i_1_n_3 ;
  wire \frame_s_cnt_reg[4]_i_1_n_4 ;
  wire \frame_s_cnt_reg[4]_i_1_n_5 ;
  wire \frame_s_cnt_reg[4]_i_1_n_6 ;
  wire \frame_s_cnt_reg[4]_i_1_n_7 ;
  wire \frame_s_cnt_reg[8]_i_1_n_0 ;
  wire \frame_s_cnt_reg[8]_i_1_n_1 ;
  wire \frame_s_cnt_reg[8]_i_1_n_2 ;
  wire \frame_s_cnt_reg[8]_i_1_n_3 ;
  wire \frame_s_cnt_reg[8]_i_1_n_4 ;
  wire \frame_s_cnt_reg[8]_i_1_n_5 ;
  wire \frame_s_cnt_reg[8]_i_1_n_6 ;
  wire \frame_s_cnt_reg[8]_i_1_n_7 ;
  wire \frame_s_cnt_reg_n_0_[0] ;
  wire \frame_s_cnt_reg_n_0_[10] ;
  wire \frame_s_cnt_reg_n_0_[11] ;
  wire \frame_s_cnt_reg_n_0_[1] ;
  wire \frame_s_cnt_reg_n_0_[2] ;
  wire \frame_s_cnt_reg_n_0_[3] ;
  wire \frame_s_cnt_reg_n_0_[4] ;
  wire \frame_s_cnt_reg_n_0_[5] ;
  wire \frame_s_cnt_reg_n_0_[6] ;
  wire \frame_s_cnt_reg_n_0_[7] ;
  wire \frame_s_cnt_reg_n_0_[8] ;
  wire \frame_s_cnt_reg_n_0_[9] ;
  wire \frame_v_cnt[0]_i_2_n_0 ;
  wire [11:0]frame_v_cnt_reg;
  wire \frame_v_cnt_reg[0]_i_1_n_0 ;
  wire \frame_v_cnt_reg[0]_i_1_n_1 ;
  wire \frame_v_cnt_reg[0]_i_1_n_2 ;
  wire \frame_v_cnt_reg[0]_i_1_n_3 ;
  wire \frame_v_cnt_reg[0]_i_1_n_4 ;
  wire \frame_v_cnt_reg[0]_i_1_n_5 ;
  wire \frame_v_cnt_reg[0]_i_1_n_6 ;
  wire \frame_v_cnt_reg[0]_i_1_n_7 ;
  wire \frame_v_cnt_reg[4]_i_1_n_0 ;
  wire \frame_v_cnt_reg[4]_i_1_n_1 ;
  wire \frame_v_cnt_reg[4]_i_1_n_2 ;
  wire \frame_v_cnt_reg[4]_i_1_n_3 ;
  wire \frame_v_cnt_reg[4]_i_1_n_4 ;
  wire \frame_v_cnt_reg[4]_i_1_n_5 ;
  wire \frame_v_cnt_reg[4]_i_1_n_6 ;
  wire \frame_v_cnt_reg[4]_i_1_n_7 ;
  wire \frame_v_cnt_reg[8]_i_1_n_1 ;
  wire \frame_v_cnt_reg[8]_i_1_n_2 ;
  wire \frame_v_cnt_reg[8]_i_1_n_3 ;
  wire \frame_v_cnt_reg[8]_i_1_n_4 ;
  wire \frame_v_cnt_reg[8]_i_1_n_5 ;
  wire \frame_v_cnt_reg[8]_i_1_n_6 ;
  wire \frame_v_cnt_reg[8]_i_1_n_7 ;
  wire h_active_i_1_n_0;
  wire h_active_i_2_n_0;
  wire h_active_i_3_n_0;
  wire h_active_reg_n_0;
  wire \h_cnt[0]_i_1_n_0 ;
  wire \h_cnt[11]_i_1_n_0 ;
  wire \h_cnt[11]_i_3_n_0 ;
  wire \h_cnt_reg[11]_i_2_n_2 ;
  wire \h_cnt_reg[11]_i_2_n_3 ;
  wire \h_cnt_reg[4]_i_1_n_0 ;
  wire \h_cnt_reg[4]_i_1_n_1 ;
  wire \h_cnt_reg[4]_i_1_n_2 ;
  wire \h_cnt_reg[4]_i_1_n_3 ;
  wire \h_cnt_reg[8]_i_1_n_0 ;
  wire \h_cnt_reg[8]_i_1_n_1 ;
  wire \h_cnt_reg[8]_i_1_n_2 ;
  wire \h_cnt_reg[8]_i_1_n_3 ;
  wire \h_cnt_reg_n_0_[0] ;
  wire \h_cnt_reg_n_0_[10] ;
  wire \h_cnt_reg_n_0_[11] ;
  wire \h_cnt_reg_n_0_[1] ;
  wire \h_cnt_reg_n_0_[2] ;
  wire \h_cnt_reg_n_0_[3] ;
  wire \h_cnt_reg_n_0_[4] ;
  wire \h_cnt_reg_n_0_[5] ;
  wire \h_cnt_reg_n_0_[6] ;
  wire \h_cnt_reg_n_0_[7] ;
  wire \h_cnt_reg_n_0_[8] ;
  wire \h_cnt_reg_n_0_[9] ;
  wire [0:0]hdmi_b_OBUF;
  wire hdmi_de_OBUF;
  wire hdmi_hs_OBUF;
  wire hdmi_vs_OBUF;
  wire hdmi_vs_OBUF_BUFG;
  wire hs;
  wire hs_i_1_n_0;
  wire hs_i_2_n_0;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__2_n_1;
  wire i__carry__0_i_1__2_n_2;
  wire i__carry__0_i_1__2_n_3;
  wire i__carry__0_i_1__2_n_4;
  wire i__carry__0_i_1__2_n_6;
  wire i__carry__0_i_1__2_n_7;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4__1_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5__1_n_0;
  wire i__carry__0_i_5__2_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6__1_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1__0_n_1;
  wire i__carry__1_i_1__0_n_2;
  wire i__carry__1_i_1__0_n_3;
  wire i__carry__1_i_1__0_n_4;
  wire i__carry__1_i_1__0_n_5;
  wire i__carry__1_i_1__0_n_6;
  wire i__carry__1_i_1__0_n_7;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__2_i_1__0_n_2;
  wire i__carry__2_i_1__0_n_7;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__2_n_1;
  wire i__carry_i_1__2_n_2;
  wire i__carry_i_1__2_n_3;
  wire i__carry_i_1__2_n_4;
  wire i__carry_i_1__2_n_6;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire rgb_r03_out;
  wire rgb_r1;
  wire rgb_r11_in;
  wire rgb_r1_carry__0_i_1_n_0;
  wire rgb_r1_carry__0_i_2_n_0;
  wire rgb_r1_carry__0_i_3_n_0;
  wire rgb_r1_carry__0_i_4_n_0;
  wire rgb_r1_carry__0_n_0;
  wire rgb_r1_carry__0_n_1;
  wire rgb_r1_carry__0_n_2;
  wire rgb_r1_carry__0_n_3;
  wire rgb_r1_carry__1_i_1_n_0;
  wire rgb_r1_carry__1_i_2_n_0;
  wire rgb_r1_carry__1_i_3_n_0;
  wire rgb_r1_carry__1_n_1;
  wire rgb_r1_carry__1_n_2;
  wire rgb_r1_carry__1_n_3;
  wire rgb_r1_carry_i_10_n_0;
  wire rgb_r1_carry_i_11_n_0;
  wire rgb_r1_carry_i_12_n_0;
  wire rgb_r1_carry_i_13_n_0;
  wire rgb_r1_carry_i_14_n_0;
  wire rgb_r1_carry_i_15_n_0;
  wire rgb_r1_carry_i_1_n_0;
  wire rgb_r1_carry_i_2_n_0;
  wire rgb_r1_carry_i_3_n_0;
  wire rgb_r1_carry_i_4_n_0;
  wire rgb_r1_carry_i_5_n_0;
  wire rgb_r1_carry_i_5_n_2;
  wire rgb_r1_carry_i_5_n_3;
  wire rgb_r1_carry_i_6_n_0;
  wire rgb_r1_carry_i_6_n_1;
  wire rgb_r1_carry_i_6_n_2;
  wire rgb_r1_carry_i_6_n_3;
  wire rgb_r1_carry_i_7_n_0;
  wire rgb_r1_carry_i_7_n_1;
  wire rgb_r1_carry_i_7_n_2;
  wire rgb_r1_carry_i_7_n_3;
  wire rgb_r1_carry_i_8_n_0;
  wire rgb_r1_carry_i_9_n_0;
  wire rgb_r1_carry_n_0;
  wire rgb_r1_carry_n_1;
  wire rgb_r1_carry_n_2;
  wire rgb_r1_carry_n_3;
  wire \rgb_r1_inferred__0/i__carry__0_n_1 ;
  wire \rgb_r1_inferred__0/i__carry__0_n_2 ;
  wire \rgb_r1_inferred__0/i__carry__0_n_3 ;
  wire \rgb_r1_inferred__0/i__carry_n_0 ;
  wire \rgb_r1_inferred__0/i__carry_n_1 ;
  wire \rgb_r1_inferred__0/i__carry_n_2 ;
  wire \rgb_r1_inferred__0/i__carry_n_3 ;
  wire \rgb_r1_inferred__1/i__carry__0_n_3 ;
  wire \rgb_r1_inferred__1/i__carry_n_0 ;
  wire \rgb_r1_inferred__1/i__carry_n_1 ;
  wire \rgb_r1_inferred__1/i__carry_n_2 ;
  wire \rgb_r1_inferred__1/i__carry_n_3 ;
  wire [11:1]rgb_r2;
  wire [12:0]rgb_r20_in;
  wire \rgb_r2_inferred__0/i__carry__0_n_0 ;
  wire \rgb_r2_inferred__0/i__carry__0_n_1 ;
  wire \rgb_r2_inferred__0/i__carry__0_n_2 ;
  wire \rgb_r2_inferred__0/i__carry__0_n_3 ;
  wire \rgb_r2_inferred__0/i__carry__1_n_0 ;
  wire \rgb_r2_inferred__0/i__carry__1_n_1 ;
  wire \rgb_r2_inferred__0/i__carry__1_n_2 ;
  wire \rgb_r2_inferred__0/i__carry__1_n_3 ;
  wire \rgb_r2_inferred__0/i__carry__2_n_2 ;
  wire \rgb_r2_inferred__0/i__carry_n_0 ;
  wire \rgb_r2_inferred__0/i__carry_n_1 ;
  wire \rgb_r2_inferred__0/i__carry_n_2 ;
  wire \rgb_r2_inferred__0/i__carry_n_3 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_0 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_1 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_2 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_3 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_4 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_5 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_6 ;
  wire \rgb_r2_inferred__1/i__carry__0_n_7 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_0 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_1 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_2 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_3 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_4 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_5 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_6 ;
  wire \rgb_r2_inferred__1/i__carry__1_n_7 ;
  wire \rgb_r2_inferred__1/i__carry__2_n_3 ;
  wire \rgb_r2_inferred__1/i__carry__2_n_6 ;
  wire \rgb_r2_inferred__1/i__carry__2_n_7 ;
  wire \rgb_r2_inferred__1/i__carry_n_0 ;
  wire \rgb_r2_inferred__1/i__carry_n_1 ;
  wire \rgb_r2_inferred__1/i__carry_n_2 ;
  wire \rgb_r2_inferred__1/i__carry_n_3 ;
  wire \rgb_r2_inferred__1/i__carry_n_4 ;
  wire \rgb_r2_inferred__1/i__carry_n_5 ;
  wire \rgb_r2_inferred__1/i__carry_n_6 ;
  wire \rgb_r2_inferred__1/i__carry_n_7 ;
  wire \rgb_r[7]_i_10_n_0 ;
  wire \rgb_r[7]_i_11_n_0 ;
  wire \rgb_r[7]_i_12_n_0 ;
  wire \rgb_r[7]_i_14_n_0 ;
  wire \rgb_r[7]_i_15_n_0 ;
  wire \rgb_r[7]_i_16_n_0 ;
  wire \rgb_r[7]_i_18_n_0 ;
  wire \rgb_r[7]_i_19_n_0 ;
  wire \rgb_r[7]_i_1_n_0 ;
  wire \rgb_r[7]_i_20_n_0 ;
  wire \rgb_r[7]_i_21_n_0 ;
  wire \rgb_r[7]_i_24_n_0 ;
  wire \rgb_r[7]_i_25_n_0 ;
  wire \rgb_r[7]_i_26_n_0 ;
  wire \rgb_r[7]_i_27_n_0 ;
  wire \rgb_r[7]_i_29_n_0 ;
  wire \rgb_r[7]_i_30_n_0 ;
  wire \rgb_r[7]_i_31_n_0 ;
  wire \rgb_r[7]_i_32_n_0 ;
  wire \rgb_r[7]_i_35_n_0 ;
  wire \rgb_r[7]_i_36_n_0 ;
  wire \rgb_r[7]_i_37_n_0 ;
  wire \rgb_r[7]_i_38_n_0 ;
  wire \rgb_r[7]_i_39_n_0 ;
  wire \rgb_r[7]_i_40_n_0 ;
  wire \rgb_r[7]_i_41_n_0 ;
  wire \rgb_r[7]_i_42_n_0 ;
  wire \rgb_r[7]_i_9_n_0 ;
  wire [0:0]\rgb_r_reg[7]_0 ;
  wire \rgb_r_reg[7]_i_13_n_0 ;
  wire \rgb_r_reg[7]_i_13_n_1 ;
  wire \rgb_r_reg[7]_i_13_n_2 ;
  wire \rgb_r_reg[7]_i_13_n_3 ;
  wire \rgb_r_reg[7]_i_13_n_4 ;
  wire \rgb_r_reg[7]_i_13_n_5 ;
  wire \rgb_r_reg[7]_i_13_n_6 ;
  wire \rgb_r_reg[7]_i_13_n_7 ;
  wire \rgb_r_reg[7]_i_17_n_0 ;
  wire \rgb_r_reg[7]_i_17_n_1 ;
  wire \rgb_r_reg[7]_i_17_n_2 ;
  wire \rgb_r_reg[7]_i_17_n_3 ;
  wire \rgb_r_reg[7]_i_22_n_0 ;
  wire \rgb_r_reg[7]_i_22_n_1 ;
  wire \rgb_r_reg[7]_i_22_n_2 ;
  wire \rgb_r_reg[7]_i_22_n_3 ;
  wire \rgb_r_reg[7]_i_23_n_0 ;
  wire \rgb_r_reg[7]_i_23_n_1 ;
  wire \rgb_r_reg[7]_i_23_n_2 ;
  wire \rgb_r_reg[7]_i_23_n_3 ;
  wire \rgb_r_reg[7]_i_23_n_4 ;
  wire \rgb_r_reg[7]_i_23_n_5 ;
  wire \rgb_r_reg[7]_i_23_n_6 ;
  wire \rgb_r_reg[7]_i_23_n_7 ;
  wire \rgb_r_reg[7]_i_28_n_0 ;
  wire \rgb_r_reg[7]_i_28_n_1 ;
  wire \rgb_r_reg[7]_i_28_n_2 ;
  wire \rgb_r_reg[7]_i_28_n_3 ;
  wire \rgb_r_reg[7]_i_33_n_0 ;
  wire \rgb_r_reg[7]_i_33_n_1 ;
  wire \rgb_r_reg[7]_i_33_n_2 ;
  wire \rgb_r_reg[7]_i_33_n_3 ;
  wire \rgb_r_reg[7]_i_3_n_7 ;
  wire \rgb_r_reg[7]_i_4_n_0 ;
  wire \rgb_r_reg[7]_i_4_n_1 ;
  wire \rgb_r_reg[7]_i_4_n_2 ;
  wire \rgb_r_reg[7]_i_4_n_3 ;
  wire \rgb_r_reg[7]_i_5_n_1 ;
  wire \rgb_r_reg[7]_i_5_n_2 ;
  wire \rgb_r_reg[7]_i_5_n_3 ;
  wire \rgb_r_reg[7]_i_5_n_4 ;
  wire \rgb_r_reg[7]_i_5_n_5 ;
  wire \rgb_r_reg[7]_i_5_n_6 ;
  wire \rgb_r_reg[7]_i_5_n_7 ;
  wire \rgb_r_reg[7]_i_6_n_0 ;
  wire \rgb_r_reg[7]_i_6_n_1 ;
  wire \rgb_r_reg[7]_i_6_n_2 ;
  wire \rgb_r_reg[7]_i_6_n_3 ;
  wire \rgb_r_reg[7]_i_7_n_3 ;
  wire \rgb_r_reg[7]_i_8_n_0 ;
  wire \rgb_r_reg[7]_i_8_n_1 ;
  wire \rgb_r_reg[7]_i_8_n_2 ;
  wire \rgb_r_reg[7]_i_8_n_3 ;
  wire v_active;
  wire v_active_i_1_n_0;
  wire \v_cnt[0]_i_1_n_0 ;
  wire \v_cnt[11]_i_1_n_0 ;
  wire \v_cnt[11]_i_4_n_0 ;
  wire \v_cnt_reg[11]_i_3_n_2 ;
  wire \v_cnt_reg[11]_i_3_n_3 ;
  wire \v_cnt_reg[11]_i_3_n_5 ;
  wire \v_cnt_reg[11]_i_3_n_6 ;
  wire \v_cnt_reg[11]_i_3_n_7 ;
  wire \v_cnt_reg[4]_i_1_n_0 ;
  wire \v_cnt_reg[4]_i_1_n_1 ;
  wire \v_cnt_reg[4]_i_1_n_2 ;
  wire \v_cnt_reg[4]_i_1_n_3 ;
  wire \v_cnt_reg[4]_i_1_n_4 ;
  wire \v_cnt_reg[4]_i_1_n_5 ;
  wire \v_cnt_reg[4]_i_1_n_6 ;
  wire \v_cnt_reg[4]_i_1_n_7 ;
  wire \v_cnt_reg[8]_i_1_n_0 ;
  wire \v_cnt_reg[8]_i_1_n_1 ;
  wire \v_cnt_reg[8]_i_1_n_2 ;
  wire \v_cnt_reg[8]_i_1_n_3 ;
  wire \v_cnt_reg[8]_i_1_n_4 ;
  wire \v_cnt_reg[8]_i_1_n_5 ;
  wire \v_cnt_reg[8]_i_1_n_6 ;
  wire \v_cnt_reg[8]_i_1_n_7 ;
  wire \v_cnt_reg_n_0_[0] ;
  wire \v_cnt_reg_n_0_[10] ;
  wire \v_cnt_reg_n_0_[11] ;
  wire \v_cnt_reg_n_0_[1] ;
  wire \v_cnt_reg_n_0_[2] ;
  wire \v_cnt_reg_n_0_[3] ;
  wire \v_cnt_reg_n_0_[4] ;
  wire \v_cnt_reg_n_0_[5] ;
  wire \v_cnt_reg_n_0_[6] ;
  wire \v_cnt_reg_n_0_[7] ;
  wire \v_cnt_reg_n_0_[8] ;
  wire \v_cnt_reg_n_0_[9] ;
  wire vs_i_1_n_0;
  wire vs_i_2_n_0;
  wire vs_i_3_n_0;
  wire vs_i_4_n_0;
  wire vs_i_5_n_0;
  wire vs_i_6_n_0;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]NLW__carry__0_O_UNCONNECTED;
  wire [3:0]NLW__carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_frame_h_cnt_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_frame_h_cnt_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_frame_s_cnt_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_frame_s_cnt_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_frame_v_cnt_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_h_cnt_reg[11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_cnt_reg[11]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_i__carry__2_i_1__0_CO_UNCONNECTED;
  wire [3:1]NLW_i__carry__2_i_1__0_O_UNCONNECTED;
  wire [3:0]NLW_rgb_r1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_r1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_rgb_r1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_rgb_r1_carry__1_O_UNCONNECTED;
  wire [2:2]NLW_rgb_r1_carry_i_5_CO_UNCONNECTED;
  wire [3:3]NLW_rgb_r1_carry_i_5_O_UNCONNECTED;
  wire [3:0]\NLW_rgb_r1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_rgb_r1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r1_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r2_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_r2_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_rgb_r2_inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_rgb_r2_inferred__1/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r_reg[7]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r_reg[7]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_rgb_r_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_rgb_r_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_rgb_r_reg[7]_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_rgb_r_reg[7]_i_7_CO_UNCONNECTED ;
  wire [3:2]\NLW_rgb_r_reg[7]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_v_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_v_cnt_reg[11]_i_3_O_UNCONNECTED ;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b1),
        .DI({_carry_i_1_n_0,\v_cnt_reg_n_0_[2] ,_carry_i_2_n_0,_carry_i_3_n_0}),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({_carry_i_4_n_0,_carry_i_5_n_0,_carry_i_6_n_0,_carry_i_7_n_0}));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}),
        .O(NLW__carry__0_O_UNCONNECTED[3:0]),
        .S({_carry__0_i_5_n_0,_carry__0_i_6_n_0,_carry__0_i_7_n_0,_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h000000000FCBB02C)) 
    _carry__0_i_1
       (.I0(frame_v_cnt_reg[7]),
        .I1(frame_v_cnt_reg[10]),
        .I2(frame_v_cnt_reg[9]),
        .I3(frame_v_cnt_reg[8]),
        .I4(frame_v_cnt_reg[11]),
        .I5(\v_cnt_reg_n_0_[6] ),
        .O(_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6B5A294A)) 
    _carry__0_i_10
       (.I0(frame_v_cnt_reg[11]),
        .I1(frame_v_cnt_reg[8]),
        .I2(frame_v_cnt_reg[9]),
        .I3(frame_v_cnt_reg[10]),
        .I4(frame_v_cnt_reg[7]),
        .O(_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9A18)) 
    _carry__0_i_11
       (.I0(frame_v_cnt_reg[10]),
        .I1(frame_v_cnt_reg[9]),
        .I2(frame_v_cnt_reg[11]),
        .I3(frame_v_cnt_reg[8]),
        .O(_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h79EF086719EF0861)) 
    _carry__0_i_12
       (.I0(_carry__0_i_10_n_0),
        .I1(frame_v_cnt_reg[7]),
        .I2(frame_v_cnt_reg[6]),
        .I3(_carry__0_i_13_n_0),
        .I4(_carry__0_i_9_n_0),
        .I5(frame_v_cnt_reg[5]),
        .O(_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h56959969)) 
    _carry__0_i_13
       (.I0(frame_v_cnt_reg[7]),
        .I1(frame_v_cnt_reg[8]),
        .I2(frame_v_cnt_reg[11]),
        .I3(frame_v_cnt_reg[9]),
        .I4(frame_v_cnt_reg[10]),
        .O(_carry__0_i_13_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    _carry__0_i_2
       (.I0(_carry__0_i_9_n_0),
        .I1(\v_cnt_reg_n_0_[5] ),
        .O(_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry__0_i_3
       (.I0(_carry__0_i_9_n_0),
        .I1(\v_cnt_reg_n_0_[5] ),
        .O(_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    _carry__0_i_4
       (.I0(_carry_i_8_n_0),
        .I1(\v_cnt_reg_n_0_[3] ),
        .O(_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    _carry__0_i_5
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(_carry__0_i_10_n_0),
        .I2(\v_cnt_reg_n_0_[7] ),
        .I3(_carry__0_i_11_n_0),
        .O(_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    _carry__0_i_6
       (.I0(\v_cnt_reg_n_0_[5] ),
        .I1(_carry__0_i_9_n_0),
        .I2(\v_cnt_reg_n_0_[6] ),
        .I3(_carry__0_i_10_n_0),
        .O(_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    _carry__0_i_7
       (.I0(\v_cnt_reg_n_0_[5] ),
        .I1(_carry__0_i_9_n_0),
        .I2(\v_cnt_reg_n_0_[4] ),
        .I3(_carry__0_i_12_n_0),
        .O(_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    _carry__0_i_8
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(_carry_i_8_n_0),
        .I2(\v_cnt_reg_n_0_[4] ),
        .I3(_carry__0_i_12_n_0),
        .O(_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h3B63C6DC2342C49C)) 
    _carry__0_i_9
       (.I0(frame_v_cnt_reg[7]),
        .I1(frame_v_cnt_reg[10]),
        .I2(frame_v_cnt_reg[9]),
        .I3(frame_v_cnt_reg[11]),
        .I4(frame_v_cnt_reg[8]),
        .I5(frame_v_cnt_reg[6]),
        .O(_carry__0_i_9_n_0));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,_carry__1_i_1_n_0,_carry__1_i_2_n_0}),
        .O(NLW__carry__1_O_UNCONNECTED[3:0]),
        .S({_carry__1_i_3_n_0,_carry__1_i_4_n_0,_carry__1_i_5_n_0,_carry__1_i_6_n_0}));
  LUT4 #(
    .INIT(16'h00A8)) 
    _carry__1_i_1
       (.I0(frame_v_cnt_reg[11]),
        .I1(frame_v_cnt_reg[9]),
        .I2(frame_v_cnt_reg[10]),
        .I3(\v_cnt_reg_n_0_[8] ),
        .O(_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000B20C)) 
    _carry__1_i_2
       (.I0(frame_v_cnt_reg[8]),
        .I1(frame_v_cnt_reg[11]),
        .I2(frame_v_cnt_reg[9]),
        .I3(frame_v_cnt_reg[10]),
        .I4(\v_cnt_reg_n_0_[7] ),
        .O(_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__1_i_3
       (.I0(\v_cnt_reg_n_0_[11] ),
        .O(_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__1_i_4
       (.I0(\v_cnt_reg_n_0_[10] ),
        .O(_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h5400ABFF)) 
    _carry__1_i_5
       (.I0(\v_cnt_reg_n_0_[8] ),
        .I1(frame_v_cnt_reg[10]),
        .I2(frame_v_cnt_reg[9]),
        .I3(frame_v_cnt_reg[11]),
        .I4(\v_cnt_reg_n_0_[9] ),
        .O(_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'hB4F0F05A5A0F4B0F)) 
    _carry__1_i_6
       (.I0(\v_cnt_reg_n_0_[7] ),
        .I1(frame_v_cnt_reg[8]),
        .I2(\v_cnt_reg_n_0_[8] ),
        .I3(frame_v_cnt_reg[10]),
        .I4(frame_v_cnt_reg[9]),
        .I5(frame_v_cnt_reg[11]),
        .O(_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_1
       (.I0(_carry_i_8_n_0),
        .I1(\v_cnt_reg_n_0_[3] ),
        .O(_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hF108508F0EF5EF70)) 
    _carry_i_10
       (.I0(_carry_i_14_n_0),
        .I1(_carry_i_13_n_0),
        .I2(frame_v_cnt_reg[4]),
        .I3(_carry__0_i_9_n_0),
        .I4(frame_v_cnt_reg[5]),
        .I5(frame_v_cnt_reg[6]),
        .O(_carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_11
       (.I0(frame_v_cnt_reg[4]),
        .I1(frame_v_cnt_reg[3]),
        .I2(_carry_i_8_n_0),
        .O(_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h79EF086719EF0861)) 
    _carry_i_12
       (.I0(_carry__0_i_12_n_0),
        .I1(frame_v_cnt_reg[5]),
        .I2(frame_v_cnt_reg[4]),
        .I3(_carry_i_15_n_0),
        .I4(_carry_i_8_n_0),
        .I5(frame_v_cnt_reg[3]),
        .O(_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h9966695656999569)) 
    _carry_i_13
       (.I0(frame_v_cnt_reg[6]),
        .I1(frame_v_cnt_reg[7]),
        .I2(frame_v_cnt_reg[10]),
        .I3(frame_v_cnt_reg[9]),
        .I4(frame_v_cnt_reg[8]),
        .I5(frame_v_cnt_reg[11]),
        .O(_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hC69CB92B9CB92B62)) 
    _carry_i_14
       (.I0(frame_v_cnt_reg[6]),
        .I1(frame_v_cnt_reg[10]),
        .I2(frame_v_cnt_reg[9]),
        .I3(frame_v_cnt_reg[11]),
        .I4(frame_v_cnt_reg[8]),
        .I5(frame_v_cnt_reg[7]),
        .O(_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_15
       (.I0(frame_v_cnt_reg[6]),
        .I1(frame_v_cnt_reg[5]),
        .I2(_carry__0_i_9_n_0),
        .O(_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h6DFB285B25EB2049)) 
    _carry_i_2
       (.I0(_carry_i_8_n_0),
        .I1(frame_v_cnt_reg[3]),
        .I2(frame_v_cnt_reg[4]),
        .I3(_carry_i_9_n_0),
        .I4(_carry_i_10_n_0),
        .I5(frame_v_cnt_reg[2]),
        .O(_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2BE3B83B23E2382B)) 
    _carry_i_3
       (.I0(_carry_i_2_n_0),
        .I1(_carry_i_11_n_0),
        .I2(_carry_i_12_n_0),
        .I3(frame_v_cnt_reg[2]),
        .I4(frame_v_cnt_reg[3]),
        .I5(frame_v_cnt_reg[1]),
        .O(_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    _carry_i_4
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(_carry_i_8_n_0),
        .I2(\v_cnt_reg_n_0_[2] ),
        .O(_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    _carry_i_5
       (.I0(\v_cnt_reg_n_0_[2] ),
        .I1(_carry_i_12_n_0),
        .O(_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_6
       (.I0(_carry_i_2_n_0),
        .I1(\v_cnt_reg_n_0_[1] ),
        .O(_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_7
       (.I0(_carry_i_3_n_0),
        .I1(\v_cnt_reg_n_0_[0] ),
        .O(_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h79EF286719EB0861)) 
    _carry_i_8
       (.I0(_carry__0_i_9_n_0),
        .I1(frame_v_cnt_reg[6]),
        .I2(frame_v_cnt_reg[5]),
        .I3(_carry_i_13_n_0),
        .I4(_carry_i_14_n_0),
        .I5(frame_v_cnt_reg[4]),
        .O(_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h5A5A69596569A5A5)) 
    _carry_i_9
       (.I0(frame_v_cnt_reg[4]),
        .I1(_carry_i_13_n_0),
        .I2(frame_v_cnt_reg[5]),
        .I3(frame_v_cnt_reg[6]),
        .I4(_carry__0_i_9_n_0),
        .I5(_carry_i_14_n_0),
        .O(_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    de_i_1
       (.I0(h_active_reg_n_0),
        .I1(v_active),
        .O(de0));
  FDRE #(
    .INIT(1'b0)) 
    de_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(de0),
        .Q(hdmi_de_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \frame_h_cnt[0]_i_1 
       (.I0(frame_h_cnt[0]),
        .O(PCOUT[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \frame_h_cnt[11]_i_1 
       (.I0(\frame_h_cnt[11]_i_3_n_0 ),
        .I1(frame_h_cnt[4]),
        .I2(frame_h_cnt[5]),
        .I3(frame_h_cnt[11]),
        .I4(frame_h_cnt[9]),
        .I5(\frame_h_cnt[11]_i_4_n_0 ),
        .O(\frame_h_cnt[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \frame_h_cnt[11]_i_3 
       (.I0(frame_h_cnt[8]),
        .I1(frame_h_cnt[10]),
        .I2(frame_h_cnt[7]),
        .I3(frame_h_cnt[6]),
        .O(\frame_h_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_h_cnt[11]_i_4 
       (.I0(frame_h_cnt[0]),
        .I1(frame_h_cnt[1]),
        .I2(frame_h_cnt[2]),
        .I3(frame_h_cnt[3]),
        .O(\frame_h_cnt[11]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[0] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(PCOUT[1]),
        .Q(frame_h_cnt[0]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[10] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[11]_i_2_n_6 ),
        .Q(frame_h_cnt[10]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[11] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[11]_i_2_n_5 ),
        .Q(frame_h_cnt[11]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  CARRY4 \frame_h_cnt_reg[11]_i_2 
       (.CI(\frame_h_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_frame_h_cnt_reg[11]_i_2_CO_UNCONNECTED [3:2],\frame_h_cnt_reg[11]_i_2_n_2 ,\frame_h_cnt_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame_h_cnt_reg[11]_i_2_O_UNCONNECTED [3],\frame_h_cnt_reg[11]_i_2_n_5 ,\frame_h_cnt_reg[11]_i_2_n_6 ,\frame_h_cnt_reg[11]_i_2_n_7 }),
        .S({1'b0,frame_h_cnt[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[1] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[4]_i_1_n_7 ),
        .Q(frame_h_cnt[1]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[2] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[4]_i_1_n_6 ),
        .Q(frame_h_cnt[2]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[3] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[4]_i_1_n_5 ),
        .Q(frame_h_cnt[3]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[4] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[4]_i_1_n_4 ),
        .Q(frame_h_cnt[4]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  CARRY4 \frame_h_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\frame_h_cnt_reg[4]_i_1_n_0 ,\frame_h_cnt_reg[4]_i_1_n_1 ,\frame_h_cnt_reg[4]_i_1_n_2 ,\frame_h_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(frame_h_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_h_cnt_reg[4]_i_1_n_4 ,\frame_h_cnt_reg[4]_i_1_n_5 ,\frame_h_cnt_reg[4]_i_1_n_6 ,\frame_h_cnt_reg[4]_i_1_n_7 }),
        .S(frame_h_cnt[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[5] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[8]_i_1_n_7 ),
        .Q(frame_h_cnt[5]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[6] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[8]_i_1_n_6 ),
        .Q(frame_h_cnt[6]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[7] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[8]_i_1_n_5 ),
        .Q(frame_h_cnt[7]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[8] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[8]_i_1_n_4 ),
        .Q(frame_h_cnt[8]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  CARRY4 \frame_h_cnt_reg[8]_i_1 
       (.CI(\frame_h_cnt_reg[4]_i_1_n_0 ),
        .CO({\frame_h_cnt_reg[8]_i_1_n_0 ,\frame_h_cnt_reg[8]_i_1_n_1 ,\frame_h_cnt_reg[8]_i_1_n_2 ,\frame_h_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_h_cnt_reg[8]_i_1_n_4 ,\frame_h_cnt_reg[8]_i_1_n_5 ,\frame_h_cnt_reg[8]_i_1_n_6 ,\frame_h_cnt_reg[8]_i_1_n_7 }),
        .S(frame_h_cnt[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_h_cnt_reg[9] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_h_cnt_reg[11]_i_2_n_7 ),
        .Q(frame_h_cnt[9]),
        .R(\frame_h_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \frame_s_cnt[0]_i_1 
       (.I0(\frame_s_cnt_reg_n_0_[0] ),
        .O(\frame_s_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \frame_s_cnt[11]_i_1 
       (.I0(\frame_s_cnt[11]_i_3_n_0 ),
        .I1(\frame_s_cnt_reg_n_0_[5] ),
        .I2(\frame_s_cnt_reg_n_0_[10] ),
        .I3(\frame_s_cnt_reg_n_0_[3] ),
        .I4(\frame_s_cnt_reg_n_0_[7] ),
        .I5(\frame_s_cnt[11]_i_4_n_0 ),
        .O(\frame_s_cnt[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frame_s_cnt[11]_i_3 
       (.I0(\frame_s_cnt_reg_n_0_[8] ),
        .I1(\frame_s_cnt_reg_n_0_[9] ),
        .I2(\frame_s_cnt_reg_n_0_[11] ),
        .I3(\frame_s_cnt_reg_n_0_[4] ),
        .O(\frame_s_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame_s_cnt[11]_i_4 
       (.I0(\frame_s_cnt_reg_n_0_[0] ),
        .I1(\frame_s_cnt_reg_n_0_[1] ),
        .I2(\frame_s_cnt_reg_n_0_[6] ),
        .I3(\frame_s_cnt_reg_n_0_[2] ),
        .O(\frame_s_cnt[11]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[0] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt[0]_i_1_n_0 ),
        .Q(\frame_s_cnt_reg_n_0_[0] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[10] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[11]_i_2_n_6 ),
        .Q(\frame_s_cnt_reg_n_0_[10] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[11] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[11]_i_2_n_5 ),
        .Q(\frame_s_cnt_reg_n_0_[11] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  CARRY4 \frame_s_cnt_reg[11]_i_2 
       (.CI(\frame_s_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_frame_s_cnt_reg[11]_i_2_CO_UNCONNECTED [3:2],\frame_s_cnt_reg[11]_i_2_n_2 ,\frame_s_cnt_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame_s_cnt_reg[11]_i_2_O_UNCONNECTED [3],\frame_s_cnt_reg[11]_i_2_n_5 ,\frame_s_cnt_reg[11]_i_2_n_6 ,\frame_s_cnt_reg[11]_i_2_n_7 }),
        .S({1'b0,\frame_s_cnt_reg_n_0_[11] ,\frame_s_cnt_reg_n_0_[10] ,\frame_s_cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[1] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[4]_i_1_n_7 ),
        .Q(\frame_s_cnt_reg_n_0_[1] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[2] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[4]_i_1_n_6 ),
        .Q(\frame_s_cnt_reg_n_0_[2] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[3] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[4]_i_1_n_5 ),
        .Q(\frame_s_cnt_reg_n_0_[3] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[4] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[4]_i_1_n_4 ),
        .Q(\frame_s_cnt_reg_n_0_[4] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  CARRY4 \frame_s_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\frame_s_cnt_reg[4]_i_1_n_0 ,\frame_s_cnt_reg[4]_i_1_n_1 ,\frame_s_cnt_reg[4]_i_1_n_2 ,\frame_s_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\frame_s_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_s_cnt_reg[4]_i_1_n_4 ,\frame_s_cnt_reg[4]_i_1_n_5 ,\frame_s_cnt_reg[4]_i_1_n_6 ,\frame_s_cnt_reg[4]_i_1_n_7 }),
        .S({\frame_s_cnt_reg_n_0_[4] ,\frame_s_cnt_reg_n_0_[3] ,\frame_s_cnt_reg_n_0_[2] ,\frame_s_cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[5] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[8]_i_1_n_7 ),
        .Q(\frame_s_cnt_reg_n_0_[5] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[6] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[8]_i_1_n_6 ),
        .Q(\frame_s_cnt_reg_n_0_[6] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[7] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[8]_i_1_n_5 ),
        .Q(\frame_s_cnt_reg_n_0_[7] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[8] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[8]_i_1_n_4 ),
        .Q(\frame_s_cnt_reg_n_0_[8] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  CARRY4 \frame_s_cnt_reg[8]_i_1 
       (.CI(\frame_s_cnt_reg[4]_i_1_n_0 ),
        .CO({\frame_s_cnt_reg[8]_i_1_n_0 ,\frame_s_cnt_reg[8]_i_1_n_1 ,\frame_s_cnt_reg[8]_i_1_n_2 ,\frame_s_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_s_cnt_reg[8]_i_1_n_4 ,\frame_s_cnt_reg[8]_i_1_n_5 ,\frame_s_cnt_reg[8]_i_1_n_6 ,\frame_s_cnt_reg[8]_i_1_n_7 }),
        .S({\frame_s_cnt_reg_n_0_[8] ,\frame_s_cnt_reg_n_0_[7] ,\frame_s_cnt_reg_n_0_[6] ,\frame_s_cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_s_cnt_reg[9] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_s_cnt_reg[11]_i_2_n_7 ),
        .Q(\frame_s_cnt_reg_n_0_[9] ),
        .R(\frame_s_cnt[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_v_cnt[0]_i_2 
       (.I0(frame_v_cnt_reg[0]),
        .O(\frame_v_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[0] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[0]_i_1_n_7 ),
        .Q(frame_v_cnt_reg[0]),
        .R(1'b0));
  CARRY4 \frame_v_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\frame_v_cnt_reg[0]_i_1_n_0 ,\frame_v_cnt_reg[0]_i_1_n_1 ,\frame_v_cnt_reg[0]_i_1_n_2 ,\frame_v_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_v_cnt_reg[0]_i_1_n_4 ,\frame_v_cnt_reg[0]_i_1_n_5 ,\frame_v_cnt_reg[0]_i_1_n_6 ,\frame_v_cnt_reg[0]_i_1_n_7 }),
        .S({frame_v_cnt_reg[3:1],\frame_v_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[10] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[8]_i_1_n_5 ),
        .Q(frame_v_cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[11] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[8]_i_1_n_4 ),
        .Q(frame_v_cnt_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[1] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[0]_i_1_n_6 ),
        .Q(frame_v_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[2] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[0]_i_1_n_5 ),
        .Q(frame_v_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[3] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[0]_i_1_n_4 ),
        .Q(frame_v_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[4] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[4]_i_1_n_7 ),
        .Q(frame_v_cnt_reg[4]),
        .R(1'b0));
  CARRY4 \frame_v_cnt_reg[4]_i_1 
       (.CI(\frame_v_cnt_reg[0]_i_1_n_0 ),
        .CO({\frame_v_cnt_reg[4]_i_1_n_0 ,\frame_v_cnt_reg[4]_i_1_n_1 ,\frame_v_cnt_reg[4]_i_1_n_2 ,\frame_v_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_v_cnt_reg[4]_i_1_n_4 ,\frame_v_cnt_reg[4]_i_1_n_5 ,\frame_v_cnt_reg[4]_i_1_n_6 ,\frame_v_cnt_reg[4]_i_1_n_7 }),
        .S(frame_v_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[5] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[4]_i_1_n_6 ),
        .Q(frame_v_cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[6] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[4]_i_1_n_5 ),
        .Q(frame_v_cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[7] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[4]_i_1_n_4 ),
        .Q(frame_v_cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[8] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[8]_i_1_n_7 ),
        .Q(frame_v_cnt_reg[8]),
        .R(1'b0));
  CARRY4 \frame_v_cnt_reg[8]_i_1 
       (.CI(\frame_v_cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_frame_v_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\frame_v_cnt_reg[8]_i_1_n_1 ,\frame_v_cnt_reg[8]_i_1_n_2 ,\frame_v_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_v_cnt_reg[8]_i_1_n_4 ,\frame_v_cnt_reg[8]_i_1_n_5 ,\frame_v_cnt_reg[8]_i_1_n_6 ,\frame_v_cnt_reg[8]_i_1_n_7 }),
        .S(frame_v_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \frame_v_cnt_reg[9] 
       (.C(hdmi_vs_OBUF_BUFG),
        .CE(1'b1),
        .D(\frame_v_cnt_reg[8]_i_1_n_6 ),
        .Q(frame_v_cnt_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    h_active_i_1
       (.I0(h_active_i_2_n_0),
        .I1(h_active_i_3_n_0),
        .I2(\h_cnt[11]_i_1_n_0 ),
        .I3(h_active_reg_n_0),
        .O(h_active_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    h_active_i_2
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[10] ),
        .I2(\h_cnt_reg_n_0_[0] ),
        .I3(\h_cnt_reg_n_0_[1] ),
        .I4(\h_cnt_reg_n_0_[3] ),
        .I5(\h_cnt_reg_n_0_[5] ),
        .O(h_active_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    h_active_i_3
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(\h_cnt_reg_n_0_[11] ),
        .I2(\h_cnt_reg_n_0_[6] ),
        .I3(\h_cnt_reg_n_0_[7] ),
        .I4(\h_cnt_reg_n_0_[4] ),
        .I5(\h_cnt_reg_n_0_[2] ),
        .O(h_active_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    h_active_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(h_active_i_1_n_0),
        .Q(h_active_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .O(\h_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \h_cnt[11]_i_1 
       (.I0(\h_cnt_reg_n_0_[11] ),
        .I1(\h_cnt_reg_n_0_[6] ),
        .I2(\h_cnt_reg_n_0_[7] ),
        .I3(\h_cnt[11]_i_3_n_0 ),
        .O(\h_cnt[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \h_cnt[11]_i_3 
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(h_active_i_2_n_0),
        .I2(\h_cnt_reg_n_0_[4] ),
        .I3(\h_cnt_reg_n_0_[2] ),
        .O(\h_cnt[11]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\h_cnt[0]_i_1_n_0 ),
        .Q(\h_cnt_reg_n_0_[0] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[10] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\h_cnt_reg_n_0_[10] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[11] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\h_cnt_reg_n_0_[11] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  CARRY4 \h_cnt_reg[11]_i_2 
       (.CI(\h_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_h_cnt_reg[11]_i_2_CO_UNCONNECTED [3:2],\h_cnt_reg[11]_i_2_n_2 ,\h_cnt_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_cnt_reg[11]_i_2_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,\h_cnt_reg_n_0_[11] ,\h_cnt_reg_n_0_[10] ,\h_cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\h_cnt_reg_n_0_[1] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\h_cnt_reg_n_0_[2] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\h_cnt_reg_n_0_[3] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\h_cnt_reg_n_0_[4] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  CARRY4 \h_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\h_cnt_reg[4]_i_1_n_0 ,\h_cnt_reg[4]_i_1_n_1 ,\h_cnt_reg[4]_i_1_n_2 ,\h_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\h_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\h_cnt_reg_n_0_[4] ,\h_cnt_reg_n_0_[3] ,\h_cnt_reg_n_0_[2] ,\h_cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\h_cnt_reg_n_0_[5] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\h_cnt_reg_n_0_[6] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\h_cnt_reg_n_0_[7] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\h_cnt_reg_n_0_[8] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  CARRY4 \h_cnt_reg[8]_i_1 
       (.CI(\h_cnt_reg[4]_i_1_n_0 ),
        .CO({\h_cnt_reg[8]_i_1_n_0 ,\h_cnt_reg[8]_i_1_n_1 ,\h_cnt_reg[8]_i_1_n_2 ,\h_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\h_cnt_reg_n_0_[8] ,\h_cnt_reg_n_0_[7] ,\h_cnt_reg_n_0_[6] ,\h_cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\h_cnt_reg_n_0_[9] ),
        .R(\h_cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    hs_i_1
       (.I0(\h_cnt_reg_n_0_[6] ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[11] ),
        .I3(\h_cnt_reg_n_0_[4] ),
        .I4(\h_cnt_reg_n_0_[2] ),
        .I5(hs_i_2_n_0),
        .O(hs_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    hs_i_2
       (.I0(h_active_i_2_n_0),
        .I1(\h_cnt_reg_n_0_[8] ),
        .O(hs_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    hs_reg
       (.C(clk_out2),
        .CE(hs_i_1_n_0),
        .D(1'b0),
        .Q(hdmi_hs_OBUF),
        .S(hs));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_1
       (.I0(\h_cnt_reg_n_0_[6] ),
        .I1(\frame_s_cnt_reg_n_0_[6] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(\rgb_r2_inferred__1/i__carry__2_n_7 ),
        .I1(\rgb_r2_inferred__1/i__carry__2_n_6 ),
        .O(i__carry__0_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h002000BA)) 
    i__carry__0_i_1__1
       (.I0(i__carry__0_i_4__1_n_0),
        .I1(i__carry__0_i_5__0_n_0),
        .I2(_carry__0_i_11_n_0),
        .I3(\v_cnt_reg_n_0_[9] ),
        .I4(\v_cnt_reg_n_0_[8] ),
        .O(i__carry__0_i_1__1_n_0));
  CARRY4 i__carry__0_i_1__2
       (.CI(i__carry_i_1__2_n_0),
        .CO({i__carry__0_i_1__2_n_0,i__carry__0_i_1__2_n_1,i__carry__0_i_1__2_n_2,i__carry__0_i_1__2_n_3}),
        .CYINIT(1'b0),
        .DI(frame_h_cnt[8:5]),
        .O({i__carry__0_i_1__2_n_4,\rgb_r_reg[7]_0 ,i__carry__0_i_1__2_n_6,i__carry__0_i_1__2_n_7}),
        .S({i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0,i__carry__0_i_5__2_n_0,i__carry__0_i_6__1_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__0_i_2
       (.I0(\h_cnt_reg_n_0_[5] ),
        .I1(\frame_s_cnt_reg_n_0_[5] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_2__0
       (.I0(\rgb_r2_inferred__1/i__carry__1_n_5 ),
        .I1(\rgb_r2_inferred__1/i__carry__1_n_4 ),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__1
       (.I0(\v_cnt_reg_n_0_[11] ),
        .I1(\v_cnt_reg_n_0_[10] ),
        .O(i__carry__0_i_2__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2__2
       (.I0(\rgb_r_reg[7]_0 ),
        .O(i__carry__0_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(\rgb_r2_inferred__1/i__carry__1_n_6 ),
        .I1(\h_cnt_reg_n_0_[11] ),
        .I2(\rgb_r2_inferred__1/i__carry__1_n_7 ),
        .I3(\h_cnt_reg_n_0_[10] ),
        .O(i__carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h009A2045)) 
    i__carry__0_i_3__0
       (.I0(i__carry__0_i_4__1_n_0),
        .I1(i__carry__0_i_5__0_n_0),
        .I2(_carry__0_i_11_n_0),
        .I3(\v_cnt_reg_n_0_[9] ),
        .I4(\v_cnt_reg_n_0_[8] ),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__1
       (.I0(\h_cnt_reg_n_0_[5] ),
        .I1(\frame_s_cnt_reg_n_0_[5] ),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__2
       (.I0(frame_h_cnt[8]),
        .I1(frame_h_cnt[6]),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_4
       (.I0(\h_cnt_reg_n_0_[3] ),
        .I1(\frame_s_cnt_reg_n_0_[3] ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4__0
       (.I0(\rgb_r2_inferred__1/i__carry__0_n_4 ),
        .I1(\h_cnt_reg_n_0_[9] ),
        .I2(\rgb_r2_inferred__1/i__carry__0_n_5 ),
        .I3(\h_cnt_reg_n_0_[8] ),
        .O(i__carry__0_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    i__carry__0_i_4__1
       (.I0(frame_v_cnt_reg[10]),
        .I1(frame_v_cnt_reg[9]),
        .I2(frame_v_cnt_reg[11]),
        .O(i__carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__2
       (.I0(frame_h_cnt[7]),
        .I1(frame_h_cnt[5]),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_5
       (.I0(\rgb_r2_inferred__1/i__carry__2_n_6 ),
        .I1(\rgb_r2_inferred__1/i__carry__2_n_7 ),
        .O(i__carry__0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001FFFFF)) 
    i__carry__0_i_5__0
       (.I0(_carry_i_8_n_0),
        .I1(i__carry_i_10_n_0),
        .I2(_carry__0_i_12_n_0),
        .I3(_carry__0_i_9_n_0),
        .I4(_carry__0_i_10_n_0),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_5__1
       (.I0(\frame_s_cnt_reg_n_0_[6] ),
        .I1(\h_cnt_reg_n_0_[6] ),
        .I2(\frame_s_cnt_reg_n_0_[7] ),
        .I3(\h_cnt_reg_n_0_[7] ),
        .O(i__carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_5__2
       (.I0(frame_h_cnt[6]),
        .I1(frame_h_cnt[4]),
        .O(i__carry__0_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_6
       (.I0(\rgb_r2_inferred__1/i__carry__1_n_4 ),
        .I1(\rgb_r2_inferred__1/i__carry__1_n_5 ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i__carry__0_i_6__0
       (.I0(\frame_s_cnt_reg_n_0_[5] ),
        .I1(\h_cnt_reg_n_0_[5] ),
        .I2(\frame_s_cnt_reg_n_0_[6] ),
        .I3(\h_cnt_reg_n_0_[6] ),
        .O(i__carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_6__1
       (.I0(frame_h_cnt[5]),
        .I1(frame_h_cnt[3]),
        .O(i__carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\rgb_r2_inferred__1/i__carry__1_n_6 ),
        .I1(\h_cnt_reg_n_0_[11] ),
        .I2(\rgb_r2_inferred__1/i__carry__1_n_7 ),
        .I3(\h_cnt_reg_n_0_[10] ),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry__0_i_7__0
       (.I0(\frame_s_cnt_reg_n_0_[5] ),
        .I1(\h_cnt_reg_n_0_[5] ),
        .I2(\frame_s_cnt_reg_n_0_[4] ),
        .I3(\h_cnt_reg_n_0_[4] ),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\rgb_r2_inferred__1/i__carry__0_n_5 ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\rgb_r2_inferred__1/i__carry__0_n_4 ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .O(i__carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__0_i_8__0
       (.I0(\frame_s_cnt_reg_n_0_[3] ),
        .I1(\h_cnt_reg_n_0_[3] ),
        .I2(\frame_s_cnt_reg_n_0_[4] ),
        .I3(\h_cnt_reg_n_0_[4] ),
        .O(i__carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(\h_cnt_reg_n_0_[10] ),
        .I1(\frame_s_cnt_reg_n_0_[10] ),
        .O(i__carry__1_i_1_n_0));
  CARRY4 i__carry__1_i_1__0
       (.CI(i__carry__0_i_1__2_n_0),
        .CO({i__carry__1_i_1__0_n_0,i__carry__1_i_1__0_n_1,i__carry__1_i_1__0_n_2,i__carry__1_i_1__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,frame_h_cnt[11:9]}),
        .O({i__carry__1_i_1__0_n_4,i__carry__1_i_1__0_n_5,i__carry__1_i_1__0_n_6,i__carry__1_i_1__0_n_7}),
        .S({frame_h_cnt[10],i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_2
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\frame_s_cnt_reg_n_0_[9] ),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__0
       (.I0(frame_h_cnt[11]),
        .I1(frame_h_cnt[9]),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__1_i_3
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(\frame_s_cnt_reg_n_0_[8] ),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__0
       (.I0(frame_h_cnt[10]),
        .I1(frame_h_cnt[8]),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(\frame_s_cnt_reg_n_0_[8] ),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__0
       (.I0(frame_h_cnt[9]),
        .I1(frame_h_cnt[7]),
        .O(i__carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry__1_i_5
       (.I0(\frame_s_cnt_reg_n_0_[10] ),
        .I1(\h_cnt_reg_n_0_[10] ),
        .I2(\frame_s_cnt_reg_n_0_[11] ),
        .I3(\h_cnt_reg_n_0_[11] ),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    i__carry__1_i_6
       (.I0(\frame_s_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[9] ),
        .I2(\frame_s_cnt_reg_n_0_[10] ),
        .I3(\h_cnt_reg_n_0_[10] ),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    i__carry__1_i_7
       (.I0(\frame_s_cnt_reg_n_0_[8] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\frame_s_cnt_reg_n_0_[9] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    i__carry__1_i_8
       (.I0(\frame_s_cnt_reg_n_0_[8] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\frame_s_cnt_reg_n_0_[7] ),
        .I3(\h_cnt_reg_n_0_[7] ),
        .O(i__carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__2_i_1
       (.I0(\h_cnt_reg_n_0_[11] ),
        .I1(\frame_s_cnt_reg_n_0_[11] ),
        .O(i__carry__2_i_1_n_0));
  CARRY4 i__carry__2_i_1__0
       (.CI(i__carry__1_i_1__0_n_0),
        .CO({NLW_i__carry__2_i_1__0_CO_UNCONNECTED[3:2],i__carry__2_i_1__0_n_2,NLW_i__carry__2_i_1__0_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__2_i_1__0_O_UNCONNECTED[3:1],i__carry__2_i_1__0_n_7}),
        .S({1'b0,1'b0,1'b1,frame_h_cnt[11]}));
  LUT2 #(
    .INIT(4'hB)) 
    i__carry__2_i_2
       (.I0(\frame_s_cnt_reg_n_0_[11] ),
        .I1(\h_cnt_reg_n_0_[11] ),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1
       (.I0(\h_cnt_reg_n_0_[2] ),
        .I1(\frame_s_cnt_reg_n_0_[2] ),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAF2F8FAF2F2F8FA)) 
    i__carry_i_10
       (.I0(_carry_i_2_n_0),
        .I1(_carry_i_11_n_0),
        .I2(_carry_i_12_n_0),
        .I3(frame_v_cnt_reg[2]),
        .I4(frame_v_cnt_reg[3]),
        .I5(frame_v_cnt_reg[1]),
        .O(i__carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hD34C0030FFFFFFFF)) 
    i__carry_i_11
       (.I0(frame_v_cnt_reg[1]),
        .I1(frame_v_cnt_reg[3]),
        .I2(frame_v_cnt_reg[2]),
        .I3(_carry_i_12_n_0),
        .I4(_carry_i_11_n_0),
        .I5(_carry_i_2_n_0),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(\rgb_r2_inferred__1/i__carry__0_n_6 ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\rgb_r2_inferred__1/i__carry__0_n_7 ),
        .I3(\h_cnt_reg_n_0_[6] ),
        .O(i__carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h07733110)) 
    i__carry_i_1__1
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(\v_cnt_reg_n_0_[7] ),
        .I2(_carry__0_i_10_n_0),
        .I3(i__carry_i_9_n_0),
        .I4(_carry__0_i_11_n_0),
        .O(i__carry_i_1__1_n_0));
  CARRY4 i__carry_i_1__2
       (.CI(1'b0),
        .CO({i__carry_i_1__2_n_0,i__carry_i_1__2_n_1,i__carry_i_1__2_n_2,i__carry_i_1__2_n_3}),
        .CYINIT(1'b0),
        .DI({frame_h_cnt[4:2],1'b0}),
        .O({i__carry_i_1__2_n_4,O[1],i__carry_i_1__2_n_6,O[0]}),
        .S({i__carry_i_4__2_n_0,i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,frame_h_cnt[1]}));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(\rgb_r2_inferred__1/i__carry_n_4 ),
        .I1(\h_cnt_reg_n_0_[5] ),
        .I2(\rgb_r2_inferred__1/i__carry_n_5 ),
        .I3(\h_cnt_reg_n_0_[4] ),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__0
       (.I0(O[1]),
        .O(i__carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__1
       (.I0(\frame_s_cnt_reg_n_0_[1] ),
        .O(i__carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h00EF000E01110EFF)) 
    i__carry_i_2__2
       (.I0(i__carry_i_10_n_0),
        .I1(_carry_i_8_n_0),
        .I2(\v_cnt_reg_n_0_[4] ),
        .I3(\v_cnt_reg_n_0_[5] ),
        .I4(_carry__0_i_12_n_0),
        .I5(_carry__0_i_9_n_0),
        .O(i__carry_i_2__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(i__carry_i_1__2_n_6),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(\rgb_r2_inferred__1/i__carry_n_6 ),
        .I1(\h_cnt_reg_n_0_[3] ),
        .I2(\rgb_r2_inferred__1/i__carry_n_7 ),
        .I3(\h_cnt_reg_n_0_[2] ),
        .O(i__carry_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h009A18BE)) 
    i__carry_i_3__1
       (.I0(_carry_i_8_n_0),
        .I1(_carry_i_12_n_0),
        .I2(i__carry_i_11_n_0),
        .I3(\v_cnt_reg_n_0_[3] ),
        .I4(\v_cnt_reg_n_0_[2] ),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    i__carry_i_3__2
       (.I0(\frame_s_cnt_reg_n_0_[2] ),
        .I1(\h_cnt_reg_n_0_[2] ),
        .I2(\frame_s_cnt_reg_n_0_[3] ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4
       (.I0(frame_h_cnt[0]),
        .I1(\h_cnt_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h1435)) 
    i__carry_i_4__0
       (.I0(\v_cnt_reg_n_0_[1] ),
        .I1(_carry_i_3_n_0),
        .I2(_carry_i_2_n_0),
        .I3(\v_cnt_reg_n_0_[0] ),
        .O(i__carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_4__1
       (.I0(\frame_s_cnt_reg_n_0_[1] ),
        .I1(\frame_s_cnt_reg_n_0_[2] ),
        .I2(\h_cnt_reg_n_0_[2] ),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4__2
       (.I0(frame_h_cnt[4]),
        .I1(frame_h_cnt[2]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\rgb_r2_inferred__1/i__carry__0_n_6 ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\rgb_r2_inferred__1/i__carry__0_n_7 ),
        .I3(\h_cnt_reg_n_0_[6] ),
        .O(i__carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h09906009)) 
    i__carry_i_5__0
       (.I0(\v_cnt_reg_n_0_[7] ),
        .I1(_carry__0_i_11_n_0),
        .I2(i__carry_i_9_n_0),
        .I3(_carry__0_i_10_n_0),
        .I4(\v_cnt_reg_n_0_[6] ),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5__1
       (.I0(\frame_s_cnt_reg_n_0_[1] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .O(i__carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_5__2
       (.I0(frame_h_cnt[3]),
        .I1(frame_h_cnt[1]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\rgb_r2_inferred__1/i__carry_n_5 ),
        .I1(\h_cnt_reg_n_0_[4] ),
        .I2(\rgb_r2_inferred__1/i__carry_n_4 ),
        .I3(\h_cnt_reg_n_0_[5] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_6__0
       (.I0(\h_cnt_reg_n_0_[0] ),
        .I1(\frame_s_cnt_reg_n_0_[0] ),
        .O(i__carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h01100EE0E00E0110)) 
    i__carry_i_6__1
       (.I0(i__carry_i_10_n_0),
        .I1(_carry_i_8_n_0),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(_carry__0_i_9_n_0),
        .I4(_carry__0_i_12_n_0),
        .I5(\v_cnt_reg_n_0_[4] ),
        .O(i__carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_6__2
       (.I0(frame_h_cnt[2]),
        .I1(frame_h_cnt[0]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(\rgb_r2_inferred__1/i__carry_n_7 ),
        .I1(\h_cnt_reg_n_0_[2] ),
        .I2(\rgb_r2_inferred__1/i__carry_n_6 ),
        .I3(\h_cnt_reg_n_0_[3] ),
        .O(i__carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h29404029)) 
    i__carry_i_7__0
       (.I0(_carry_i_12_n_0),
        .I1(i__carry_i_11_n_0),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(_carry_i_8_n_0),
        .I4(\v_cnt_reg_n_0_[3] ),
        .O(i__carry_i_7__0_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    i__carry_i_8
       (.I0(frame_h_cnt[0]),
        .I1(\h_cnt_reg_n_0_[0] ),
        .I2(\h_cnt_reg_n_0_[1] ),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h2148)) 
    i__carry_i_8__0
       (.I0(\v_cnt_reg_n_0_[1] ),
        .I1(_carry_i_3_n_0),
        .I2(_carry_i_2_n_0),
        .I3(\v_cnt_reg_n_0_[0] ),
        .O(i__carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    i__carry_i_9
       (.I0(_carry__0_i_9_n_0),
        .I1(_carry__0_i_12_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(_carry_i_8_n_0),
        .O(i__carry_i_9_n_0));
  CARRY4 rgb_r1_carry
       (.CI(1'b0),
        .CO({rgb_r1_carry_n_0,rgb_r1_carry_n_1,rgb_r1_carry_n_2,rgb_r1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rgb_r1_carry_O_UNCONNECTED[3:0]),
        .S({rgb_r1_carry_i_1_n_0,rgb_r1_carry_i_2_n_0,rgb_r1_carry_i_3_n_0,rgb_r1_carry_i_4_n_0}));
  CARRY4 rgb_r1_carry__0
       (.CI(rgb_r1_carry_n_0),
        .CO({rgb_r1_carry__0_n_0,rgb_r1_carry__0_n_1,rgb_r1_carry__0_n_2,rgb_r1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rgb_r1_carry__0_O_UNCONNECTED[3:0]),
        .S({rgb_r1_carry__0_i_1_n_0,rgb_r1_carry__0_i_2_n_0,rgb_r1_carry__0_i_3_n_0,rgb_r1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r1_carry__0_i_1
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .O(rgb_r1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r1_carry__0_i_2
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .O(rgb_r1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r1_carry__0_i_3
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .O(rgb_r1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    rgb_r1_carry__0_i_4
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .I2(rgb_r20_in[12]),
        .O(rgb_r1_carry__0_i_4_n_0));
  CARRY4 rgb_r1_carry__1
       (.CI(rgb_r1_carry__0_n_0),
        .CO({NLW_rgb_r1_carry__1_CO_UNCONNECTED[3],rgb_r1_carry__1_n_1,rgb_r1_carry__1_n_2,rgb_r1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rgb_r1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,rgb_r1_carry__1_i_1_n_0,rgb_r1_carry__1_i_2_n_0,rgb_r1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r1_carry__1_i_1
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .O(rgb_r1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r1_carry__1_i_2
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .O(rgb_r1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rgb_r1_carry__1_i_3
       (.I0(rgb_r1_carry_i_5_n_0),
        .I1(\rgb_r2_inferred__0/i__carry__2_n_2 ),
        .O(rgb_r1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_r1_carry_i_1
       (.I0(rgb_r20_in[9]),
        .I1(rgb_r2[9]),
        .I2(rgb_r20_in[10]),
        .I3(rgb_r2[10]),
        .I4(rgb_r2[11]),
        .I5(rgb_r20_in[11]),
        .O(rgb_r1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_10
       (.I0(\v_cnt_reg_n_0_[9] ),
        .O(rgb_r1_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_11
       (.I0(\v_cnt_reg_n_0_[8] ),
        .O(rgb_r1_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_12
       (.I0(\v_cnt_reg_n_0_[7] ),
        .O(rgb_r1_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_13
       (.I0(\v_cnt_reg_n_0_[6] ),
        .O(rgb_r1_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_14
       (.I0(\v_cnt_reg_n_0_[4] ),
        .O(rgb_r1_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_15
       (.I0(\v_cnt_reg_n_0_[2] ),
        .O(rgb_r1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_r1_carry_i_2
       (.I0(rgb_r20_in[6]),
        .I1(rgb_r2[6]),
        .I2(rgb_r20_in[7]),
        .I3(rgb_r2[7]),
        .I4(rgb_r2[8]),
        .I5(rgb_r20_in[8]),
        .O(rgb_r1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_r1_carry_i_3
       (.I0(rgb_r20_in[3]),
        .I1(rgb_r2[3]),
        .I2(rgb_r20_in[4]),
        .I3(rgb_r2[4]),
        .I4(rgb_r2[5]),
        .I5(rgb_r20_in[5]),
        .O(rgb_r1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_r1_carry_i_4
       (.I0(rgb_r20_in[0]),
        .I1(\v_cnt_reg_n_0_[0] ),
        .I2(rgb_r20_in[1]),
        .I3(rgb_r2[1]),
        .I4(rgb_r2[2]),
        .I5(rgb_r20_in[2]),
        .O(rgb_r1_carry_i_4_n_0));
  CARRY4 rgb_r1_carry_i_5
       (.CI(rgb_r1_carry_i_6_n_0),
        .CO({rgb_r1_carry_i_5_n_0,NLW_rgb_r1_carry_i_5_CO_UNCONNECTED[2],rgb_r1_carry_i_5_n_2,rgb_r1_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\v_cnt_reg_n_0_[11] ,\v_cnt_reg_n_0_[10] ,\v_cnt_reg_n_0_[9] }),
        .O({NLW_rgb_r1_carry_i_5_O_UNCONNECTED[3],rgb_r2[11:9]}),
        .S({1'b1,rgb_r1_carry_i_8_n_0,rgb_r1_carry_i_9_n_0,rgb_r1_carry_i_10_n_0}));
  CARRY4 rgb_r1_carry_i_6
       (.CI(rgb_r1_carry_i_7_n_0),
        .CO({rgb_r1_carry_i_6_n_0,rgb_r1_carry_i_6_n_1,rgb_r1_carry_i_6_n_2,rgb_r1_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({\v_cnt_reg_n_0_[8] ,\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,1'b0}),
        .O(rgb_r2[8:5]),
        .S({rgb_r1_carry_i_11_n_0,rgb_r1_carry_i_12_n_0,rgb_r1_carry_i_13_n_0,\v_cnt_reg_n_0_[5] }));
  CARRY4 rgb_r1_carry_i_7
       (.CI(1'b0),
        .CO({rgb_r1_carry_i_7_n_0,rgb_r1_carry_i_7_n_1,rgb_r1_carry_i_7_n_2,rgb_r1_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({\v_cnt_reg_n_0_[4] ,1'b0,\v_cnt_reg_n_0_[2] ,1'b0}),
        .O(rgb_r2[4:1]),
        .S({rgb_r1_carry_i_14_n_0,\v_cnt_reg_n_0_[3] ,rgb_r1_carry_i_15_n_0,\v_cnt_reg_n_0_[1] }));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_8
       (.I0(\v_cnt_reg_n_0_[11] ),
        .O(rgb_r1_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r1_carry_i_9
       (.I0(\v_cnt_reg_n_0_[10] ),
        .O(rgb_r1_carry_i_9_n_0));
  CARRY4 \rgb_r1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\rgb_r1_inferred__0/i__carry_n_0 ,\rgb_r1_inferred__0/i__carry_n_1 ,\rgb_r1_inferred__0/i__carry_n_2 ,\rgb_r1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}),
        .O(\NLW_rgb_r1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \rgb_r1_inferred__0/i__carry__0 
       (.CI(\rgb_r1_inferred__0/i__carry_n_0 ),
        .CO({rgb_r1,\rgb_r1_inferred__0/i__carry__0_n_1 ,\rgb_r1_inferred__0/i__carry__0_n_2 ,\rgb_r1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4__0_n_0}),
        .O(\NLW_rgb_r1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \rgb_r1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\rgb_r1_inferred__1/i__carry_n_0 ,\rgb_r1_inferred__1/i__carry_n_1 ,\rgb_r1_inferred__1/i__carry_n_2 ,\rgb_r1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__2_n_0,i__carry_i_3__1_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_rgb_r1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__1_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  CARRY4 \rgb_r1_inferred__1/i__carry__0 
       (.CI(\rgb_r1_inferred__1/i__carry_n_0 ),
        .CO({\NLW_rgb_r1_inferred__1/i__carry__0_CO_UNCONNECTED [3:2],rgb_r11_in,\rgb_r1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1__1_n_0}),
        .O(\NLW_rgb_r1_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__0_n_0}));
  CARRY4 \rgb_r2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\rgb_r2_inferred__0/i__carry_n_0 ,\rgb_r2_inferred__0/i__carry_n_1 ,\rgb_r2_inferred__0/i__carry_n_2 ,\rgb_r2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2__1_n_0,\frame_s_cnt_reg_n_0_[1] ,\h_cnt_reg_n_0_[0] }),
        .O(rgb_r20_in[3:0]),
        .S({i__carry_i_3__2_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0,i__carry_i_6__0_n_0}));
  CARRY4 \rgb_r2_inferred__0/i__carry__0 
       (.CI(\rgb_r2_inferred__0/i__carry_n_0 ),
        .CO({\rgb_r2_inferred__0/i__carry__0_n_0 ,\rgb_r2_inferred__0/i__carry__0_n_1 ,\rgb_r2_inferred__0/i__carry__0_n_2 ,\rgb_r2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3__1_n_0,i__carry__0_i_4_n_0}),
        .O(rgb_r20_in[7:4]),
        .S({i__carry__0_i_5__1_n_0,i__carry__0_i_6__0_n_0,i__carry__0_i_7__0_n_0,i__carry__0_i_8__0_n_0}));
  CARRY4 \rgb_r2_inferred__0/i__carry__1 
       (.CI(\rgb_r2_inferred__0/i__carry__0_n_0 ),
        .CO({\rgb_r2_inferred__0/i__carry__1_n_0 ,\rgb_r2_inferred__0/i__carry__1_n_1 ,\rgb_r2_inferred__0/i__carry__1_n_2 ,\rgb_r2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(rgb_r20_in[11:8]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
  CARRY4 \rgb_r2_inferred__0/i__carry__2 
       (.CI(\rgb_r2_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW_rgb_r2_inferred__0/i__carry__2_CO_UNCONNECTED [3:2],\rgb_r2_inferred__0/i__carry__2_n_2 ,\NLW_rgb_r2_inferred__0/i__carry__2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__2_i_1_n_0}),
        .O({\NLW_rgb_r2_inferred__0/i__carry__2_O_UNCONNECTED [3:1],rgb_r20_in[12]}),
        .S({1'b0,1'b0,1'b1,i__carry__2_i_2_n_0}));
  CARRY4 \rgb_r2_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\rgb_r2_inferred__1/i__carry_n_0 ,\rgb_r2_inferred__1/i__carry_n_1 ,\rgb_r2_inferred__1/i__carry_n_2 ,\rgb_r2_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,O[1],i__carry_i_1__2_n_6,1'b0}),
        .O({\rgb_r2_inferred__1/i__carry_n_4 ,\rgb_r2_inferred__1/i__carry_n_5 ,\rgb_r2_inferred__1/i__carry_n_6 ,\rgb_r2_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1__2_n_4,i__carry_i_2__0_n_0,i__carry_i_3_n_0,O[0]}));
  CARRY4 \rgb_r2_inferred__1/i__carry__0 
       (.CI(\rgb_r2_inferred__1/i__carry_n_0 ),
        .CO({\rgb_r2_inferred__1/i__carry__0_n_0 ,\rgb_r2_inferred__1/i__carry__0_n_1 ,\rgb_r2_inferred__1/i__carry__0_n_2 ,\rgb_r2_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rgb_r_reg[7]_0 ,1'b0,1'b0}),
        .O({\rgb_r2_inferred__1/i__carry__0_n_4 ,\rgb_r2_inferred__1/i__carry__0_n_5 ,\rgb_r2_inferred__1/i__carry__0_n_6 ,\rgb_r2_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__2_n_4,i__carry__0_i_2__2_n_0,i__carry__0_i_1__2_n_6,i__carry__0_i_1__2_n_7}));
  CARRY4 \rgb_r2_inferred__1/i__carry__1 
       (.CI(\rgb_r2_inferred__1/i__carry__0_n_0 ),
        .CO({\rgb_r2_inferred__1/i__carry__1_n_0 ,\rgb_r2_inferred__1/i__carry__1_n_1 ,\rgb_r2_inferred__1/i__carry__1_n_2 ,\rgb_r2_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rgb_r2_inferred__1/i__carry__1_n_4 ,\rgb_r2_inferred__1/i__carry__1_n_5 ,\rgb_r2_inferred__1/i__carry__1_n_6 ,\rgb_r2_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__0_n_4,i__carry__1_i_1__0_n_5,i__carry__1_i_1__0_n_6,i__carry__1_i_1__0_n_7}));
  CARRY4 \rgb_r2_inferred__1/i__carry__2 
       (.CI(\rgb_r2_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW_rgb_r2_inferred__1/i__carry__2_CO_UNCONNECTED [3:1],\rgb_r2_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_r2_inferred__1/i__carry__2_O_UNCONNECTED [3:2],\rgb_r2_inferred__1/i__carry__2_n_6 ,\rgb_r2_inferred__1/i__carry__2_n_7 }),
        .S({1'b0,1'b0,i__carry__2_i_1__0_n_2,i__carry__2_i_1__0_n_7}));
  LUT3 #(
    .INIT(8'hF8)) 
    \rgb_r[7]_i_1 
       (.I0(rgb_r1),
        .I1(\rgb_r_reg[7]_i_3_n_7 ),
        .I2(rgb_r1_carry__1_n_1),
        .O(\rgb_r[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_10 
       (.I0(\rgb_r_reg[7]_i_5_n_4 ),
        .I1(PCOUT[15]),
        .O(\rgb_r[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_11 
       (.I0(\rgb_r_reg[7]_i_5_n_4 ),
        .I1(PCOUT[14]),
        .O(\rgb_r[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_12 
       (.I0(\rgb_r_reg[7]_i_5_n_4 ),
        .I1(PCOUT[13]),
        .O(\rgb_r[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_14 
       (.I0(\h_cnt_reg_n_0_[11] ),
        .O(\rgb_r[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_15 
       (.I0(\h_cnt_reg_n_0_[10] ),
        .O(\rgb_r[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_16 
       (.I0(\h_cnt_reg_n_0_[9] ),
        .O(\rgb_r[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_18 
       (.I0(\rgb_r_reg[7]_i_5_n_4 ),
        .I1(PCOUT[12]),
        .O(\rgb_r[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_19 
       (.I0(\rgb_r_reg[7]_i_5_n_5 ),
        .I1(PCOUT[11]),
        .O(\rgb_r[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rgb_r[7]_i_2 
       (.I0(rgb_r11_in),
        .I1(_carry__1_n_0),
        .O(rgb_r03_out));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_20 
       (.I0(\rgb_r_reg[7]_i_5_n_6 ),
        .I1(PCOUT[10]),
        .O(\rgb_r[7]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_21 
       (.I0(\rgb_r_reg[7]_i_5_n_7 ),
        .I1(PCOUT[9]),
        .O(\rgb_r[7]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_24 
       (.I0(\h_cnt_reg_n_0_[8] ),
        .O(\rgb_r[7]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_25 
       (.I0(\h_cnt_reg_n_0_[7] ),
        .O(\rgb_r[7]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_26 
       (.I0(\h_cnt_reg_n_0_[6] ),
        .O(\rgb_r[7]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_27 
       (.I0(\h_cnt_reg_n_0_[5] ),
        .O(\rgb_r[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_29 
       (.I0(\rgb_r_reg[7]_i_13_n_4 ),
        .I1(PCOUT[8]),
        .O(\rgb_r[7]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_30 
       (.I0(\rgb_r_reg[7]_i_13_n_5 ),
        .I1(PCOUT[7]),
        .O(\rgb_r[7]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_31 
       (.I0(\rgb_r_reg[7]_i_13_n_6 ),
        .I1(PCOUT[6]),
        .O(\rgb_r[7]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_32 
       (.I0(\rgb_r_reg[7]_i_13_n_7 ),
        .I1(PCOUT[5]),
        .O(\rgb_r[7]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_35 
       (.I0(\h_cnt_reg_n_0_[4] ),
        .O(\rgb_r[7]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_36 
       (.I0(\h_cnt_reg_n_0_[3] ),
        .O(\rgb_r[7]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_37 
       (.I0(\h_cnt_reg_n_0_[2] ),
        .O(\rgb_r[7]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rgb_r[7]_i_38 
       (.I0(\h_cnt_reg_n_0_[1] ),
        .O(\rgb_r[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_39 
       (.I0(\rgb_r_reg[7]_i_23_n_4 ),
        .I1(PCOUT[4]),
        .O(\rgb_r[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_40 
       (.I0(\rgb_r_reg[7]_i_23_n_5 ),
        .I1(PCOUT[3]),
        .O(\rgb_r[7]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_41 
       (.I0(\rgb_r_reg[7]_i_23_n_6 ),
        .I1(PCOUT[2]),
        .O(\rgb_r[7]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rgb_r[7]_i_42 
       (.I0(\rgb_r_reg[7]_i_23_n_7 ),
        .I1(frame_h_cnt[0]),
        .O(\rgb_r[7]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rgb_r[7]_i_9 
       (.I0(\rgb_r_reg[7]_i_5_n_4 ),
        .I1(PCOUT[16]),
        .O(\rgb_r[7]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rgb_r_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(rgb_r03_out),
        .Q(hdmi_b_OBUF),
        .S(\rgb_r[7]_i_1_n_0 ));
  CARRY4 \rgb_r_reg[7]_i_13 
       (.CI(\rgb_r_reg[7]_i_23_n_0 ),
        .CO({\rgb_r_reg[7]_i_13_n_0 ,\rgb_r_reg[7]_i_13_n_1 ,\rgb_r_reg[7]_i_13_n_2 ,\rgb_r_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rgb_r_reg[7]_i_13_n_4 ,\rgb_r_reg[7]_i_13_n_5 ,\rgb_r_reg[7]_i_13_n_6 ,\rgb_r_reg[7]_i_13_n_7 }),
        .S({\rgb_r[7]_i_24_n_0 ,\rgb_r[7]_i_25_n_0 ,\rgb_r[7]_i_26_n_0 ,\rgb_r[7]_i_27_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_17 
       (.CI(\rgb_r_reg[7]_i_28_n_0 ),
        .CO({\rgb_r_reg[7]_i_17_n_0 ,\rgb_r_reg[7]_i_17_n_1 ,\rgb_r_reg[7]_i_17_n_2 ,\rgb_r_reg[7]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({\rgb_r_reg[7]_i_13_n_4 ,\rgb_r_reg[7]_i_13_n_5 ,\rgb_r_reg[7]_i_13_n_6 ,\rgb_r_reg[7]_i_13_n_7 }),
        .O(\NLW_rgb_r_reg[7]_i_17_O_UNCONNECTED [3:0]),
        .S({\rgb_r[7]_i_29_n_0 ,\rgb_r[7]_i_30_n_0 ,\rgb_r[7]_i_31_n_0 ,\rgb_r[7]_i_32_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_22 
       (.CI(\rgb_r_reg[7]_i_33_n_0 ),
        .CO({\rgb_r_reg[7]_i_22_n_0 ,\rgb_r_reg[7]_i_22_n_1 ,\rgb_r_reg[7]_i_22_n_2 ,\rgb_r_reg[7]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rgb_r_reg[7]_0 ,1'b0,1'b0}),
        .O(PCOUT[9:6]),
        .S({i__carry__0_i_1__2_n_4,\frame_h_cnt_reg[8]_0 ,i__carry__0_i_1__2_n_6,i__carry__0_i_1__2_n_7}));
  CARRY4 \rgb_r_reg[7]_i_23 
       (.CI(1'b0),
        .CO({\rgb_r_reg[7]_i_23_n_0 ,\rgb_r_reg[7]_i_23_n_1 ,\rgb_r_reg[7]_i_23_n_2 ,\rgb_r_reg[7]_i_23_n_3 }),
        .CYINIT(\h_cnt[0]_i_1_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rgb_r_reg[7]_i_23_n_4 ,\rgb_r_reg[7]_i_23_n_5 ,\rgb_r_reg[7]_i_23_n_6 ,\rgb_r_reg[7]_i_23_n_7 }),
        .S({\rgb_r[7]_i_35_n_0 ,\rgb_r[7]_i_36_n_0 ,\rgb_r[7]_i_37_n_0 ,\rgb_r[7]_i_38_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_28 
       (.CI(1'b0),
        .CO({\rgb_r_reg[7]_i_28_n_0 ,\rgb_r_reg[7]_i_28_n_1 ,\rgb_r_reg[7]_i_28_n_2 ,\rgb_r_reg[7]_i_28_n_3 }),
        .CYINIT(\h_cnt_reg_n_0_[0] ),
        .DI({\rgb_r_reg[7]_i_23_n_4 ,\rgb_r_reg[7]_i_23_n_5 ,\rgb_r_reg[7]_i_23_n_6 ,\rgb_r_reg[7]_i_23_n_7 }),
        .O(\NLW_rgb_r_reg[7]_i_28_O_UNCONNECTED [3:0]),
        .S({\rgb_r[7]_i_39_n_0 ,\rgb_r[7]_i_40_n_0 ,\rgb_r[7]_i_41_n_0 ,\rgb_r[7]_i_42_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_3 
       (.CI(\rgb_r_reg[7]_i_4_n_0 ),
        .CO(\NLW_rgb_r_reg[7]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_r_reg[7]_i_3_O_UNCONNECTED [3:1],\rgb_r_reg[7]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,\rgb_r_reg[7]_i_5_n_4 }));
  CARRY4 \rgb_r_reg[7]_i_33 
       (.CI(1'b0),
        .CO({\rgb_r_reg[7]_i_33_n_0 ,\rgb_r_reg[7]_i_33_n_1 ,\rgb_r_reg[7]_i_33_n_2 ,\rgb_r_reg[7]_i_33_n_3 }),
        .CYINIT(frame_h_cnt[0]),
        .DI({1'b0,O[1],1'b0,O[0]}),
        .O(PCOUT[5:2]),
        .S({i__carry_i_1__2_n_4,S[1],i__carry_i_1__2_n_6,S[0]}));
  CARRY4 \rgb_r_reg[7]_i_4 
       (.CI(\rgb_r_reg[7]_i_6_n_0 ),
        .CO({\rgb_r_reg[7]_i_4_n_0 ,\rgb_r_reg[7]_i_4_n_1 ,\rgb_r_reg[7]_i_4_n_2 ,\rgb_r_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(PCOUT[16:13]),
        .O(\NLW_rgb_r_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\rgb_r[7]_i_9_n_0 ,\rgb_r[7]_i_10_n_0 ,\rgb_r[7]_i_11_n_0 ,\rgb_r[7]_i_12_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_5 
       (.CI(\rgb_r_reg[7]_i_13_n_0 ),
        .CO({\NLW_rgb_r_reg[7]_i_5_CO_UNCONNECTED [3],\rgb_r_reg[7]_i_5_n_1 ,\rgb_r_reg[7]_i_5_n_2 ,\rgb_r_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rgb_r_reg[7]_i_5_n_4 ,\rgb_r_reg[7]_i_5_n_5 ,\rgb_r_reg[7]_i_5_n_6 ,\rgb_r_reg[7]_i_5_n_7 }),
        .S({1'b1,\rgb_r[7]_i_14_n_0 ,\rgb_r[7]_i_15_n_0 ,\rgb_r[7]_i_16_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_6 
       (.CI(\rgb_r_reg[7]_i_17_n_0 ),
        .CO({\rgb_r_reg[7]_i_6_n_0 ,\rgb_r_reg[7]_i_6_n_1 ,\rgb_r_reg[7]_i_6_n_2 ,\rgb_r_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({PCOUT[12],\rgb_r_reg[7]_i_5_n_5 ,\rgb_r_reg[7]_i_5_n_6 ,\rgb_r_reg[7]_i_5_n_7 }),
        .O(\NLW_rgb_r_reg[7]_i_6_O_UNCONNECTED [3:0]),
        .S({\rgb_r[7]_i_18_n_0 ,\rgb_r[7]_i_19_n_0 ,\rgb_r[7]_i_20_n_0 ,\rgb_r[7]_i_21_n_0 }));
  CARRY4 \rgb_r_reg[7]_i_7 
       (.CI(\rgb_r_reg[7]_i_8_n_0 ),
        .CO({\NLW_rgb_r_reg[7]_i_7_CO_UNCONNECTED [3],PCOUT[16],\NLW_rgb_r_reg[7]_i_7_CO_UNCONNECTED [1],\rgb_r_reg[7]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rgb_r_reg[7]_i_7_O_UNCONNECTED [3:2],PCOUT[15:14]}),
        .S({1'b0,1'b1,i__carry__2_i_1__0_n_2,i__carry__2_i_1__0_n_7}));
  CARRY4 \rgb_r_reg[7]_i_8 
       (.CI(\rgb_r_reg[7]_i_22_n_0 ),
        .CO({\rgb_r_reg[7]_i_8_n_0 ,\rgb_r_reg[7]_i_8_n_1 ,\rgb_r_reg[7]_i_8_n_2 ,\rgb_r_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCOUT[13:10]),
        .S({i__carry__1_i_1__0_n_4,i__carry__1_i_1__0_n_5,i__carry__1_i_1__0_n_6,i__carry__1_i_1__0_n_7}));
  LUT6 #(
    .INIT(64'hFFBFFFFF01000000)) 
    v_active_i_1
       (.I0(\v_cnt[11]_i_4_n_0 ),
        .I1(\v_cnt_reg_n_0_[10] ),
        .I2(\v_cnt_reg_n_0_[6] ),
        .I3(\v_cnt_reg_n_0_[3] ),
        .I4(hs),
        .I5(v_active),
        .O(v_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    v_active_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(v_active_i_1_n_0),
        .Q(v_active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .O(\v_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \v_cnt[11]_i_1 
       (.I0(hs),
        .I1(\v_cnt_reg_n_0_[6] ),
        .I2(\v_cnt_reg_n_0_[10] ),
        .I3(\v_cnt_reg_n_0_[3] ),
        .I4(\v_cnt[11]_i_4_n_0 ),
        .O(\v_cnt[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \v_cnt[11]_i_2 
       (.I0(\h_cnt_reg_n_0_[6] ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[11] ),
        .I3(\h_cnt[11]_i_3_n_0 ),
        .O(hs));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \v_cnt[11]_i_4 
       (.I0(\v_cnt_reg_n_0_[2] ),
        .I1(\v_cnt_reg_n_0_[5] ),
        .I2(vs_i_3_n_0),
        .I3(\v_cnt_reg_n_0_[1] ),
        .I4(\v_cnt_reg_n_0_[0] ),
        .O(\v_cnt[11]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[0] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt[0]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[0] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[10] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[11]_i_3_n_6 ),
        .Q(\v_cnt_reg_n_0_[10] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[11] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[11]_i_3_n_5 ),
        .Q(\v_cnt_reg_n_0_[11] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  CARRY4 \v_cnt_reg[11]_i_3 
       (.CI(\v_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_v_cnt_reg[11]_i_3_CO_UNCONNECTED [3:2],\v_cnt_reg[11]_i_3_n_2 ,\v_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_v_cnt_reg[11]_i_3_O_UNCONNECTED [3],\v_cnt_reg[11]_i_3_n_5 ,\v_cnt_reg[11]_i_3_n_6 ,\v_cnt_reg[11]_i_3_n_7 }),
        .S({1'b0,\v_cnt_reg_n_0_[11] ,\v_cnt_reg_n_0_[10] ,\v_cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[1] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[4]_i_1_n_7 ),
        .Q(\v_cnt_reg_n_0_[1] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[2] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[4]_i_1_n_6 ),
        .Q(\v_cnt_reg_n_0_[2] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[3] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[4]_i_1_n_5 ),
        .Q(\v_cnt_reg_n_0_[3] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[4] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[4]_i_1_n_4 ),
        .Q(\v_cnt_reg_n_0_[4] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  CARRY4 \v_cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\v_cnt_reg[4]_i_1_n_0 ,\v_cnt_reg[4]_i_1_n_1 ,\v_cnt_reg[4]_i_1_n_2 ,\v_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\v_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_cnt_reg[4]_i_1_n_4 ,\v_cnt_reg[4]_i_1_n_5 ,\v_cnt_reg[4]_i_1_n_6 ,\v_cnt_reg[4]_i_1_n_7 }),
        .S({\v_cnt_reg_n_0_[4] ,\v_cnt_reg_n_0_[3] ,\v_cnt_reg_n_0_[2] ,\v_cnt_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[5] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[8]_i_1_n_7 ),
        .Q(\v_cnt_reg_n_0_[5] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[6] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[8]_i_1_n_6 ),
        .Q(\v_cnt_reg_n_0_[6] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[7] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[8]_i_1_n_5 ),
        .Q(\v_cnt_reg_n_0_[7] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[8] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[8]_i_1_n_4 ),
        .Q(\v_cnt_reg_n_0_[8] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  CARRY4 \v_cnt_reg[8]_i_1 
       (.CI(\v_cnt_reg[4]_i_1_n_0 ),
        .CO({\v_cnt_reg[8]_i_1_n_0 ,\v_cnt_reg[8]_i_1_n_1 ,\v_cnt_reg[8]_i_1_n_2 ,\v_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\v_cnt_reg[8]_i_1_n_4 ,\v_cnt_reg[8]_i_1_n_5 ,\v_cnt_reg[8]_i_1_n_6 ,\v_cnt_reg[8]_i_1_n_7 }),
        .S({\v_cnt_reg_n_0_[8] ,\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,\v_cnt_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[9] 
       (.C(clk_out2),
        .CE(hs),
        .D(\v_cnt_reg[11]_i_3_n_7 ),
        .Q(\v_cnt_reg_n_0_[9] ),
        .R(\v_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2FFF2200)) 
    vs_i_1
       (.I0(vs_i_2_n_0),
        .I1(vs_i_3_n_0),
        .I2(vs_i_4_n_0),
        .I3(hs),
        .I4(hdmi_vs_OBUF),
        .O(vs_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    vs_i_2
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(\v_cnt_reg_n_0_[5] ),
        .I2(vs_i_5_n_0),
        .I3(\v_cnt_reg_n_0_[0] ),
        .I4(\v_cnt_reg_n_0_[1] ),
        .I5(\v_cnt_reg_n_0_[2] ),
        .O(vs_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    vs_i_3
       (.I0(\v_cnt_reg_n_0_[9] ),
        .I1(\v_cnt_reg_n_0_[11] ),
        .I2(\v_cnt_reg_n_0_[8] ),
        .I3(\v_cnt_reg_n_0_[4] ),
        .I4(\v_cnt_reg_n_0_[7] ),
        .O(vs_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    vs_i_4
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(\v_cnt_reg_n_0_[10] ),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(\v_cnt_reg_n_0_[3] ),
        .I4(\v_cnt_reg_n_0_[2] ),
        .I5(vs_i_6_n_0),
        .O(vs_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    vs_i_5
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(\v_cnt_reg_n_0_[10] ),
        .O(vs_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    vs_i_6
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[1] ),
        .I2(vs_i_3_n_0),
        .O(vs_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vs_reg
       (.C(clk_out2),
        .CE(1'b1),
        .D(vs_i_1_n_0),
        .Q(hdmi_vs_OBUF),
        .R(1'b0));
endmodule

module sys_clk
   (clk_out1,
    clk_out2,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire locked;

  sys_clk_sys_clk_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .locked(locked));
endmodule

(* ORIG_REF_NAME = "sys_clk_clk_wiz" *) 
module sys_clk_sys_clk_clk_wiz
   (clk_out1,
    clk_out2,
    locked,
    clk_in1);
  output clk_out1;
  output clk_out2;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_sys_clk;
  wire clk_out1;
  wire clk_out1_sys_clk;
  wire clk_out2;
  wire clk_out2_sys_clk;
  wire clkfbout_buf_sys_clk;
  wire clkfbout_sys_clk;
  wire locked;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_sys_clk),
        .O(clkfbout_buf_sys_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_sys_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_sys_clk),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_sys_clk),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(23.750000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(20.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(11.875000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(8),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_sys_clk),
        .CLKFBOUT(clkfbout_sys_clk),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_sys_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_sys_clk),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_sys_clk),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
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
