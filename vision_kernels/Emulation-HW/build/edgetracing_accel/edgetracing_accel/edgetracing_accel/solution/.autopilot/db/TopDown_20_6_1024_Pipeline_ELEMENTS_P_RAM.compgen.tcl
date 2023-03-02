# This script segment is generated automatically by AutoPilot

set id 49
set name edgetracing_accel_mux_32_64_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 64
set din0_signed 0
set din1_width 64
set din1_signed 0
set din2_width 64
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 64
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 85
set name edgetracing_accel_mux_325_64_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 64
set din0_signed 0
set din1_width 64
set din1_signed 0
set din2_width 64
set din2_signed 0
set din3_width 64
set din3_signed 0
set din4_width 64
set din4_signed 0
set din5_width 64
set din5_signed 0
set din6_width 64
set din6_signed 0
set din7_width 64
set din7_signed 0
set din8_width 64
set din8_signed 0
set din9_width 64
set din9_signed 0
set din10_width 64
set din10_signed 0
set din11_width 64
set din11_signed 0
set din12_width 64
set din12_signed 0
set din13_width 64
set din13_signed 0
set din14_width 64
set din14_signed 0
set din15_width 64
set din15_signed 0
set din16_width 64
set din16_signed 0
set din17_width 64
set din17_signed 0
set din18_width 64
set din18_signed 0
set din19_width 64
set din19_signed 0
set din20_width 64
set din20_signed 0
set din21_width 64
set din21_signed 0
set din22_width 64
set din22_signed 0
set din23_width 64
set din23_signed 0
set din24_width 64
set din24_signed 0
set din25_width 64
set din25_signed 0
set din26_width 64
set din26_signed 0
set din27_width 64
set din27_signed 0
set din28_width 64
set din28_signed 0
set din29_width 64
set din29_signed 0
set din30_width 64
set din30_signed 0
set din31_width 64
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 64
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name iBuff_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_1 \
    op interface \
    ports { iBuff_1_address0 { O 10 vector } iBuff_1_ce0 { O 1 bit } iBuff_1_we0 { O 1 bit } iBuff_1_d0 { O 64 vector } iBuff_1_address1 { O 10 vector } iBuff_1_ce1 { O 1 bit } iBuff_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name iBuff_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_2 \
    op interface \
    ports { iBuff_2_address0 { O 10 vector } iBuff_2_ce0 { O 1 bit } iBuff_2_we0 { O 1 bit } iBuff_2_d0 { O 64 vector } iBuff_2_address1 { O 10 vector } iBuff_2_ce1 { O 1 bit } iBuff_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name iBuff_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_3 \
    op interface \
    ports { iBuff_3_address0 { O 10 vector } iBuff_3_ce0 { O 1 bit } iBuff_3_we0 { O 1 bit } iBuff_3_d0 { O 64 vector } iBuff_3_address1 { O 10 vector } iBuff_3_ce1 { O 1 bit } iBuff_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name iBuff_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_4 \
    op interface \
    ports { iBuff_4_address0 { O 10 vector } iBuff_4_ce0 { O 1 bit } iBuff_4_we0 { O 1 bit } iBuff_4_d0 { O 64 vector } iBuff_4_address1 { O 10 vector } iBuff_4_ce1 { O 1 bit } iBuff_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name iBuff_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_5 \
    op interface \
    ports { iBuff_5_address0 { O 10 vector } iBuff_5_ce0 { O 1 bit } iBuff_5_we0 { O 1 bit } iBuff_5_d0 { O 64 vector } iBuff_5_address1 { O 10 vector } iBuff_5_ce1 { O 1 bit } iBuff_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name iBuff_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_6 \
    op interface \
    ports { iBuff_6_address0 { O 10 vector } iBuff_6_ce0 { O 1 bit } iBuff_6_we0 { O 1 bit } iBuff_6_d0 { O 64 vector } iBuff_6_address1 { O 10 vector } iBuff_6_ce1 { O 1 bit } iBuff_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name iBuff_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_7 \
    op interface \
    ports { iBuff_7_address0 { O 10 vector } iBuff_7_ce0 { O 1 bit } iBuff_7_we0 { O 1 bit } iBuff_7_d0 { O 64 vector } iBuff_7_address1 { O 10 vector } iBuff_7_ce1 { O 1 bit } iBuff_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name iBuff_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_8 \
    op interface \
    ports { iBuff_8_address0 { O 10 vector } iBuff_8_ce0 { O 1 bit } iBuff_8_we0 { O 1 bit } iBuff_8_d0 { O 64 vector } iBuff_8_address1 { O 10 vector } iBuff_8_ce1 { O 1 bit } iBuff_8_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name iBuff_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_9 \
    op interface \
    ports { iBuff_9_address0 { O 10 vector } iBuff_9_ce0 { O 1 bit } iBuff_9_we0 { O 1 bit } iBuff_9_d0 { O 64 vector } iBuff_9_address1 { O 10 vector } iBuff_9_ce1 { O 1 bit } iBuff_9_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name iBuff_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_10 \
    op interface \
    ports { iBuff_10_address0 { O 10 vector } iBuff_10_ce0 { O 1 bit } iBuff_10_we0 { O 1 bit } iBuff_10_d0 { O 64 vector } iBuff_10_address1 { O 10 vector } iBuff_10_ce1 { O 1 bit } iBuff_10_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name iBuff_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_11 \
    op interface \
    ports { iBuff_11_address0 { O 10 vector } iBuff_11_ce0 { O 1 bit } iBuff_11_we0 { O 1 bit } iBuff_11_d0 { O 64 vector } iBuff_11_address1 { O 10 vector } iBuff_11_ce1 { O 1 bit } iBuff_11_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name iBuff_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_12 \
    op interface \
    ports { iBuff_12_address0 { O 10 vector } iBuff_12_ce0 { O 1 bit } iBuff_12_we0 { O 1 bit } iBuff_12_d0 { O 64 vector } iBuff_12_address1 { O 10 vector } iBuff_12_ce1 { O 1 bit } iBuff_12_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name iBuff_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_13 \
    op interface \
    ports { iBuff_13_address0 { O 10 vector } iBuff_13_ce0 { O 1 bit } iBuff_13_we0 { O 1 bit } iBuff_13_d0 { O 64 vector } iBuff_13_address1 { O 10 vector } iBuff_13_ce1 { O 1 bit } iBuff_13_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name iBuff_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_14 \
    op interface \
    ports { iBuff_14_address0 { O 10 vector } iBuff_14_ce0 { O 1 bit } iBuff_14_we0 { O 1 bit } iBuff_14_d0 { O 64 vector } iBuff_14_address1 { O 10 vector } iBuff_14_ce1 { O 1 bit } iBuff_14_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name iBuff_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_15 \
    op interface \
    ports { iBuff_15_address0 { O 10 vector } iBuff_15_ce0 { O 1 bit } iBuff_15_we0 { O 1 bit } iBuff_15_d0 { O 64 vector } iBuff_15_address1 { O 10 vector } iBuff_15_ce1 { O 1 bit } iBuff_15_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name iBuff_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_16 \
    op interface \
    ports { iBuff_16_address0 { O 10 vector } iBuff_16_ce0 { O 1 bit } iBuff_16_we0 { O 1 bit } iBuff_16_d0 { O 64 vector } iBuff_16_address1 { O 10 vector } iBuff_16_ce1 { O 1 bit } iBuff_16_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name iBuff_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_17 \
    op interface \
    ports { iBuff_17_address0 { O 10 vector } iBuff_17_ce0 { O 1 bit } iBuff_17_we0 { O 1 bit } iBuff_17_d0 { O 64 vector } iBuff_17_address1 { O 10 vector } iBuff_17_ce1 { O 1 bit } iBuff_17_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name iBuff_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_18 \
    op interface \
    ports { iBuff_18_address0 { O 10 vector } iBuff_18_ce0 { O 1 bit } iBuff_18_we0 { O 1 bit } iBuff_18_d0 { O 64 vector } iBuff_18_address1 { O 10 vector } iBuff_18_ce1 { O 1 bit } iBuff_18_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name iBuff_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_19 \
    op interface \
    ports { iBuff_19_address0 { O 10 vector } iBuff_19_ce0 { O 1 bit } iBuff_19_we0 { O 1 bit } iBuff_19_d0 { O 64 vector } iBuff_19_address1 { O 10 vector } iBuff_19_ce1 { O 1 bit } iBuff_19_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name iBuff_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_0 \
    op interface \
    ports { iBuff_0_address0 { O 10 vector } iBuff_0_ce0 { O 1 bit } iBuff_0_we0 { O 1 bit } iBuff_0_d0 { O 64 vector } iBuff_0_address1 { O 10 vector } iBuff_0_ce1 { O 1 bit } iBuff_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name arr1_V_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_19 \
    op interface \
    ports { arr1_V_19 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name arr1_V_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_18 \
    op interface \
    ports { arr1_V_18 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name arr1_V_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_17 \
    op interface \
    ports { arr1_V_17 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name arr1_V_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_16 \
    op interface \
    ports { arr1_V_16 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name arr1_V_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_15 \
    op interface \
    ports { arr1_V_15 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name arr1_V_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_14 \
    op interface \
    ports { arr1_V_14 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name arr1_V_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_13 \
    op interface \
    ports { arr1_V_13 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name arr1_V_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_12 \
    op interface \
    ports { arr1_V_12 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name arr1_V_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_11 \
    op interface \
    ports { arr1_V_11 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name arr1_V_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_10 \
    op interface \
    ports { arr1_V_10 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name arr1_V_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_9 \
    op interface \
    ports { arr1_V_9 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name arr1_V_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_8 \
    op interface \
    ports { arr1_V_8 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name arr1_V_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_7 \
    op interface \
    ports { arr1_V_7 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name arr1_V_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_6 \
    op interface \
    ports { arr1_V_6 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name arr1_V_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_5 \
    op interface \
    ports { arr1_V_5 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name arr1_V_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_4 \
    op interface \
    ports { arr1_V_4 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name arr1_V_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_3 \
    op interface \
    ports { arr1_V_3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name arr1_V_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_2 \
    op interface \
    ports { arr1_V_2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name arr1_V_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V_1 \
    op interface \
    ports { arr1_V_1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name arr1_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr1_V \
    op interface \
    ports { arr1_V { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name arr3_V_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_19 \
    op interface \
    ports { arr3_V_19 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name arr3_V_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_18 \
    op interface \
    ports { arr3_V_18 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name arr3_V_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_17 \
    op interface \
    ports { arr3_V_17 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name arr3_V_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_16 \
    op interface \
    ports { arr3_V_16 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name arr3_V_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_15 \
    op interface \
    ports { arr3_V_15 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name arr3_V_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_14 \
    op interface \
    ports { arr3_V_14 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name arr3_V_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_13 \
    op interface \
    ports { arr3_V_13 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name arr3_V_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_12 \
    op interface \
    ports { arr3_V_12 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name arr3_V_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_11 \
    op interface \
    ports { arr3_V_11 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name arr3_V_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_10 \
    op interface \
    ports { arr3_V_10 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name arr3_V_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_9 \
    op interface \
    ports { arr3_V_9 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name arr3_V_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_8 \
    op interface \
    ports { arr3_V_8 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name arr3_V_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_7 \
    op interface \
    ports { arr3_V_7 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name arr3_V_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_6 \
    op interface \
    ports { arr3_V_6 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name arr3_V_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_5 \
    op interface \
    ports { arr3_V_5 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name arr3_V_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_4 \
    op interface \
    ports { arr3_V_4 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name arr3_V_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_3 \
    op interface \
    ports { arr3_V_3 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name arr3_V_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_2 \
    op interface \
    ports { arr3_V_2 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name arr3_V_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V_1 \
    op interface \
    ports { arr3_V_1 { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name arr3_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arr3_V \
    op interface \
    ports { arr3_V { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name mul_ln175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln175 \
    op interface \
    ports { mul_ln175 { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name bramtotal \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bramtotal \
    op interface \
    ports { bramtotal { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name j \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_j \
    op interface \
    ports { j { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name icmp_ln233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln233 \
    op interface \
    ports { icmp_ln233 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name icmp_ln233_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_icmp_ln233_1 \
    op interface \
    ports { icmp_ln233_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name or_ln233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_or_ln233 \
    op interface \
    ports { or_ln233 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name mul172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul172 \
    op interface \
    ports { mul172 { I 18 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name tmp216_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp216_cast \
    op interface \
    ports { tmp216_cast { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName edgetracing_accel_flow_control_loop_pipe_sequential_init_U
set CompName edgetracing_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix edgetracing_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


