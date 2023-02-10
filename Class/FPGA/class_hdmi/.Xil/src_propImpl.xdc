set_property SRC_FILE_INFO {cfile:d:/Xilinx/Projects/class_hdmi/class_hdmi.srcs/sources_1/ip/sys_clk/sys_clk.xdc rfile:../class_hdmi.srcs/sources_1/ip/sys_clk/sys_clk.xdc id:1 order:EARLY scoped_inst:sys_clk_u0/inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.2
