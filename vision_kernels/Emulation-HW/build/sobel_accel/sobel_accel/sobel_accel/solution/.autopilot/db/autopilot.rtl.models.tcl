set SynModuleInfo {
  {SRCNAME entry_proc11 MODELNAME entry_proc11 RTLNAME sobel_accel_entry_proc11}
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME sobel_accel_Block_entry1_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 RTLNAME sobel_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1
    SUBMODULES {
      {MODELNAME sobel_accel_flow_control_loop_pipe_sequential_init RTLNAME sobel_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sobel_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME sobel_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME sobel_accel_mul_mul_16ns_16ns_32_3_1 RTLNAME sobel_accel_mul_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc9 MODELNAME entry_proc9 RTLNAME sobel_accel_entry_proc9}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME sobel_accel_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME sobel_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME sobel_accel_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME sobel_accel_mul_32s_32s_32_1_1 RTLNAME sobel_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME sobel_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME sobel_accel_fifo_w32_d3_S RTLNAME sobel_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME sobel_accel_fifo_w32_d3_S RTLNAME sobel_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME sobel_accel_fifo_w4_d2_S RTLNAME sobel_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME sobel_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME sobel_accel_fifo_w256_d2_S RTLNAME sobel_accel_fifo_w256_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME sobel_accel_fifo_w32_d2_S RTLNAME sobel_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME sobel_accel_fifo_w32_d2_S RTLNAME sobel_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME sobel_accel_start_for_AxiStream2Mat_U0 RTLNAME sobel_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<256, 0, 2160, 3840, 1, 2>} MODELNAME Array2xfMat_256_0_2160_3840_1_2_s RTLNAME sobel_accel_Array2xfMat_256_0_2160_3840_1_2_s}
  {SRCNAME xFSobelFilter3x3_Pipeline_Clear_Row_Loop MODELNAME xFSobelFilter3x3_Pipeline_Clear_Row_Loop RTLNAME sobel_accel_xFSobelFilter3x3_Pipeline_Clear_Row_Loop}
  {SRCNAME {xFGradientX3x3<0, 0>} MODELNAME xFGradientX3x3_0_0_s RTLNAME sobel_accel_xFGradientX3x3_0_0_s}
  {SRCNAME {xFGradientY3x3<0, 0>} MODELNAME xFGradientY3x3_0_0_s RTLNAME sobel_accel_xFGradientY3x3_0_0_s}
  {SRCNAME {xFSobel3x3<1, 1, 0, 0>} MODELNAME xFSobel3x3_1_1_0_0_s RTLNAME sobel_accel_xFSobel3x3_1_1_0_0_s}
  {SRCNAME xFSobelFilter3x3_Pipeline_Col_Loop MODELNAME xFSobelFilter3x3_Pipeline_Col_Loop RTLNAME sobel_accel_xFSobelFilter3x3_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME sobel_accel_mux_32_8_1_1 RTLNAME sobel_accel_mux_32_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFSobelFilter3x3<0, 0, 2160, 3840, 1, 0, 0, 1, 2, 2, 2, 1, 1, 3840, false>} MODELNAME xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s RTLNAME sobel_accel_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s
    SUBMODULES {
      {MODELNAME sobel_accel_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_buf_V_RAM_S2P_Bbkb RTLNAME sobel_accel_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_buf_V_RAM_S2P_Bbkb BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {Sobel<0, 3, 0, 0, 2160, 3840, 1, false, 2, 2, 2>} MODELNAME Sobel_0_3_0_0_2160_3840_1_false_2_2_2_s RTLNAME sobel_accel_Sobel_0_3_0_0_2160_3840_1_false_2_2_2_s}
  {SRCNAME entry_proc10 MODELNAME entry_proc10 RTLNAME sobel_accel_entry_proc10}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME sobel_accel_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME sobel_accel_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME sobel_accel_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME sobel_accel_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME sobel_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME sobel_accel_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME sobel_accel_mul_mul_16ns_16ns_32_4_1 RTLNAME sobel_accel_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME sobel_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME sobel_accel_fifo_w16_d3_S RTLNAME sobel_accel_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME sobel_accel_fifo_w32_d3_S_x RTLNAME sobel_accel_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME sobel_accel_fifo_w4_d2_S_x RTLNAME sobel_accel_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME sobel_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME sobel_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME sobel_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME sobel_accel_fifo_w64_d4_S RTLNAME sobel_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME sobel_accel_fifo_w19_d2_S RTLNAME sobel_accel_fifo_w19_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME sobel_accel_fifo_w19_d2_S RTLNAME sobel_accel_fifo_w19_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_U}
      {MODELNAME sobel_accel_fifo_w256_d2_S_x RTLNAME sobel_accel_fifo_w256_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<256, 0, 2160, 3840, 1, 2, 1>} MODELNAME xfMat2Array_256_0_2160_3840_1_2_1_s RTLNAME sobel_accel_xfMat2Array_256_0_2160_3840_1_2_1_s}
  {SRCNAME {xfMat2Array<256, 0, 2160, 3840, 1, 2, 1>.2} MODELNAME xfMat2Array_256_0_2160_3840_1_2_1_2 RTLNAME sobel_accel_xfMat2Array_256_0_2160_3840_1_2_1_2}
  {SRCNAME sobel_accel MODELNAME sobel_accel RTLNAME sobel_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME sobel_accel_fifo_w64_d5_S RTLNAME sobel_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out1_c_U}
      {MODELNAME sobel_accel_fifo_w64_d5_S RTLNAME sobel_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out2_c_U}
      {MODELNAME sobel_accel_fifo_w32_d4_S RTLNAME sobel_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dstgx_rows_channel_U}
      {MODELNAME sobel_accel_fifo_w32_d4_S RTLNAME sobel_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dstgx_cols_channel_U}
      {MODELNAME sobel_accel_fifo_w32_d4_S RTLNAME sobel_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dstgy_rows_channel_U}
      {MODELNAME sobel_accel_fifo_w32_d4_S RTLNAME sobel_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dstgy_cols_channel_U}
      {MODELNAME sobel_accel_fifo_w32_d2_S_x RTLNAME sobel_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c11_channel_U}
      {MODELNAME sobel_accel_fifo_w32_d2_S_x RTLNAME sobel_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c12_channel_U}
      {MODELNAME sobel_accel_fifo_w8_d2_S RTLNAME sobel_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_data_U}
      {MODELNAME sobel_accel_fifo_w32_d2_S_x RTLNAME sobel_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c_U}
      {MODELNAME sobel_accel_fifo_w32_d2_S_x RTLNAME sobel_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c_U}
      {MODELNAME sobel_accel_fifo_w8_d2_S RTLNAME sobel_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dstgx_data_U}
      {MODELNAME sobel_accel_fifo_w8_d2_S RTLNAME sobel_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dstgy_data_U}
      {MODELNAME sobel_accel_start_for_Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0 RTLNAME sobel_accel_start_for_Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0_U}
      {MODELNAME sobel_accel_gmem1_m_axi RTLNAME sobel_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sobel_accel_gmem2_m_axi RTLNAME sobel_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sobel_accel_gmem3_m_axi RTLNAME sobel_accel_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME sobel_accel_control_s_axi RTLNAME sobel_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
