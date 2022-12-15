-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../class_hdmi.srcs/sources_1/ip/sys_clk/sys_clk_clk_wiz.v" \
  "../../../../class_hdmi.srcs/sources_1/ip/sys_clk/sys_clk.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

