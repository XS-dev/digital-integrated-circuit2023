// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Feb 25 19:12:33 2023
// Host        : XS-WIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               l:/FPGA/ICIG/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_multiplier_0_0/design_1_multiplier_0_0_stub.v
// Design      : design_1_multiplier_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multiplier,Vivado 2021.2" *)
module design_1_multiplier_0_0(InputX, InputY, product)
/* synthesis syn_black_box black_box_pad_pin="InputX[15:0],InputY[15:0],product[31:0]" */;
  input [15:0]InputX;
  input [15:0]InputY;
  output [31:0]product;
endmodule
