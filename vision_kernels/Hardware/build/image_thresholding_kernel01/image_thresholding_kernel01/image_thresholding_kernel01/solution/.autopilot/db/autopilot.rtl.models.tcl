set SynModuleInfo {
  {SRCNAME image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2 MODELNAME image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2 RTLNAME image_thresholding_kernel01_image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2
    SUBMODULES {
      {MODELNAME image_thresholding_kernel01_flow_control_loop_pipe_sequential_init RTLNAME image_thresholding_kernel01_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME image_thresholding_kernel01_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3 MODELNAME image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3 RTLNAME image_thresholding_kernel01_image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3}
  {SRCNAME image_thresholding_kernel01 MODELNAME image_thresholding_kernel01 RTLNAME image_thresholding_kernel01 IS_TOP 1
    SUBMODULES {
      {MODELNAME image_thresholding_kernel01_outBRAM_RAM_AUTO_1R1W RTLNAME image_thresholding_kernel01_outBRAM_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME image_thresholding_kernel01_gmem0_m_axi RTLNAME image_thresholding_kernel01_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME image_thresholding_kernel01_gmem1_m_axi RTLNAME image_thresholding_kernel01_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME image_thresholding_kernel01_control_s_axi RTLNAME image_thresholding_kernel01_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
