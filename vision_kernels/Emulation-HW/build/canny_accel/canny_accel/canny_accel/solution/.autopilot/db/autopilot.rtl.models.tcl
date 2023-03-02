set SynModuleInfo {
  {SRCNAME entry_proc18 MODELNAME entry_proc18 RTLNAME canny_accel_entry_proc18}
  {SRCNAME Block_entry11_proc MODELNAME Block_entry11_proc RTLNAME canny_accel_Block_entry11_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 RTLNAME canny_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1
    SUBMODULES {
      {MODELNAME canny_accel_flow_control_loop_pipe_sequential_init RTLNAME canny_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME canny_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME canny_accel_mul_mul_16ns_16ns_32_3_1 RTLNAME canny_accel_mul_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc15 MODELNAME entry_proc15 RTLNAME canny_accel_entry_proc15}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME canny_accel_last_blk_pxl_width_1}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME canny_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME canny_accel_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME canny_accel_mul_32s_32s_32_1_1 RTLNAME canny_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME canny_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME canny_accel_fifo_w32_d3_S RTLNAME canny_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME canny_accel_fifo_w32_d3_S RTLNAME canny_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME canny_accel_fifo_w4_d2_S RTLNAME canny_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME canny_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME canny_accel_fifo_w64_d2_S RTLNAME canny_accel_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME canny_accel_fifo_w32_d2_S RTLNAME canny_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME canny_accel_fifo_w32_d2_S RTLNAME canny_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME canny_accel_start_for_AxiStream2Mat_U0 RTLNAME canny_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<64, 0, 1080, 1920, 1, 2>} MODELNAME Array2xfMat_64_0_1080_1920_1_2_s RTLNAME canny_accel_Array2xfMat_64_0_1080_1920_1_2_s}
  {SRCNAME entry_proc16 MODELNAME entry_proc16 RTLNAME canny_accel_entry_proc16}
  {SRCNAME xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop MODELNAME xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop RTLNAME canny_accel_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop}
  {SRCNAME {xfExtractPixels<1, 1, 0>.1} MODELNAME xfExtractPixels_1_1_0_1 RTLNAME canny_accel_xfExtractPixels_1_1_0_1}
  {SRCNAME xFAverageGaussianMask3x3_Pipeline_Col_Loop MODELNAME xFAverageGaussianMask3x3_Pipeline_Col_Loop RTLNAME canny_accel_xFAverageGaussianMask3x3_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME canny_accel_mux_32_8_1_1 RTLNAME canny_accel_mux_32_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFAverageGaussianMask3x3<0, 0, 1080, 1920, 0, 1, 2, 2, 1, 1920>} MODELNAME xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s RTLNAME canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s
    SUBMODULES {
      {MODELNAME canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s_buf_V_RAM_S2P_BRAM_1R1W RTLNAME canny_accel_xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_s_buf_V_RAM_S2P_BRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME xFSobel3x3_Pipeline_VITIS_LOOP_456_1 MODELNAME xFSobel3x3_Pipeline_VITIS_LOOP_456_1 RTLNAME canny_accel_xFSobel3x3_Pipeline_VITIS_LOOP_456_1}
  {SRCNAME xFSobel3x3_Pipeline_VITIS_LOOP_468_2 MODELNAME xFSobel3x3_Pipeline_VITIS_LOOP_468_2 RTLNAME canny_accel_xFSobel3x3_Pipeline_VITIS_LOOP_468_2}
  {SRCNAME xFSobel3x3_Pipeline_VITIS_LOOP_479_3 MODELNAME xFSobel3x3_Pipeline_VITIS_LOOP_479_3 RTLNAME canny_accel_xFSobel3x3_Pipeline_VITIS_LOOP_479_3}
  {SRCNAME xFSobel3x3_Pipeline_Col_Loop MODELNAME xFSobel3x3_Pipeline_Col_Loop RTLNAME canny_accel_xFSobel3x3_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME canny_accel_mux_32_13_1_1 RTLNAME canny_accel_mux_32_13_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFSobel3x3<0, 2, 1080, 1920, 0, 3, 1, 2, 2, 2, 1, 5, 1921, 3, 9, false>} MODELNAME xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s RTLNAME canny_accel_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s}
  {SRCNAME {xFSobel<0, 2, 1080, 1920, 0, 3, 1, 2, 2, 2, 1, 5, 3, false>} MODELNAME xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_s RTLNAME canny_accel_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_s}
  {SRCNAME xFDuplicate_rows_Pipeline_Col_Loop MODELNAME xFDuplicate_rows_Pipeline_Col_Loop RTLNAME canny_accel_xFDuplicate_rows_Pipeline_Col_Loop}
  {SRCNAME {xFDuplicate_rows<2, 1080, 1920, 3, 1, 2, 2, 2, 2, 2, 2, 5, 1920>} MODELNAME xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s RTLNAME canny_accel_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_s}
  {SRCNAME xFCannyKernel_Block_entry15_proc MODELNAME xFCannyKernel_Block_entry15_proc RTLNAME canny_accel_xFCannyKernel_Block_entry15_proc}
  {SRCNAME xFMagnitudeKernel_Pipeline_colLoop MODELNAME xFMagnitudeKernel_Pipeline_colLoop RTLNAME canny_accel_xFMagnitudeKernel_Pipeline_colLoop}
  {SRCNAME {xFMagnitudeKernel<2, 2, 1080, 1920, 3, 3, 1, 2, 2, 2, 5, 5, 1920>} MODELNAME xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_s RTLNAME canny_accel_xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_s}
  {SRCNAME xFAngleKernel_Pipeline_colLoop MODELNAME xFAngleKernel_Pipeline_colLoop RTLNAME canny_accel_xFAngleKernel_Pipeline_colLoop
    SUBMODULES {
      {MODELNAME canny_accel_mul_mul_17s_14ns_32_4_1 RTLNAME canny_accel_mul_mul_17s_14ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFAngleKernel<2, 0, 1080, 1920, 3, 0, 1, 2, 2, 5, 1, 1920, 5760>} MODELNAME xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s RTLNAME canny_accel_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_s}
  {SRCNAME xFSuppression3x3_Pipeline_bufColLoop MODELNAME xFSuppression3x3_Pipeline_bufColLoop RTLNAME canny_accel_xFSuppression3x3_Pipeline_bufColLoop}
  {SRCNAME {xfExtractPixels<1, 5, 3>} MODELNAME xfExtractPixels_1_5_3_s RTLNAME canny_accel_xfExtractPixels_1_5_3_s}
  {SRCNAME {xfExtractPixels<1, 1, 0>} MODELNAME xfExtractPixels_1_1_0_s RTLNAME canny_accel_xfExtractPixels_1_1_0_s}
  {SRCNAME xFSuppression3x3_Pipeline_colLoop1 MODELNAME xFSuppression3x3_Pipeline_colLoop1 RTLNAME canny_accel_xFSuppression3x3_Pipeline_colLoop1
    SUBMODULES {
      {MODELNAME canny_accel_mux_32_16_1_1 RTLNAME canny_accel_mux_32_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFSuppression3x3<2, 0, 8, 1080, 1920, 3, 0, 12, 1, 2, 5, 1, 0, 1920, 5760, 2>} MODELNAME xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s RTLNAME canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s
    SUBMODULES {
      {MODELNAME canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_angle_V_RAM_Ag8j RTLNAME canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_angle_V_RAM_Ag8j BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_buf_V_RAM_AUTibs RTLNAME canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_buf_V_RAM_AUTibs BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {read<2, (void*)0>} MODELNAME read_2_void_0_s RTLNAME canny_accel_read_2_void_0_s}
  {SRCNAME {xFPackNMS<8, 8, 1080, 1920, 12, 12, 1, 32, 2, 2, 0, 20>_Pipeline_colLoop} MODELNAME xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop RTLNAME canny_accel_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop}
  {SRCNAME {xFPackNMS<8, 8, 1080, 1920, 12, 12, 1, 32, 2, 2, 0, 20>} MODELNAME xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s RTLNAME canny_accel_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_s}
  {SRCNAME xFCannyKernel MODELNAME xFCannyKernel RTLNAME canny_accel_xFCannyKernel
    SUBMODULES {
      {MODELNAME canny_accel_fifo_w8_d6_S RTLNAME canny_accel_fifo_w8_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_lowthreshold_c_U}
      {MODELNAME canny_accel_fifo_w8_d6_S RTLNAME canny_accel_fifo_w8_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_highthreshold_c_U}
      {MODELNAME canny_accel_fifo_w8_d2_S RTLNAME canny_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME gaussian_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_height_c22_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_width_c26_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME gradx_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME grady_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_height_c21_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_width_c25_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME gradx1_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME gradx2_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME grady1_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME grady2_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_height_c20_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_width_c24_U}
      {MODELNAME canny_accel_fifo_w16_d4_S RTLNAME canny_accel_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgwidth_U}
      {MODELNAME canny_accel_fifo_w16_d4_S RTLNAME canny_accel_fifo_w16_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME height_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME magnitude_mat_data_U}
      {MODELNAME canny_accel_fifo_w8_d5760_A RTLNAME canny_accel_fifo_w8_d5760_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME phase_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_height_c19_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_width_c23_U}
      {MODELNAME canny_accel_fifo_w2_d2_S RTLNAME canny_accel_fifo_w2_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME nms_mat_data_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_height_c_U}
      {MODELNAME canny_accel_fifo_w16_d2_S RTLNAME canny_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_width_c_U}
      {MODELNAME canny_accel_start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0 RTLNAME canny_accel_start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0_U}
      {MODELNAME canny_accel_start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0 RTLNAME canny_accel_start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0_U}
      {MODELNAME canny_accel_start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0 RTLNAME canny_accel_start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0_U}
      {MODELNAME canny_accel_start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0 RTLNAME canny_accel_start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0_U}
      {MODELNAME canny_accel_start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0 RTLNAME canny_accel_start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0_U}
    }
  }
  {SRCNAME {Canny<3, 0, 0, 8, 1080, 1920, 1, 32, false, 2, 2>} MODELNAME Canny_3_0_0_8_1080_1920_1_32_false_2_2_s RTLNAME canny_accel_Canny_3_0_0_8_1080_1920_1_32_false_2_2_s}
  {SRCNAME entry_proc17 MODELNAME entry_proc17 RTLNAME canny_accel_entry_proc17}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME canny_accel_addrbound
    SUBMODULES {
      {MODELNAME canny_accel_mul_mul_16ns_11ns_27_3_1 RTLNAME canny_accel_mul_mul_16ns_11ns_27_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2Axi_Block_entry13_proc MODELNAME Mat2Axi_Block_entry13_proc RTLNAME canny_accel_Mat2Axi_Block_entry13_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME canny_accel_entry_proc}
  {SRCNAME cols_npc_aligned MODELNAME cols_npc_aligned RTLNAME canny_accel_cols_npc_aligned}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME canny_accel_last_blk_pxl_width}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME canny_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME canny_accel_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME canny_accel_mul_mul_16ns_7ns_23_4_1 RTLNAME canny_accel_mul_mul_16ns_7ns_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME canny_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME canny_accel_fifo_w16_d4_S_x RTLNAME canny_accel_fifo_w16_d4_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME canny_accel_fifo_w11_d2_S RTLNAME canny_accel_fifo_w11_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME canny_accel_fifo_w7_d3_S RTLNAME canny_accel_fifo_w7_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_bound_per_npc_dup_U}
      {MODELNAME canny_accel_fifo_w7_d2_S RTLNAME canny_accel_fifo_w7_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_bound_per_npc_dup_1_U}
      {MODELNAME canny_accel_fifo_w7_d2_S RTLNAME canny_accel_fifo_w7_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME canny_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME canny_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME canny_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME canny_accel_fifo_w64_d4_S RTLNAME canny_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME canny_accel_fifo_w17_d2_S RTLNAME canny_accel_fifo_w17_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_1_channel_U}
      {MODELNAME canny_accel_fifo_w17_d2_S RTLNAME canny_accel_fifo_w17_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_U}
      {MODELNAME canny_accel_fifo_w64_d2_S_x RTLNAME canny_accel_fifo_w64_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<64, 8, 1080, 1920, 32, 2, 1>} MODELNAME xfMat2Array_64_8_1080_1920_32_2_1_s RTLNAME canny_accel_xfMat2Array_64_8_1080_1920_32_2_1_s}
  {SRCNAME canny_accel MODELNAME canny_accel RTLNAME canny_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME canny_accel_fifo_w64_d5_S RTLNAME canny_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out_c_U}
      {MODELNAME canny_accel_fifo_w32_d4_S RTLNAME canny_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME low_threshold_c_U}
      {MODELNAME canny_accel_fifo_w32_d4_S RTLNAME canny_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME high_threshold_c_U}
      {MODELNAME canny_accel_fifo_w32_d4_S RTLNAME canny_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dst_mat_rows_channel_U}
      {MODELNAME canny_accel_fifo_w11_d4_S RTLNAME canny_accel_fifo_w11_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dst_mat_cols_channel_U}
      {MODELNAME canny_accel_fifo_w32_d2_S_x RTLNAME canny_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c20_channel_U}
      {MODELNAME canny_accel_fifo_w32_d2_S_x RTLNAME canny_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c21_channel_U}
      {MODELNAME canny_accel_fifo_w8_d2_S_x RTLNAME canny_accel_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_data_U}
      {MODELNAME canny_accel_fifo_w32_d2_S_x RTLNAME canny_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_rows_c_U}
      {MODELNAME canny_accel_fifo_w32_d2_S_x RTLNAME canny_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in_mat_cols_c_U}
      {MODELNAME canny_accel_fifo_w64_d2_S_x0 RTLNAME canny_accel_fifo_w64_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dst_mat_data_U}
      {MODELNAME canny_accel_start_for_Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0 RTLNAME canny_accel_start_for_Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0_U}
      {MODELNAME canny_accel_gmem1_m_axi RTLNAME canny_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_accel_gmem2_m_axi RTLNAME canny_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_accel_control_s_axi RTLNAME canny_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
