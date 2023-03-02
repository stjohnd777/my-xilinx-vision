set SynModuleInfo {
  {SRCNAME entry_proc8 MODELNAME entry_proc8 RTLNAME gaussian_filter_accel_entry_proc8}
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME gaussian_filter_accel_Block_entry1_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 RTLNAME gaussian_filter_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_flow_control_loop_pipe_sequential_init RTLNAME gaussian_filter_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME gaussian_filter_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME gaussian_filter_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_mul_mul_16ns_16ns_32_3_1 RTLNAME gaussian_filter_accel_mul_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc6 MODELNAME entry_proc6 RTLNAME gaussian_filter_accel_entry_proc6}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME gaussian_filter_accel_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME gaussian_filter_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME gaussian_filter_accel_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_mul_32s_32s_32_1_1 RTLNAME gaussian_filter_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME gaussian_filter_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_fifo_w32_d3_S RTLNAME gaussian_filter_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d3_S RTLNAME gaussian_filter_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w4_d2_S RTLNAME gaussian_filter_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME gaussian_filter_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_fifo_w256_d2_S RTLNAME gaussian_filter_accel_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d2_S RTLNAME gaussian_filter_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d2_S RTLNAME gaussian_filter_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME gaussian_filter_accel_start_for_AxiStream2Mat_U0 RTLNAME gaussian_filter_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<256, 0, 2160, 3840, 1, 2>} MODELNAME Array2xfMat_256_0_2160_3840_1_2_s RTLNAME gaussian_filter_accel_Array2xfMat_256_0_2160_3840_1_2_s}
  {SRCNAME {GaussianBlur<3, 0, 0, 2160, 3840, 1, 2, 2>_Pipeline_VITIS_LOOP_48_1} MODELNAME GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1 RTLNAME gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_sitofp_32s_32_5_no_dsp_1 RTLNAME gaussian_filter_accel_sitofp_32s_32_5_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_fexp_32ns_32ns_32_9_full_dsp_1 RTLNAME gaussian_filter_accel_fexp_32ns_32ns_32_9_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 8 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {GaussianBlur<3, 0, 0, 2160, 3840, 1, 2, 2>_Pipeline_VITIS_LOOP_58_2} MODELNAME GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2 RTLNAME gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_sitofp_32ns_32_5_no_dsp_1 RTLNAME gaussian_filter_accel_sitofp_32ns_32_5_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_fpext_32ns_64_2_no_dsp_1 RTLNAME gaussian_filter_accel_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME gaussian_filter_accel_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME xfGaussianFilter3x3_Pipeline_Clear_Row_Loop MODELNAME xfGaussianFilter3x3_Pipeline_Clear_Row_Loop RTLNAME gaussian_filter_accel_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop}
  {SRCNAME xFapplygaussian3x3<0> MODELNAME xFapplygaussian3x3_0_s RTLNAME gaussian_filter_accel_xFapplygaussian3x3_0_s
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_mul_8ns_8ns_16_1_0 RTLNAME gaussian_filter_accel_mul_8ns_8ns_16_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_am_addmul_9ns_9ns_8ns_18_4_0 RTLNAME gaussian_filter_accel_am_addmul_9ns_9ns_8ns_18_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_am_addmul_8ns_8ns_8ns_17_4_0 RTLNAME gaussian_filter_accel_am_addmul_8ns_8ns_8ns_17_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_ama_addmuladd_18ns_17ns_8ns_16ns_24_4_0 RTLNAME gaussian_filter_accel_ama_addmuladd_18ns_17ns_8ns_16ns_24_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_ama_addmuladd_17ns_16ns_8ns_24ns_24_4_0 RTLNAME gaussian_filter_accel_ama_addmuladd_17ns_16ns_8ns_24ns_24_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xfGaussianFilter3x3<0, 2160, 3840, 1, 0, 1, 2, 2, 1, 3840>_Pipeline_Col_Loop} MODELNAME xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop RTLNAME gaussian_filter_accel_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_mux_32_8_1_1 RTLNAME gaussian_filter_accel_mux_32_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xfGaussianFilter3x3<0, 2160, 3840, 1, 0, 1, 2, 2, 1, 3840>} MODELNAME xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s RTLNAME gaussian_filter_accel_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_buf_V_RAM_S2P_BRAM_1R1W RTLNAME gaussian_filter_accel_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_buf_V_RAM_S2P_BRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {GaussianBlur<3, 0, 0, 2160, 3840, 1, 2, 2>} MODELNAME GaussianBlur_3_0_0_2160_3840_1_2_2_s RTLNAME gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_s
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME gaussian_filter_accel_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_fdiv_32ns_32ns_32_12_no_dsp_1 RTLNAME gaussian_filter_accel_fdiv_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME gaussian_filter_accel_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_faddfsub_32ns_32ns_32_6_full_dsp_1 RTLNAME gaussian_filter_accel_faddfsub_32ns_32ns_32_6_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 5 ALLOW_PRAGMA 1}
      {MODELNAME gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_s_cf_RAM_AUTO_1R1W RTLNAME gaussian_filter_accel_GaussianBlur_3_0_0_2160_3840_1_2_2_s_cf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc7 MODELNAME entry_proc7 RTLNAME gaussian_filter_accel_entry_proc7}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME gaussian_filter_accel_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME gaussian_filter_accel_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME gaussian_filter_accel_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME gaussian_filter_accel_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME gaussian_filter_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME gaussian_filter_accel_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_mul_mul_16ns_16ns_32_4_1 RTLNAME gaussian_filter_accel_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME gaussian_filter_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_fifo_w16_d3_S RTLNAME gaussian_filter_accel_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d3_S_x RTLNAME gaussian_filter_accel_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w4_d2_S_x RTLNAME gaussian_filter_accel_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME gaussian_filter_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME gaussian_filter_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME gaussian_filter_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_fifo_w64_d4_S RTLNAME gaussian_filter_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w19_d2_S RTLNAME gaussian_filter_accel_fifo_w19_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME gaussian_filter_accel_fifo_w19_d2_S RTLNAME gaussian_filter_accel_fifo_w19_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_U}
      {MODELNAME gaussian_filter_accel_fifo_w256_d2_S_x RTLNAME gaussian_filter_accel_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<256, 0, 2160, 3840, 1, 2, 1>} MODELNAME xfMat2Array_256_0_2160_3840_1_2_1_s RTLNAME gaussian_filter_accel_xfMat2Array_256_0_2160_3840_1_2_1_s}
  {SRCNAME gaussian_filter_accel MODELNAME gaussian_filter_accel RTLNAME gaussian_filter_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME gaussian_filter_accel_fifo_w64_d5_S RTLNAME gaussian_filter_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d4_S RTLNAME gaussian_filter_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sigma_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d4_S RTLNAME gaussian_filter_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_rows_channel_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d4_S RTLNAME gaussian_filter_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_cols_channel_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d2_S_x RTLNAME gaussian_filter_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c9_channel_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d2_S_x RTLNAME gaussian_filter_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c10_channel_U}
      {MODELNAME gaussian_filter_accel_fifo_w8_d2_S RTLNAME gaussian_filter_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_data_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d2_S_x RTLNAME gaussian_filter_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w32_d2_S_x RTLNAME gaussian_filter_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c_U}
      {MODELNAME gaussian_filter_accel_fifo_w8_d2_S RTLNAME gaussian_filter_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_data_U}
      {MODELNAME gaussian_filter_accel_start_for_GaussianBlur_3_0_0_2160_3840_1_2_2_U0 RTLNAME gaussian_filter_accel_start_for_GaussianBlur_3_0_0_2160_3840_1_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_GaussianBlur_3_0_0_2160_3840_1_2_2_U0_U}
      {MODELNAME gaussian_filter_accel_gmem1_m_axi RTLNAME gaussian_filter_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gaussian_filter_accel_gmem2_m_axi RTLNAME gaussian_filter_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME gaussian_filter_accel_control_s_axi RTLNAME gaussian_filter_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
