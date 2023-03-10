catch {::common::set_param -quiet hls.xocc.mode csynth};
# 
# HLS run script generated by v++ compiler
# 

open_project canny_accel
set_top canny_accel
# v++ -g, -D, -I, --advanced.prop kernel.canny_accel.kernel_flags
add_files "/home/overman/dev/workspaces/vision/vision_kernels/src/canny/xf_canny_accel.cpp" -cflags " -I /home/overman/dev/workspaces/vision/vision_kernels/src/canny"
open_solution -flow_target vitis solution
set_part xczu9eg-ffvb1156-2-e
create_clock -period 150.000000MHz -name default
# v++ --advanced.param compiler.hlsDataflowStrictMode
config_dataflow -strict_mode warning
# v++ --advanced.param compiler.deadlockDetection
config_export -deadlock_detection sim
# v++ --advanced.param compiler.axiDeadLockFree
config_interface -m_axi_conservative_mode=1
config_interface -m_axi_addr64
# v++ --hls.max_memory_ports
config_interface -m_axi_auto_max_ports=0
config_export -format xo -ipname canny_accel
csynth_design
export_design
close_project
puts "HLS completed successfully"
exit
