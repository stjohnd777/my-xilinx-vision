# Monitor points

#Trace Dictionaries
set default_trace [dict create \
];


# Call debug/profiling automation
set dpa_dict [list \
             ]
set dpa_opts [list \
              SETTINGS  {HW_EMU false IS_EMBEDDED true VERSAL_DFX 0} \
              AIE_TRACE  {FIFO_DEPTH 4096 PACKET_RATE 0 CLK_SELECT default PROFILE_STREAMS 0 MEM_TYPE DDR MEM_SPACE MEM_SPACE_NOT_FOUND MEM_INDEX {}} \
              SYSTEM_DEADLOCK  {DEADLOCK_OPTION disable} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /home/overman/dev/workspaces/vision/vision_system_hw_link/Hardware/binary_container_1.build/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Write debug_ip_layout
debug_profile::write_debug_ip_layout false "xilinx.com:xd:xilinx_zcu102_base_202220_1:202220.1" "/home/overman/dev/workspaces/vision/vision_system_hw_link/Hardware/binary_container_1.build/link/int"
