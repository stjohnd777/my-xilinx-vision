set SynModuleInfo {
  {SRCNAME entry_proc5 MODELNAME entry_proc5 RTLNAME threshold_accel_entry_proc5}
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME threshold_accel_Block_entry1_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 RTLNAME threshold_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1
    SUBMODULES {
      {MODELNAME threshold_accel_flow_control_loop_pipe_sequential_init RTLNAME threshold_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME threshold_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME threshold_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME threshold_accel_mul_mul_16ns_16ns_32_3_1 RTLNAME threshold_accel_mul_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc3 MODELNAME entry_proc3 RTLNAME threshold_accel_entry_proc3}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME threshold_accel_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<1>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_1_Pipeline_MMIterInLoopRow RTLNAME threshold_accel_AxiStream2MatStream_1_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<1> MODELNAME AxiStream2MatStream_1_s RTLNAME threshold_accel_AxiStream2MatStream_1_s
    SUBMODULES {
      {MODELNAME threshold_accel_mul_32s_32s_32_1_1 RTLNAME threshold_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME threshold_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME threshold_accel_fifo_w32_d3_S RTLNAME threshold_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME threshold_accel_fifo_w32_d3_S RTLNAME threshold_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME threshold_accel_fifo_w4_d2_S RTLNAME threshold_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME threshold_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME threshold_accel_fifo_w256_d2_S RTLNAME threshold_accel_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME threshold_accel_fifo_w32_d2_S RTLNAME threshold_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME threshold_accel_fifo_w32_d2_S RTLNAME threshold_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME threshold_accel_start_for_AxiStream2Mat_U0 RTLNAME threshold_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<256, 0, 1080, 1920, 1, 1>} MODELNAME Array2xfMat_256_0_1080_1920_1_1_s RTLNAME threshold_accel_Array2xfMat_256_0_1080_1920_1_1_s}
  {SRCNAME {Threshold<0, 0, 1080, 1920, 1, 1, 1>_Pipeline_colLoop} MODELNAME Threshold_0_0_1080_1920_1_1_1_Pipeline_colLoop RTLNAME threshold_accel_Threshold_0_0_1080_1920_1_1_1_Pipeline_colLoop}
  {SRCNAME {Threshold<0, 0, 1080, 1920, 1, 1, 1>} MODELNAME Threshold_0_0_1080_1920_1_1_1_s RTLNAME threshold_accel_Threshold_0_0_1080_1920_1_1_1_s}
  {SRCNAME entry_proc4 MODELNAME entry_proc4 RTLNAME threshold_accel_entry_proc4}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME threshold_accel_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME threshold_accel_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME threshold_accel_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME threshold_accel_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<1>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_1_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME threshold_accel_MatStream2AxiStream_1_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<1> MODELNAME MatStream2AxiStream_1_s RTLNAME threshold_accel_MatStream2AxiStream_1_s
    SUBMODULES {
      {MODELNAME threshold_accel_mul_mul_16ns_16ns_32_4_1 RTLNAME threshold_accel_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME threshold_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME threshold_accel_fifo_w16_d3_S RTLNAME threshold_accel_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME threshold_accel_fifo_w32_d3_S_x RTLNAME threshold_accel_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME threshold_accel_fifo_w4_d2_S_x RTLNAME threshold_accel_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME threshold_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME threshold_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME threshold_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME threshold_accel_fifo_w64_d4_S RTLNAME threshold_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME threshold_accel_fifo_w17_d2_S RTLNAME threshold_accel_fifo_w17_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME threshold_accel_fifo_w17_d2_S RTLNAME threshold_accel_fifo_w17_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_U}
      {MODELNAME threshold_accel_fifo_w256_d2_S_x RTLNAME threshold_accel_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<256, 0, 1080, 1920, 1, 1, 1>} MODELNAME xfMat2Array_256_0_1080_1920_1_1_1_s RTLNAME threshold_accel_xfMat2Array_256_0_1080_1920_1_1_1_s}
  {SRCNAME threshold_accel MODELNAME threshold_accel RTLNAME threshold_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME threshold_accel_fifo_w64_d5_S RTLNAME threshold_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out_c_U}
      {MODELNAME threshold_accel_fifo_w8_d4_S RTLNAME threshold_accel_fifo_w8_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME thresh_c_U}
      {MODELNAME threshold_accel_fifo_w8_d4_S RTLNAME threshold_accel_fifo_w8_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME maxval_c_U}
      {MODELNAME threshold_accel_fifo_w32_d4_S RTLNAME threshold_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_rows_channel_U}
      {MODELNAME threshold_accel_fifo_w32_d4_S RTLNAME threshold_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_cols_channel_U}
      {MODELNAME threshold_accel_fifo_w32_d2_S_x RTLNAME threshold_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c9_channel_U}
      {MODELNAME threshold_accel_fifo_w32_d2_S_x RTLNAME threshold_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c10_channel_U}
      {MODELNAME threshold_accel_fifo_w8_d1_S RTLNAME threshold_accel_fifo_w8_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_data_U}
      {MODELNAME threshold_accel_fifo_w32_d2_S_x RTLNAME threshold_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c_U}
      {MODELNAME threshold_accel_fifo_w32_d2_S_x RTLNAME threshold_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c_U}
      {MODELNAME threshold_accel_fifo_w8_d1_S RTLNAME threshold_accel_fifo_w8_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_mat_data_U}
      {MODELNAME threshold_accel_start_for_Threshold_0_0_1080_1920_1_1_1_U0 RTLNAME threshold_accel_start_for_Threshold_0_0_1080_1920_1_1_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Threshold_0_0_1080_1920_1_1_1_U0_U}
      {MODELNAME threshold_accel_gmem1_m_axi RTLNAME threshold_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME threshold_accel_gmem2_m_axi RTLNAME threshold_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME threshold_accel_control_s_axi RTLNAME threshold_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
