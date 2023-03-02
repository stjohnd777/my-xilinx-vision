set trace_signals(kernel_group) {
  remap_accel_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem0*ARADDR \
    m_axi_gmem0*RDATA \
    m_axi_gmem0*RVALID \
    m_axi_gmem0*RREADY \
    m_axi_gmem0*AWADDR \
    m_axi_gmem0*WDATA \
    m_axi_gmem0*WVALID \
    m_axi_gmem0*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
    m_axi_gmem2*ARADDR \
    m_axi_gmem2*RDATA \
    m_axi_gmem2*RVALID \
    m_axi_gmem2*RREADY \
    m_axi_gmem2*AWADDR \
    m_axi_gmem2*WDATA \
    m_axi_gmem2*WVALID \
    m_axi_gmem2*WREADY \
    m_axi_gmem3*ARADDR \
    m_axi_gmem3*RDATA \
    m_axi_gmem3*RVALID \
    m_axi_gmem3*RREADY \
    m_axi_gmem3*AWADDR \
    m_axi_gmem3*WDATA \
    m_axi_gmem3*WVALID \
    m_axi_gmem3*WREADY \
  } {}

  canny_accel_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
    m_axi_gmem2*ARADDR \
    m_axi_gmem2*RDATA \
    m_axi_gmem2*RVALID \
    m_axi_gmem2*RREADY \
    m_axi_gmem2*AWADDR \
    m_axi_gmem2*WDATA \
    m_axi_gmem2*WVALID \
    m_axi_gmem2*WREADY \
  } {}

  sobel_accel_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
    m_axi_gmem2*ARADDR \
    m_axi_gmem2*RDATA \
    m_axi_gmem2*RVALID \
    m_axi_gmem2*RREADY \
    m_axi_gmem2*AWADDR \
    m_axi_gmem2*WDATA \
    m_axi_gmem2*WVALID \
    m_axi_gmem2*WREADY \
    m_axi_gmem3*ARADDR \
    m_axi_gmem3*RDATA \
    m_axi_gmem3*RVALID \
    m_axi_gmem3*RREADY \
    m_axi_gmem3*AWADDR \
    m_axi_gmem3*WDATA \
    m_axi_gmem3*WVALID \
    m_axi_gmem3*WREADY \
  } {}

  threshold_accel_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
    m_axi_gmem2*ARADDR \
    m_axi_gmem2*RDATA \
    m_axi_gmem2*RVALID \
    m_axi_gmem2*RREADY \
    m_axi_gmem2*AWADDR \
    m_axi_gmem2*WDATA \
    m_axi_gmem2*WVALID \
    m_axi_gmem2*WREADY \
  } {}

  gaussian_filter_accel_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
    m_axi_gmem2*ARADDR \
    m_axi_gmem2*RDATA \
    m_axi_gmem2*RVALID \
    m_axi_gmem2*RREADY \
    m_axi_gmem2*AWADDR \
    m_axi_gmem2*WDATA \
    m_axi_gmem2*WVALID \
    m_axi_gmem2*WREADY \
  } {}

  image_thresholding_kernel00_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem*ARADDR \
    m_axi_gmem*RDATA \
    m_axi_gmem*RVALID \
    m_axi_gmem*RREADY \
    m_axi_gmem*AWADDR \
    m_axi_gmem*WDATA \
    m_axi_gmem*WVALID \
    m_axi_gmem*WREADY \
  } {}

  image_thresholding_kernel01_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem0*ARADDR \
    m_axi_gmem0*RDATA \
    m_axi_gmem0*RVALID \
    m_axi_gmem0*RREADY \
    m_axi_gmem0*AWADDR \
    m_axi_gmem0*WDATA \
    m_axi_gmem0*WVALID \
    m_axi_gmem0*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
  } {}

  fast_accel_1 { \
    s_axi_control*ARADDR \
    s_axi_control*RDATA \
    s_axi_control*RVALID \
    s_axi_control*RREADY \
    s_axi_control*AWADDR \
    s_axi_control*WDATA \
    s_axi_control*WVALID \
    s_axi_control*WREADY \
    m_axi_gmem0*ARADDR \
    m_axi_gmem0*RDATA \
    m_axi_gmem0*RVALID \
    m_axi_gmem0*RREADY \
    m_axi_gmem0*AWADDR \
    m_axi_gmem0*WDATA \
    m_axi_gmem0*WVALID \
    m_axi_gmem0*WREADY \
    m_axi_gmem1*ARADDR \
    m_axi_gmem1*RDATA \
    m_axi_gmem1*RVALID \
    m_axi_gmem1*RREADY \
    m_axi_gmem1*AWADDR \
    m_axi_gmem1*WDATA \
    m_axi_gmem1*WVALID \
    m_axi_gmem1*WREADY \
  } {}

}

set trace_signals(kernel) {
  ap_start ap_ready ap_done
}

set trace_signals(adapter) {
  *axis_*tdata *axis_*tvalid *axis_*tready S*WADDR S*WDATA S*ARADDR S*RDATA
}

set trace_signals(datamover) {
  stream_t* reg_bus_awaddr reg_bus_wdata
}
