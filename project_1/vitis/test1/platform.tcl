# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct L:\FPGA\ICIG\project_1\vitis\test1\platform.tcl
# 
# OR launch xsct and run below command.
# source L:\FPGA\ICIG\project_1\vitis\test1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {test1}\
-hw {L:\FPGA\ICIG\project_1\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {L:/FPGA/ICIG/project_1/vitis}

platform write
platform generate -domains 
platform active {test1}
platform generate
