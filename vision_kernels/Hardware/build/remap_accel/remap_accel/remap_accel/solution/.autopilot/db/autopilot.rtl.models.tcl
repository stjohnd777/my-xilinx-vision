set SynModuleInfo {
  {SRCNAME entry_proc7 MODELNAME entry_proc7 RTLNAME remap_accel_entry_proc7}
  {SRCNAME Block_entry6_proc MODELNAME Block_entry6_proc RTLNAME remap_accel_Block_entry6_proc}
  {SRCNAME Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1 MODELNAME Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1 RTLNAME remap_accel_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1
    SUBMODULES {
      {MODELNAME remap_accel_flow_control_loop_pipe_sequential_init RTLNAME remap_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME remap_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Loop_VITIS_LOOP_46_1_proc1 MODELNAME Loop_VITIS_LOOP_46_1_proc1 RTLNAME remap_accel_Loop_VITIS_LOOP_46_1_proc1
    SUBMODULES {
      {MODELNAME remap_accel_mul_mul_11ns_11ns_22_4_1 RTLNAME remap_accel_mul_mul_11ns_11ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 RTLNAME remap_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1}
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME remap_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME remap_accel_mul_mul_16ns_16ns_32_3_1 RTLNAME remap_accel_mul_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mul_mul_16ns_16ns_22_4_1 RTLNAME remap_accel_mul_mul_16ns_16ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc5 MODELNAME entry_proc5 RTLNAME remap_accel_entry_proc5}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME remap_accel_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME remap_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME remap_accel_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME remap_accel_mul_32s_32s_32_1_1 RTLNAME remap_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME remap_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME remap_accel_fifo_w32_d3_S RTLNAME remap_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME remap_accel_fifo_w32_d3_S RTLNAME remap_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME remap_accel_fifo_w4_d2_S RTLNAME remap_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME remap_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME remap_accel_fifo_w8_d2_S RTLNAME remap_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME remap_accel_fifo_w32_d2_S RTLNAME remap_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME remap_accel_fifo_w32_d2_S RTLNAME remap_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME remap_accel_start_for_AxiStream2Mat_U0 RTLNAME remap_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<8, 0, 1080, 1920, 1, 2>} MODELNAME Array2xfMat_8_0_1080_1920_1_2_s RTLNAME remap_accel_Array2xfMat_8_0_1080_1920_1_2_s}
  {SRCNAME {remap<8, 1, 0, 4, 0, 1080, 1920, 1, false, 2, 2, 2, 2>_Block_entry1_proc} MODELNAME remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc RTLNAME remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc}
  {SRCNAME {xFRemapLI<0, 0, 1, 4, 8, 1080, 1920, 1, 2, 2, 2, 2, false>_Pipeline_1} MODELNAME xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1 RTLNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1}
  {SRCNAME {xFRemapLI<0, 0, 1, 4, 8, 1080, 1920, 1, 2, 2, 2, 2, false>_Pipeline_2} MODELNAME xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2 RTLNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2}
  {SRCNAME {xFRemapLI<0, 0, 1, 4, 8, 1080, 1920, 1, 2, 2, 2, 2, false>_Pipeline_loop_width} MODELNAME xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width RTLNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width
    SUBMODULES {
      {MODELNAME remap_accel_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME remap_accel_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME remap_accel_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mul_4s_11ns_13_1_1 RTLNAME remap_accel_mul_4s_11ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mul_6ns_5ns_11_1_1 RTLNAME remap_accel_mul_6ns_5ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mul_5ns_5ns_10_1_1 RTLNAME remap_accel_mul_5ns_5ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mul_mul_11ns_8ns_18_4_1 RTLNAME remap_accel_mul_mul_11ns_8ns_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_ama_submuladd_11ns_11ns_8ns_18ns_18_4_1 RTLNAME remap_accel_ama_submuladd_11ns_11ns_8ns_18ns_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mac_muladd_10ns_8ns_18ns_18_4_1 RTLNAME remap_accel_mac_muladd_10ns_8ns_18ns_18_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_buf_V_RAM_Abkb RTLNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_buf_V_RAM_Abkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFRemapLI<0, 0, 1, 4, 8, 1080, 1920, 1, 2, 2, 2, 2, false>} MODELNAME xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s RTLNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s
    SUBMODULES {
      {MODELNAME remap_accel_sitofp_32s_32_5_no_dsp_1 RTLNAME remap_accel_sitofp_32s_32_5_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_mul_2ns_11ns_12_1_1 RTLNAME remap_accel_mul_2ns_11ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s_r1_RAM_AUTO_1R1W RTLNAME remap_accel_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s_r1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {remap<8, 1, 0, 4, 0, 1080, 1920, 1, false, 2, 2, 2, 2>} MODELNAME remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s RTLNAME remap_accel_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s
    SUBMODULES {
      {MODELNAME remap_accel_fifo_w16_d2_S RTLNAME remap_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_loc_channel_U}
      {MODELNAME remap_accel_fifo_w16_d2_S RTLNAME remap_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_loc_channel_U}
    }
  }
  {SRCNAME entry_proc6 MODELNAME entry_proc6 RTLNAME remap_accel_entry_proc6}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME remap_accel_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME remap_accel_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME remap_accel_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME remap_accel_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME remap_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME remap_accel_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME remap_accel_mul_mul_16ns_16ns_32_4_1 RTLNAME remap_accel_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME remap_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME remap_accel_fifo_w16_d3_S RTLNAME remap_accel_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME remap_accel_fifo_w32_d3_S_x RTLNAME remap_accel_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME remap_accel_fifo_w4_d2_S_x RTLNAME remap_accel_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME remap_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME remap_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME remap_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME remap_accel_fifo_w64_d4_S RTLNAME remap_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME remap_accel_fifo_w22_d2_S RTLNAME remap_accel_fifo_w22_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME remap_accel_fifo_w22_d2_S RTLNAME remap_accel_fifo_w22_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_U}
      {MODELNAME remap_accel_fifo_w8_d2_S_x RTLNAME remap_accel_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<8, 0, 1080, 1920, 1, 2, 1>} MODELNAME xfMat2Array_8_0_1080_1920_1_2_1_s RTLNAME remap_accel_xfMat2Array_8_0_1080_1920_1_2_1_s}
  {SRCNAME remap_accel MODELNAME remap_accel RTLNAME remap_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME remap_accel_fifo_w64_d5_S RTLNAME remap_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out_c_U}
      {MODELNAME remap_accel_fifo_w32_d4_S RTLNAME remap_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_rows_U}
      {MODELNAME remap_accel_fifo_w32_d4_S RTLNAME remap_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_cols_U}
      {MODELNAME remap_accel_fifo_w32_d2_S_x RTLNAME remap_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_rows_c13_channel_U}
      {MODELNAME remap_accel_fifo_w32_d2_S_x RTLNAME remap_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_cols_c14_channel_U}
      {MODELNAME remap_accel_fifo_w32_d2_S_x RTLNAME remap_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mapX_data_U}
      {MODELNAME remap_accel_fifo_w32_d2_S_x RTLNAME remap_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mapY_data_U}
      {MODELNAME remap_accel_fifo_w8_d2_S_x0 RTLNAME remap_accel_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_data_U}
      {MODELNAME remap_accel_fifo_w32_d2_S_x RTLNAME remap_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_rows_c_U}
      {MODELNAME remap_accel_fifo_w32_d2_S_x RTLNAME remap_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_cols_c_U}
      {MODELNAME remap_accel_fifo_w8_d2_S_x0 RTLNAME remap_accel_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_data_U}
      {MODELNAME remap_accel_start_for_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0 RTLNAME remap_accel_start_for_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0_U}
      {MODELNAME remap_accel_gmem0_m_axi RTLNAME remap_accel_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME remap_accel_gmem1_m_axi RTLNAME remap_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME remap_accel_gmem2_m_axi RTLNAME remap_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME remap_accel_gmem3_m_axi RTLNAME remap_accel_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME remap_accel_control_s_axi RTLNAME remap_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
