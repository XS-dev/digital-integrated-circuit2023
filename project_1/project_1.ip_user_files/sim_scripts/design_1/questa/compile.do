vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_11
vlib questa_lib/msim/processing_system7_vip_v1_0_13

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_11 questa_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 questa_lib/msim/processing_system7_vip_v1_0_13

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cb1/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cb1/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_multiplier_0_0/sim/design_1_multiplier_0_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cb1/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cb1/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cb1/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3007/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd26/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cb1/hdl" "+incdir+D:/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_1/sim/design_1_processing_system7_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

