catch {::common::set_param -quiet hls.xocc.mode csynth};
catch {::common::set_param -quiet hls.enable_scout_hidden_option_error false};
# 
# HLS run script generated by v++ compiler
# 

open_project remap_accel
set_top remap_accel
# v++ -g, -D, -I, --advanced.prop kernel.remap_accel.kernel_flags
add_files "/home/overman/dev/workspaces/vision/vision_kernels/src/remap/xf_remap_accel.cpp" -cflags " -g -I /home/overman/dev/workspaces/vision/vision_kernels/src/remap"
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
config_export -deadlock_detection none
# v++ --advanced.param compiler.axiDeadLockFree
config_interface -m_axi_conservative_mode=1
config_interface -m_axi_addr64
# v++ --hls.max_memory_ports
config_interface -m_axi_auto_max_ports=0
config_export -format xo -ipname remap_accel
catch {::common::set_param -quiet hls.enable_synthesis_check_sw_only true};
csynth_design -synthesis_check
close_project
puts "HLS completed successfully"
exit
