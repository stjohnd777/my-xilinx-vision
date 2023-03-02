# Monitor points
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /canny_accel_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /canny_accel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /canny_accel_1/m_axi_gmem2]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /fast_accel_1/m_axi_gmem0]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /fast_accel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /fast_accel_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /gaussian_filter_accel_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /gaussian_filter_accel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /gaussian_filter_accel_1/m_axi_gmem2]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /image_thresholding_kernel00_1/m_axi_gmem]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /image_thresholding_kernel00_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /image_thresholding_kernel01_1/m_axi_gmem0]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /image_thresholding_kernel01_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /image_thresholding_kernel01_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /remap_accel_1/m_axi_gmem0]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /remap_accel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /remap_accel_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /remap_accel_1/m_axi_gmem2]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /remap_accel_1/m_axi_gmem3]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /sobel_accel_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /sobel_accel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /sobel_accel_1/m_axi_gmem2]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /sobel_accel_1/m_axi_gmem3]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /threshold_accel_1/m_axi_gmem1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells /threshold_accel_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /threshold_accel_1/m_axi_gmem2]

# Platform options
set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER true [get_bd_intf_pins /interconnect_axilite/M09_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER true [get_bd_intf_pins /interconnect_axihpm0fpd/M01_AXI]

#Trace Dictionaries
set default_trace [dict create \
  DEPTH 8192 \
  MEM_SPACE FIFO \
  MEM_INDEX 0 \
  MASTER /interconnect_axihpm0fpd/M01_AXI \
  CLK_SRC /canny_accel_1/ap_clk \
  RST_SRC /canny_accel_1/ap_rst_n \
  SLR SLR0 \
  DEDICATED 1 \
];


# Call debug/profiling automation
set dpa_dict [list \
              [get_bd_intf_pins canny_accel_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /canny_accel_1/ap_clk RST_SRC /canny_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins canny_accel_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_cells /canny_accel_1]  {TYPE exec DETAIL all CLK_SRC /canny_accel_1/ap_clk RST_SRC /canny_accel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /canny_accel_1]} INS_MODE user} \
              [get_bd_intf_pins canny_accel_1/m_axi_gmem2]  {TYPE data DETAIL all CLK_SRC /canny_accel_1/ap_clk RST_SRC /canny_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins canny_accel_1/m_axi_gmem2]} INS_MODE user} \
              [get_bd_intf_pins fast_accel_1/m_axi_gmem0]  {TYPE data DETAIL all CLK_SRC /fast_accel_1/ap_clk RST_SRC /fast_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP1} PRINTABLE_KEY {[get_bd_intf_pins fast_accel_1/m_axi_gmem0]} INS_MODE user} \
              [get_bd_cells /fast_accel_1]  {TYPE exec DETAIL all CLK_SRC /fast_accel_1/ap_clk RST_SRC /fast_accel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /fast_accel_1]} INS_MODE user} \
              [get_bd_intf_pins fast_accel_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /fast_accel_1/ap_clk RST_SRC /fast_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP1} PRINTABLE_KEY {[get_bd_intf_pins fast_accel_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_intf_pins gaussian_filter_accel_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /gaussian_filter_accel_1/ap_clk RST_SRC /gaussian_filter_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins gaussian_filter_accel_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_cells /gaussian_filter_accel_1]  {TYPE exec DETAIL all CLK_SRC /gaussian_filter_accel_1/ap_clk RST_SRC /gaussian_filter_accel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /gaussian_filter_accel_1]} INS_MODE user} \
              [get_bd_intf_pins gaussian_filter_accel_1/m_axi_gmem2]  {TYPE data DETAIL all CLK_SRC /gaussian_filter_accel_1/ap_clk RST_SRC /gaussian_filter_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins gaussian_filter_accel_1/m_axi_gmem2]} INS_MODE user} \
              [get_bd_intf_pins image_thresholding_kernel00_1/m_axi_gmem]  {TYPE data DETAIL all CLK_SRC /image_thresholding_kernel00_1/ap_clk RST_SRC /image_thresholding_kernel00_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins image_thresholding_kernel00_1/m_axi_gmem]} INS_MODE user} \
              [get_bd_cells /image_thresholding_kernel00_1]  {TYPE exec DETAIL all CLK_SRC /image_thresholding_kernel00_1/ap_clk RST_SRC /image_thresholding_kernel00_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /image_thresholding_kernel00_1]} INS_MODE user} \
              [get_bd_intf_pins image_thresholding_kernel01_1/m_axi_gmem0]  {TYPE data DETAIL all CLK_SRC /image_thresholding_kernel01_1/ap_clk RST_SRC /image_thresholding_kernel01_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins image_thresholding_kernel01_1/m_axi_gmem0]} INS_MODE user} \
              [get_bd_cells /image_thresholding_kernel01_1]  {TYPE exec DETAIL all CLK_SRC /image_thresholding_kernel01_1/ap_clk RST_SRC /image_thresholding_kernel01_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /image_thresholding_kernel01_1]} INS_MODE user} \
              [get_bd_intf_pins image_thresholding_kernel01_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /image_thresholding_kernel01_1/ap_clk RST_SRC /image_thresholding_kernel01_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins image_thresholding_kernel01_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_intf_pins remap_accel_1/m_axi_gmem0]  {TYPE data DETAIL all CLK_SRC /remap_accel_1/ap_clk RST_SRC /remap_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins remap_accel_1/m_axi_gmem0]} INS_MODE user} \
              [get_bd_cells /remap_accel_1]  {TYPE exec DETAIL all CLK_SRC /remap_accel_1/ap_clk RST_SRC /remap_accel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /remap_accel_1]} INS_MODE user} \
              [get_bd_intf_pins remap_accel_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /remap_accel_1/ap_clk RST_SRC /remap_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins remap_accel_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_intf_pins remap_accel_1/m_axi_gmem2]  {TYPE data DETAIL all CLK_SRC /remap_accel_1/ap_clk RST_SRC /remap_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins remap_accel_1/m_axi_gmem2]} INS_MODE user} \
              [get_bd_intf_pins remap_accel_1/m_axi_gmem3]  {TYPE data DETAIL all CLK_SRC /remap_accel_1/ap_clk RST_SRC /remap_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins remap_accel_1/m_axi_gmem3]} INS_MODE user} \
              [get_bd_intf_pins sobel_accel_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /sobel_accel_1/ap_clk RST_SRC /sobel_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins sobel_accel_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_cells /sobel_accel_1]  {TYPE exec DETAIL all CLK_SRC /sobel_accel_1/ap_clk RST_SRC /sobel_accel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /sobel_accel_1]} INS_MODE user} \
              [get_bd_intf_pins sobel_accel_1/m_axi_gmem2]  {TYPE data DETAIL all CLK_SRC /sobel_accel_1/ap_clk RST_SRC /sobel_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins sobel_accel_1/m_axi_gmem2]} INS_MODE user} \
              [get_bd_intf_pins sobel_accel_1/m_axi_gmem3]  {TYPE data DETAIL all CLK_SRC /sobel_accel_1/ap_clk RST_SRC /sobel_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins sobel_accel_1/m_axi_gmem3]} INS_MODE user} \
              [get_bd_intf_pins threshold_accel_1/m_axi_gmem1]  {TYPE data DETAIL all CLK_SRC /threshold_accel_1/ap_clk RST_SRC /threshold_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins threshold_accel_1/m_axi_gmem1]} INS_MODE user} \
              [get_bd_cells /threshold_accel_1]  {TYPE exec DETAIL all CLK_SRC /threshold_accel_1/ap_clk RST_SRC /threshold_accel_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells /threshold_accel_1]} INS_MODE user} \
              [get_bd_intf_pins threshold_accel_1/m_axi_gmem2]  {TYPE data DETAIL all CLK_SRC /threshold_accel_1/ap_clk RST_SRC /threshold_accel_1/ap_rst_n MIN_ADDRESS {0xC0000000 0x0} MAX_ADDRESS {0xFFFFFFFFF 0x7FFFFFFF} MEMORY {HP HP0} PRINTABLE_KEY {[get_bd_intf_pins threshold_accel_1/m_axi_gmem2]} INS_MODE user} \
             ]
set dpa_opts [list \
              SETTINGS  {HW_EMU true IS_EMBEDDED true VERSAL_DFX 0} \
              AIE_TRACE  {FIFO_DEPTH 4096 PACKET_RATE 100 CLK_SELECT default PROFILE_STREAMS false MEM_TYPE DDR MEM_SPACE MEM_SPACE_NOT_FOUND MEM_INDEX {}} \
              SYSTEM_DEADLOCK  {DEADLOCK_OPTION disable} \
              AXILITE  {MASTER /interconnect_axilite/M09_AXI CLK_SRC /canny_accel_1/ap_clk RST_SRC /canny_accel_1/ap_rst_n} \
              TRACE_OFFLOAD  $default_trace \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /home/overman/dev/workspaces/vision/vision_system_hw_link/Emulation-HW/binary_container_1.build/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Write debug_ip_layout
debug_profile::write_debug_ip_layout true "xilinx.com:xd:xilinx_zcu102_base_202220_1:202220.1" "/home/overman/dev/workspaces/vision/vision_system_hw_link/Emulation-HW/binary_container_1.build/link/int"
