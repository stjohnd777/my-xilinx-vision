catch {::common::set_param -quiet hls.xocc.mode csynth};
# 
# HLS run script generated by v++ compiler
# 

open_project threshold_accel
set_top threshold_accel
# v++ -g, -D, -I, --advanced.prop kernel.threshold_accel.kernel_flags
add_files "/home/overman/dev/workspaces/vision/vision_kernels/src/threshold/xf_threshold_accel.cpp" -cflags " -g -I /home/overman/dev/workspaces/vision/vision_kernels/src/threshold"
open_solution -flow_target vitis solution
set_part xczu9eg-ffvb1156-2-e
create_clock -period 150.000000MHz -name default
# v++ -g or --profile_kernel stall
config_rtl -kernel_profile
# v++ --advanced.param compiler.hlsDataflowStrictMode
config_dataflow -strict_mode warning
# v++ -g
config_debug -enable
# v++ --advanced.param compiler.deadlockDetection
config_export -deadlock_detection sim
# v++ --advanced.param compiler.axiDeadLockFree
config_interface -m_axi_conservative_mode=1
config_interface -m_axi_addr64
# v++ --hls.max_memory_ports
config_interface -m_axi_auto_max_ports=0
config_export -format xo -ipname threshold_accel
csynth_design
export_design
close_project
puts "HLS completed successfully"
exit
