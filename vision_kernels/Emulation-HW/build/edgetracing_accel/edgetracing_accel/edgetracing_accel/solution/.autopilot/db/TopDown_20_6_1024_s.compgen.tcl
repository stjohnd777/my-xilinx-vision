# This script segment is generated automatically by AutoPilot

set id 156
set name edgetracing_accel_mul_mul_6ns_11ns_17_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 6
set in0_signed 0
set in1_width 11
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 17
set arg_lists {i0 {6 0 +} i1 {11 0 +} p {17 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 157
set name edgetracing_accel_mul_mul_12s_6ns_18_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 12
set in0_signed 1
set in1_width 6
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {12 1 +} i1 {6 0 +} p {18 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
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
    id 160 \
    name iBuff_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_0 \
    op interface \
    ports { iBuff_0_address0 { O 10 vector } iBuff_0_ce0 { O 1 bit } iBuff_0_we0 { O 1 bit } iBuff_0_d0 { O 64 vector } iBuff_0_q0 { I 64 vector } iBuff_0_address1 { O 10 vector } iBuff_0_ce1 { O 1 bit } iBuff_0_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name iBuff_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_1 \
    op interface \
    ports { iBuff_1_address0 { O 10 vector } iBuff_1_ce0 { O 1 bit } iBuff_1_we0 { O 1 bit } iBuff_1_d0 { O 64 vector } iBuff_1_q0 { I 64 vector } iBuff_1_address1 { O 10 vector } iBuff_1_ce1 { O 1 bit } iBuff_1_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name iBuff_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_2 \
    op interface \
    ports { iBuff_2_address0 { O 10 vector } iBuff_2_ce0 { O 1 bit } iBuff_2_we0 { O 1 bit } iBuff_2_d0 { O 64 vector } iBuff_2_q0 { I 64 vector } iBuff_2_address1 { O 10 vector } iBuff_2_ce1 { O 1 bit } iBuff_2_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name iBuff_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_3 \
    op interface \
    ports { iBuff_3_address0 { O 10 vector } iBuff_3_ce0 { O 1 bit } iBuff_3_we0 { O 1 bit } iBuff_3_d0 { O 64 vector } iBuff_3_q0 { I 64 vector } iBuff_3_address1 { O 10 vector } iBuff_3_ce1 { O 1 bit } iBuff_3_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name iBuff_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_4 \
    op interface \
    ports { iBuff_4_address0 { O 10 vector } iBuff_4_ce0 { O 1 bit } iBuff_4_we0 { O 1 bit } iBuff_4_d0 { O 64 vector } iBuff_4_q0 { I 64 vector } iBuff_4_address1 { O 10 vector } iBuff_4_ce1 { O 1 bit } iBuff_4_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name iBuff_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_5 \
    op interface \
    ports { iBuff_5_address0 { O 10 vector } iBuff_5_ce0 { O 1 bit } iBuff_5_we0 { O 1 bit } iBuff_5_d0 { O 64 vector } iBuff_5_q0 { I 64 vector } iBuff_5_address1 { O 10 vector } iBuff_5_ce1 { O 1 bit } iBuff_5_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name iBuff_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_6 \
    op interface \
    ports { iBuff_6_address0 { O 10 vector } iBuff_6_ce0 { O 1 bit } iBuff_6_we0 { O 1 bit } iBuff_6_d0 { O 64 vector } iBuff_6_q0 { I 64 vector } iBuff_6_address1 { O 10 vector } iBuff_6_ce1 { O 1 bit } iBuff_6_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name iBuff_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_7 \
    op interface \
    ports { iBuff_7_address0 { O 10 vector } iBuff_7_ce0 { O 1 bit } iBuff_7_we0 { O 1 bit } iBuff_7_d0 { O 64 vector } iBuff_7_q0 { I 64 vector } iBuff_7_address1 { O 10 vector } iBuff_7_ce1 { O 1 bit } iBuff_7_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name iBuff_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_8 \
    op interface \
    ports { iBuff_8_address0 { O 10 vector } iBuff_8_ce0 { O 1 bit } iBuff_8_we0 { O 1 bit } iBuff_8_d0 { O 64 vector } iBuff_8_q0 { I 64 vector } iBuff_8_address1 { O 10 vector } iBuff_8_ce1 { O 1 bit } iBuff_8_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name iBuff_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_9 \
    op interface \
    ports { iBuff_9_address0 { O 10 vector } iBuff_9_ce0 { O 1 bit } iBuff_9_we0 { O 1 bit } iBuff_9_d0 { O 64 vector } iBuff_9_q0 { I 64 vector } iBuff_9_address1 { O 10 vector } iBuff_9_ce1 { O 1 bit } iBuff_9_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name iBuff_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_10 \
    op interface \
    ports { iBuff_10_address0 { O 10 vector } iBuff_10_ce0 { O 1 bit } iBuff_10_we0 { O 1 bit } iBuff_10_d0 { O 64 vector } iBuff_10_q0 { I 64 vector } iBuff_10_address1 { O 10 vector } iBuff_10_ce1 { O 1 bit } iBuff_10_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name iBuff_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_11 \
    op interface \
    ports { iBuff_11_address0 { O 10 vector } iBuff_11_ce0 { O 1 bit } iBuff_11_we0 { O 1 bit } iBuff_11_d0 { O 64 vector } iBuff_11_q0 { I 64 vector } iBuff_11_address1 { O 10 vector } iBuff_11_ce1 { O 1 bit } iBuff_11_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name iBuff_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_12 \
    op interface \
    ports { iBuff_12_address0 { O 10 vector } iBuff_12_ce0 { O 1 bit } iBuff_12_we0 { O 1 bit } iBuff_12_d0 { O 64 vector } iBuff_12_q0 { I 64 vector } iBuff_12_address1 { O 10 vector } iBuff_12_ce1 { O 1 bit } iBuff_12_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name iBuff_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_13 \
    op interface \
    ports { iBuff_13_address0 { O 10 vector } iBuff_13_ce0 { O 1 bit } iBuff_13_we0 { O 1 bit } iBuff_13_d0 { O 64 vector } iBuff_13_q0 { I 64 vector } iBuff_13_address1 { O 10 vector } iBuff_13_ce1 { O 1 bit } iBuff_13_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name iBuff_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_14 \
    op interface \
    ports { iBuff_14_address0 { O 10 vector } iBuff_14_ce0 { O 1 bit } iBuff_14_we0 { O 1 bit } iBuff_14_d0 { O 64 vector } iBuff_14_q0 { I 64 vector } iBuff_14_address1 { O 10 vector } iBuff_14_ce1 { O 1 bit } iBuff_14_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name iBuff_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_15 \
    op interface \
    ports { iBuff_15_address0 { O 10 vector } iBuff_15_ce0 { O 1 bit } iBuff_15_we0 { O 1 bit } iBuff_15_d0 { O 64 vector } iBuff_15_q0 { I 64 vector } iBuff_15_address1 { O 10 vector } iBuff_15_ce1 { O 1 bit } iBuff_15_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name iBuff_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_16 \
    op interface \
    ports { iBuff_16_address0 { O 10 vector } iBuff_16_ce0 { O 1 bit } iBuff_16_we0 { O 1 bit } iBuff_16_d0 { O 64 vector } iBuff_16_q0 { I 64 vector } iBuff_16_address1 { O 10 vector } iBuff_16_ce1 { O 1 bit } iBuff_16_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name iBuff_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_17 \
    op interface \
    ports { iBuff_17_address0 { O 10 vector } iBuff_17_ce0 { O 1 bit } iBuff_17_we0 { O 1 bit } iBuff_17_d0 { O 64 vector } iBuff_17_q0 { I 64 vector } iBuff_17_address1 { O 10 vector } iBuff_17_ce1 { O 1 bit } iBuff_17_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name iBuff_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_18 \
    op interface \
    ports { iBuff_18_address0 { O 10 vector } iBuff_18_ce0 { O 1 bit } iBuff_18_we0 { O 1 bit } iBuff_18_d0 { O 64 vector } iBuff_18_q0 { I 64 vector } iBuff_18_address1 { O 10 vector } iBuff_18_ce1 { O 1 bit } iBuff_18_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name iBuff_19 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename iBuff_19 \
    op interface \
    ports { iBuff_19_address0 { O 10 vector } iBuff_19_ce0 { O 1 bit } iBuff_19_we0 { O 1 bit } iBuff_19_d0 { O 64 vector } iBuff_19_q0 { I 64 vector } iBuff_19_address1 { O 10 vector } iBuff_19_ce1 { O 1 bit } iBuff_19_q1 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'iBuff_19'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
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
    id 181 \
    name bdrows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bdrows \
    op interface \
    ports { bdrows { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name ram_row_depth \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ram_row_depth \
    op interface \
    ports { ram_row_depth { I 6 vector } } \
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


