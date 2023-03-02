

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for xilinx_zcu102_base_202220_1
#---------------------------
set axi_interconnect_lpd [get_bd_cell /axi_interconnect_lpd]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $axi_interconnect_lpd
set interconnect_axifull [get_bd_cell /interconnect_axifull]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $interconnect_axifull
set interconnect_axilite [get_bd_cell /interconnect_axilite]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 9 \
  CONFIG.M01_HAS_REGSLICE 1 \
  CONFIG.M02_HAS_REGSLICE 1 \
  CONFIG.M03_HAS_REGSLICE 1 \
  CONFIG.M04_HAS_REGSLICE 1 \
  CONFIG.M05_HAS_REGSLICE 1 \
  CONFIG.M06_HAS_REGSLICE 1 \
  CONFIG.M07_HAS_REGSLICE 1 \
  CONFIG.M08_HAS_REGSLICE 1 \
  ] $interconnect_axilite
set ps_e [get_bd_cell /ps_e]
    
set_property -dict [ list \
  CONFIG.PSU__USE__S_AXI_GP2 1 \
  CONFIG.PSU__USE__S_AXI_GP3 1 \
  ] $ps_e

#---------------------------
# Instantiating remap_accel_1
#---------------------------
set remap_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:remap_accel:1.0 remap_accel_1]
  

#---------------------------
# Instantiating canny_accel_1
#---------------------------
set canny_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:canny_accel:1.0 canny_accel_1]
  

#---------------------------
# Instantiating sobel_accel_1
#---------------------------
set sobel_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:sobel_accel:1.0 sobel_accel_1]
  

#---------------------------
# Instantiating threshold_accel_1
#---------------------------
set threshold_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:threshold_accel:1.0 threshold_accel_1]
  

#---------------------------
# Instantiating gaussian_filter_accel_1
#---------------------------
set gaussian_filter_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:gaussian_filter_accel:1.0 gaussian_filter_accel_1]
  

#---------------------------
# Instantiating image_thresholding_kernel00_1
#---------------------------
set image_thresholding_kernel00_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:image_thresholding_kernel00:1.0 image_thresholding_kernel00_1]
  

#---------------------------
# Instantiating image_thresholding_kernel01_1
#---------------------------
set image_thresholding_kernel01_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:image_thresholding_kernel01:1.0 image_thresholding_kernel01_1]
  

#---------------------------
# Instantiating fast_accel_1
#---------------------------
set fast_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:fast_accel:1.0 fast_accel_1]
  

#---------------------------
# Instantiating axi_ic_ps_e_S_AXI_HP0_FPD
#---------------------------
set axi_ic_ps_e_S_AXI_HP0_FPD [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_ps_e_S_AXI_HP0_FPD]
  
set_property -dict [ list  \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {16} \
  CONFIG.STRATEGY {2} \
  CONFIG.M00_HAS_REGSLICE {1} \
  CONFIG.M00_HAS_DATA_FIFO {2} \
  CONFIG.S00_HAS_REGSLICE {1} \
  CONFIG.S00_HAS_DATA_FIFO {2} \
  CONFIG.S01_HAS_REGSLICE {1} \
  CONFIG.S01_HAS_DATA_FIFO {2} \
  CONFIG.S02_HAS_REGSLICE {1} \
  CONFIG.S02_HAS_DATA_FIFO {2} \
  CONFIG.S03_HAS_REGSLICE {1} \
  CONFIG.S03_HAS_DATA_FIFO {2} \
  CONFIG.S04_HAS_REGSLICE {1} \
  CONFIG.S04_HAS_DATA_FIFO {2} \
  CONFIG.S05_HAS_REGSLICE {1} \
  CONFIG.S05_HAS_DATA_FIFO {2} \
  CONFIG.S06_HAS_REGSLICE {1} \
  CONFIG.S06_HAS_DATA_FIFO {2} \
  CONFIG.S07_HAS_REGSLICE {1} \
  CONFIG.S07_HAS_DATA_FIFO {2} \
  CONFIG.S08_HAS_REGSLICE {1} \
  CONFIG.S08_HAS_DATA_FIFO {2} \
  CONFIG.S09_HAS_REGSLICE {1} \
  CONFIG.S09_HAS_DATA_FIFO {2} \
  CONFIG.S10_HAS_REGSLICE {1} \
  CONFIG.S10_HAS_DATA_FIFO {2} \
  CONFIG.S11_HAS_REGSLICE {1} \
  CONFIG.S11_HAS_DATA_FIFO {2} \
  CONFIG.S12_HAS_REGSLICE {1} \
  CONFIG.S12_HAS_DATA_FIFO {2} \
  CONFIG.S13_HAS_REGSLICE {1} \
  CONFIG.S13_HAS_DATA_FIFO {2} \
  CONFIG.S14_HAS_REGSLICE {1} \
  CONFIG.S14_HAS_DATA_FIFO {2} \
  CONFIG.S15_HAS_REGSLICE {1} \
  CONFIG.S15_HAS_DATA_FIFO {2}  ] $axi_ic_ps_e_S_AXI_HP0_FPD

