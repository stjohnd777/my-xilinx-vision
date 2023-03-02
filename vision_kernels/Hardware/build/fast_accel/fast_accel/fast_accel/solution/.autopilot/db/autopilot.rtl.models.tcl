set SynModuleInfo {
  {SRCNAME entry_proc9 MODELNAME entry_proc9 RTLNAME fast_accel_entry_proc9}
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME fast_accel_Block_entry1_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1 RTLNAME fast_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1
    SUBMODULES {
      {MODELNAME fast_accel_flow_control_loop_pipe_sequential_init RTLNAME fast_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fast_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME fast_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME fast_accel_mul_mul_16ns_16ns_32_3_1 RTLNAME fast_accel_mul_mul_16ns_16ns_32_3_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_mul_mul_16ns_16ns_24_4_1 RTLNAME fast_accel_mul_mul_16ns_16ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc7 MODELNAME entry_proc7 RTLNAME fast_accel_entry_proc7}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME fast_accel_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME fast_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow}
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME fast_accel_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME fast_accel_mul_32s_32s_32_1_1 RTLNAME fast_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME fast_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME fast_accel_fifo_w32_d3_S RTLNAME fast_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME fast_accel_fifo_w32_d3_S RTLNAME fast_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME fast_accel_fifo_w4_d2_S RTLNAME fast_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME fast_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME fast_accel_fifo_w8_d2_S RTLNAME fast_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME fast_accel_fifo_w32_d2_S RTLNAME fast_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME fast_accel_fifo_w32_d2_S RTLNAME fast_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME fast_accel_start_for_AxiStream2Mat_U0 RTLNAME fast_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<8, 0, 2160, 3840, 1, 2>} MODELNAME Array2xfMat_8_0_2160_3840_1_2_s RTLNAME fast_accel_Array2xfMat_8_0_2160_3840_1_2_s}
  {SRCNAME {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3_Pipeline_VITIS_LOOP_515_1} MODELNAME xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1 RTLNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1}
  {SRCNAME {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3_Pipeline_VITIS_LOOP_530_2} MODELNAME xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2 RTLNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2}
  {SRCNAME {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3_Pipeline_VITIS_LOOP_541_3} MODELNAME xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3 RTLNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3}
  {SRCNAME {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3_Pipeline_Col_Loop} MODELNAME xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop RTLNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME fast_accel_mux_73_13_1_1 RTLNAME fast_accel_mux_73_13_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_mux_73_8_1_1 RTLNAME fast_accel_mux_73_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFfast7x7<0, 2160, 3840, 0, 1, 2, 2, 1, 3843, 7, 49>3} MODELNAME xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3 RTLNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3
    SUBMODULES {
      {MODELNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_buf_V_RAM_S2P_BRAM_1R1W RTLNAME fast_accel_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_buf_V_RAM_S2P_BRAM_1R1W BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_VITIS_LOOP_876_1} MODELNAME xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1 RTLNAME fast_accel_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1}
  {SRCNAME {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_VITIS_LOOP_890_2} MODELNAME xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2 RTLNAME fast_accel_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2}
  {SRCNAME {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_VITIS_LOOP_901_3} MODELNAME xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3 RTLNAME fast_accel_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3
    SUBMODULES {
      {MODELNAME fast_accel_mux_32_8_1_1 RTLNAME fast_accel_mux_32_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4_Pipeline_Col_Loop} MODELNAME xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop RTLNAME fast_accel_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME fast_accel_mux_32_13_1_1 RTLNAME fast_accel_mux_32_13_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFfastnms<0, 2160, 3840, 0, 1, 2, 2, 1, 3841, 3, 9>4} MODELNAME xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4 RTLNAME fast_accel_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4}
  {SRCNAME {xFFastCornerDetection<0, 2160, 3840, 0, 1, 2, 2, 1, 12, 1>} MODELNAME xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s RTLNAME fast_accel_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s
    SUBMODULES {
      {MODELNAME fast_accel_fifo_w8_d2_S_x RTLNAME fast_accel_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_dst_data_U}
      {MODELNAME fast_accel_fifo_w16_d2_S RTLNAME fast_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_image_height_c_U}
      {MODELNAME fast_accel_fifo_w16_d2_S RTLNAME fast_accel_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_image_width_c_U}
      {MODELNAME fast_accel_start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0 RTLNAME fast_accel_start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0_U}
    }
  }
  {SRCNAME {fast<1, 0, 2160, 3840, 1, 2, 2>} MODELNAME fast_1_0_2160_3840_1_2_2_s RTLNAME fast_accel_fast_1_0_2160_3840_1_2_2_s}
  {SRCNAME entry_proc8 MODELNAME entry_proc8 RTLNAME fast_accel_entry_proc8}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME fast_accel_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME fast_accel_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME fast_accel_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME fast_accel_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME fast_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol}
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME fast_accel_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME fast_accel_mul_mul_16ns_16ns_32_4_1 RTLNAME fast_accel_mul_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME fast_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME fast_accel_fifo_w16_d3_S RTLNAME fast_accel_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME fast_accel_fifo_w32_d3_S_x RTLNAME fast_accel_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME fast_accel_fifo_w4_d2_S_x RTLNAME fast_accel_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME fast_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME fast_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME fast_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME fast_accel_fifo_w64_d4_S RTLNAME fast_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME fast_accel_fifo_w24_d2_S RTLNAME fast_accel_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME fast_accel_fifo_w24_d2_S RTLNAME fast_accel_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_V_U}
      {MODELNAME fast_accel_fifo_w8_d2_S_x0 RTLNAME fast_accel_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<8, 0, 2160, 3840, 1, 2, 1>} MODELNAME xfMat2Array_8_0_2160_3840_1_2_1_s RTLNAME fast_accel_xfMat2Array_8_0_2160_3840_1_2_1_s}
  {SRCNAME fast_accel MODELNAME fast_accel RTLNAME fast_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME fast_accel_fifo_w8_d4_S RTLNAME fast_accel_fifo_w8_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME threshold_c_U}
      {MODELNAME fast_accel_fifo_w64_d5_S RTLNAME fast_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME img_out_c_U}
      {MODELNAME fast_accel_fifo_w32_d4_S RTLNAME fast_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_rows_channel_U}
      {MODELNAME fast_accel_fifo_w32_d4_S RTLNAME fast_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_cols_channel_U}
      {MODELNAME fast_accel_fifo_w32_d2_S_x RTLNAME fast_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_rows_c9_channel_U}
      {MODELNAME fast_accel_fifo_w32_d2_S_x RTLNAME fast_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_cols_c10_channel_U}
      {MODELNAME fast_accel_fifo_w8_d2_S_x1 RTLNAME fast_accel_fifo_w8_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_data_U}
      {MODELNAME fast_accel_fifo_w32_d2_S_x RTLNAME fast_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_rows_c_U}
      {MODELNAME fast_accel_fifo_w32_d2_S_x RTLNAME fast_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_cols_c_U}
      {MODELNAME fast_accel_fifo_w8_d2_S_x1 RTLNAME fast_accel_fifo_w8_d2_S_x1 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_data_U}
      {MODELNAME fast_accel_start_for_fast_1_0_2160_3840_1_2_2_U0 RTLNAME fast_accel_start_for_fast_1_0_2160_3840_1_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_fast_1_0_2160_3840_1_2_2_U0_U}
      {MODELNAME fast_accel_gmem0_m_axi RTLNAME fast_accel_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fast_accel_gmem1_m_axi RTLNAME fast_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME fast_accel_control_s_axi RTLNAME fast_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
