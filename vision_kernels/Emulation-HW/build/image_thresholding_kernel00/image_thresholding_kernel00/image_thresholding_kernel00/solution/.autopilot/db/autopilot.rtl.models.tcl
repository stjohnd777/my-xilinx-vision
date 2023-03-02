set SynModuleInfo {
  {SRCNAME image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1 MODELNAME image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1 RTLNAME image_thresholding_kernel00_image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1
    SUBMODULES {
      {MODELNAME image_thresholding_kernel00_flow_control_loop_pipe_sequential_init RTLNAME image_thresholding_kernel00_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME image_thresholding_kernel00_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME image_thresholding_kernel00 MODELNAME image_thresholding_kernel00 RTLNAME image_thresholding_kernel00 IS_TOP 1
    SUBMODULES {
      {MODELNAME image_thresholding_kernel00_mul_32s_32s_32_1_1 RTLNAME image_thresholding_kernel00_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME image_thresholding_kernel00_gmem_m_axi RTLNAME image_thresholding_kernel00_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME image_thresholding_kernel00_control_s_axi RTLNAME image_thresholding_kernel00_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