#---------------------------
# Instantiating axi_ic_ps_e_S_AXI_HP1_FPD
#---------------------------
set axi_ic_ps_e_S_AXI_HP1_FPD [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_ps_e_S_AXI_HP1_FPD]
  
set_property -dict [ list  \
  CONFIG.NUM_MI {1} \
  CONFIG.NUM_SI {2} \
  CONFIG.STRATEGY {2} \
  CONFIG.M00_HAS_REGSLICE {1} \
  CONFIG.M00_HAS_DATA_FIFO {2} \
  CONFIG.S00_HAS_REGSLICE {1} \
  CONFIG.S00_HAS_DATA_FIFO {2} \
  CONFIG.S01_HAS_REGSLICE {1} \
  CONFIG.S01_HAS_DATA_FIFO {2}  ] $axi_ic_ps_e_S_AXI_HP1_FPD

#---------------------------
# Instantiating axi_intc_0_intr_1_interrupt_concat
#---------------------------
set axi_intc_0_intr_1_interrupt_concat [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 axi_intc_0_intr_1_interrupt_concat]
  
set_property -dict [ list  \
  CONFIG.NUM_PORTS {32}  ] $axi_intc_0_intr_1_interrupt_concat

#---------------------------
# Instantiating irq_const_tieoff
#---------------------------
set irq_const_tieoff [create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 irq_const_tieoff]
  
set_property -dict [ list  \
  CONFIG.CONST_WIDTH {1} \
  CONFIG.CONST_VAL {0}  ] $irq_const_tieoff

#---------------------------
# Connectivity Phase 1
#---------------------------
connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/M00_AXI] \
  [get_bd_intf_pins -auto_enable /ps_e/S_AXI_HP0_FPD] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/M00_AXI] \
  [get_bd_intf_pins -auto_enable /ps_e/S_AXI_HP1_FPD] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M01_AXI] \
  [get_bd_intf_pins -auto_enable /remap_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /remap_accel_1/m_axi_gmem0] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /remap_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S01_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /remap_accel_1/m_axi_gmem2] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S02_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /remap_accel_1/m_axi_gmem3] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S03_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M02_AXI] \
  [get_bd_intf_pins -auto_enable /canny_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /canny_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S04_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /canny_accel_1/m_axi_gmem2] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S05_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M03_AXI] \
  [get_bd_intf_pins -auto_enable /sobel_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /sobel_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S06_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /sobel_accel_1/m_axi_gmem2] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S07_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /sobel_accel_1/m_axi_gmem3] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S08_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M04_AXI] \
  [get_bd_intf_pins -auto_enable /threshold_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /threshold_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S09_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /threshold_accel_1/m_axi_gmem2] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S10_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M05_AXI] \
  [get_bd_intf_pins -auto_enable /gaussian_filter_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /gaussian_filter_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S11_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /gaussian_filter_accel_1/m_axi_gmem2] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S12_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M06_AXI] \
  [get_bd_intf_pins -auto_enable /image_thresholding_kernel00_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /image_thresholding_kernel00_1/m_axi_gmem] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S13_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M07_AXI] \
  [get_bd_intf_pins -auto_enable /image_thresholding_kernel01_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /image_thresholding_kernel01_1/m_axi_gmem0] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S14_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /image_thresholding_kernel01_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S15_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite/M08_AXI] \
  [get_bd_intf_pins -auto_enable /fast_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /fast_accel_1/m_axi_gmem0] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S00_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /fast_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S01_AXI] \

connect_bd_net  \
  [get_bd_pins -auto_enable /clk_wiz_0/clk_out1] \
  [get_bd_pins -auto_enable /remap_accel_1/ap_clk] \
  [get_bd_pins -auto_enable /canny_accel_1/ap_clk] \
  [get_bd_pins -auto_enable /sobel_accel_1/ap_clk] \
  [get_bd_pins -auto_enable /threshold_accel_1/ap_clk] \
  [get_bd_pins -auto_enable /gaussian_filter_accel_1/ap_clk] \
  [get_bd_pins -auto_enable /image_thresholding_kernel00_1/ap_clk] \
  [get_bd_pins -auto_enable /image_thresholding_kernel01_1/ap_clk] \
  [get_bd_pins -auto_enable /fast_accel_1/ap_clk] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S00_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S01_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S02_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S03_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S04_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S05_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S06_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S07_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S08_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S09_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S10_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S11_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S12_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S13_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S14_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S15_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S00_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S01_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M01_ACLK] \
  [get_bd_pins -auto_enable /ps_e/saxihp0_fpd_aclk] \
  [get_bd_pins -auto_enable /ps_e/saxihp1_fpd_aclk] \
  [get_bd_pins -auto_enable /interconnect_axilite/M02_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M03_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M04_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M05_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M06_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M07_ACLK] \
  [get_bd_pins -auto_enable /interconnect_axilite/M08_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/M00_ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/ACLK] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/M00_ACLK] \

connect_bd_net  \
  [get_bd_pins -auto_enable /proc_sys_reset_0/interconnect_aresetn] \
  [get_bd_pins -auto_enable /interconnect_axilite/M01_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M02_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M03_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M04_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M05_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M06_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M07_ARESETN] \
  [get_bd_pins -auto_enable /interconnect_axilite/M08_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/M00_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S00_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S01_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S02_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S03_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S04_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S05_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S06_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S07_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S08_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S09_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S10_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S11_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S12_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S13_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S14_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP0_FPD/S15_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/M00_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S00_ARESETN] \
  [get_bd_pins -auto_enable /axi_ic_ps_e_S_AXI_HP1_FPD/S01_ARESETN] \

connect_bd_net  \
  [get_bd_pins -auto_enable /proc_sys_reset_0/peripheral_aresetn] \
  [get_bd_pins -auto_enable /remap_accel_1/ap_rst_n] \
  [get_bd_pins -auto_enable /canny_accel_1/ap_rst_n] \
  [get_bd_pins -auto_enable /sobel_accel_1/ap_rst_n] \
  [get_bd_pins -auto_enable /threshold_accel_1/ap_rst_n] \
  [get_bd_pins -auto_enable /gaussian_filter_accel_1/ap_rst_n] \
  [get_bd_pins -auto_enable /image_thresholding_kernel00_1/ap_rst_n] \
  [get_bd_pins -auto_enable /image_thresholding_kernel01_1/ap_rst_n] \
  [get_bd_pins -auto_enable /fast_accel_1/ap_rst_n] \

connect_bd_net  \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/dout] \
  [get_bd_pins -auto_enable /axi_intc_0/intr] \

connect_bd_net  \
  [get_bd_pins -auto_enable /remap_accel_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In1] \

connect_bd_net  \
  [get_bd_pins -auto_enable /canny_accel_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In0] \

connect_bd_net  \
  [get_bd_pins -auto_enable /sobel_accel_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In2] \

connect_bd_net  \
  [get_bd_pins -auto_enable /threshold_accel_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In3] \

connect_bd_net  \
  [get_bd_pins -auto_enable /gaussian_filter_accel_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In4] \

connect_bd_net  \
  [get_bd_pins -auto_enable /image_thresholding_kernel00_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In5] \

connect_bd_net  \
  [get_bd_pins -auto_enable /image_thresholding_kernel01_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In6] \

connect_bd_net  \
  [get_bd_pins -auto_enable /fast_accel_1/interrupt] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In7] \

connect_bd_net  \
  [get_bd_pins -auto_enable /irq_const_tieoff/dout] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In8] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In9] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In10] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In11] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In12] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In13] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In14] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In15] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In16] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In17] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In18] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In19] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In20] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In21] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In22] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In23] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In24] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In25] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In26] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In27] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In28] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In29] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In30] \
  [get_bd_pins -auto_enable /axi_intc_0_intr_1_interrupt_concat/In31] \


#---------------------------
# Connectivity Phase 2
#---------------------------

#---------------------------
# Create Stream Map file
#---------------------------
set stream_subsystems [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}]
if {[string length $stream_subsystems] > 0} {    
  set xmlFile $vpl_output_dir/qdma_stream_map.xml
  set fp [open ${xmlFile} w]
  puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
  puts $fp "<xd:streamMap xmlns:xd=\"http://www.xilinx.com/xd\">"
  foreach streamSS [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}] {
    set ssInstance [string trimleft $streamSS /]
    set ssRegion [get_property CONFIG.SLR_ASSIGNMENTS $streamSS]
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"S??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"M??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
  }
  puts $fp "</xd:streamMap>"
  close $fp
}


