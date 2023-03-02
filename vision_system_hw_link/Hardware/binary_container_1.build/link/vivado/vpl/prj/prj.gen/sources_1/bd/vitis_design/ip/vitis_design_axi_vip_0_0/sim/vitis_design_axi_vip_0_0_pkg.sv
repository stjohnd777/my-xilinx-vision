///////////////////////////////////////////////////////////////////////////
//NOTE: This file has been automatically generated by Vivado.
///////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps
package vitis_design_axi_vip_0_0_pkg;
import axi_vip_pkg::*;
///////////////////////////////////////////////////////////////////////////
// These parameters are named after the component for use in your verification 
// environment.
///////////////////////////////////////////////////////////////////////////
      parameter vitis_design_axi_vip_0_0_VIP_PROTOCOL           = 0;
      parameter vitis_design_axi_vip_0_0_VIP_READ_WRITE_MODE    = "READ_WRITE";
      parameter vitis_design_axi_vip_0_0_VIP_INTERFACE_MODE     = 0;
      parameter vitis_design_axi_vip_0_0_VIP_ADDR_WIDTH         = 32;
      parameter vitis_design_axi_vip_0_0_VIP_DATA_WIDTH         = 32;
      parameter vitis_design_axi_vip_0_0_VIP_ID_WIDTH           = 0;
      parameter vitis_design_axi_vip_0_0_VIP_AWUSER_WIDTH       = 0;
      parameter vitis_design_axi_vip_0_0_VIP_ARUSER_WIDTH       = 0;
      parameter vitis_design_axi_vip_0_0_VIP_RUSER_WIDTH        = 0;
      parameter vitis_design_axi_vip_0_0_VIP_WUSER_WIDTH        = 0;
      parameter vitis_design_axi_vip_0_0_VIP_BUSER_WIDTH        = 0;
      parameter vitis_design_axi_vip_0_0_VIP_SUPPORTS_NARROW    = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_BURST          = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_LOCK           = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_CACHE          = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_REGION         = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_QOS            = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_PROT           = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_WSTRB          = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_BRESP          = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_RRESP          = 1;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_ACLKEN         = 0;
      parameter vitis_design_axi_vip_0_0_VIP_HAS_ARESETN        = 1;
///////////////////////////////////////////////////////////////////////////
typedef axi_mst_agent #(vitis_design_axi_vip_0_0_VIP_PROTOCOL, 
                        vitis_design_axi_vip_0_0_VIP_ADDR_WIDTH,
                        vitis_design_axi_vip_0_0_VIP_DATA_WIDTH,
                        vitis_design_axi_vip_0_0_VIP_DATA_WIDTH,
                        vitis_design_axi_vip_0_0_VIP_ID_WIDTH,
                        vitis_design_axi_vip_0_0_VIP_ID_WIDTH,
                        vitis_design_axi_vip_0_0_VIP_AWUSER_WIDTH, 
                        vitis_design_axi_vip_0_0_VIP_WUSER_WIDTH, 
                        vitis_design_axi_vip_0_0_VIP_BUSER_WIDTH, 
                        vitis_design_axi_vip_0_0_VIP_ARUSER_WIDTH,
                        vitis_design_axi_vip_0_0_VIP_RUSER_WIDTH, 
                        vitis_design_axi_vip_0_0_VIP_SUPPORTS_NARROW, 
                        vitis_design_axi_vip_0_0_VIP_HAS_BURST,
                        vitis_design_axi_vip_0_0_VIP_HAS_LOCK,
                        vitis_design_axi_vip_0_0_VIP_HAS_CACHE,
                        vitis_design_axi_vip_0_0_VIP_HAS_REGION,
                        vitis_design_axi_vip_0_0_VIP_HAS_PROT,
                        vitis_design_axi_vip_0_0_VIP_HAS_QOS,
                        vitis_design_axi_vip_0_0_VIP_HAS_WSTRB,
                        vitis_design_axi_vip_0_0_VIP_HAS_BRESP,
                        vitis_design_axi_vip_0_0_VIP_HAS_RRESP,
                        vitis_design_axi_vip_0_0_VIP_HAS_ARESETN) vitis_design_axi_vip_0_0_mst_t;
      
///////////////////////////////////////////////////////////////////////////
// How to start the verification component
///////////////////////////////////////////////////////////////////////////
//      vitis_design_axi_vip_0_0_mst_t  vitis_design_axi_vip_0_0_mst;
//      initial begin : START_vitis_design_axi_vip_0_0_MASTER
//        vitis_design_axi_vip_0_0_mst = new("vitis_design_axi_vip_0_0_mst", `vitis_design_axi_vip_0_0_PATH_TO_INTERFACE);
//        vitis_design_axi_vip_0_0_mst.start_master();
//      end



endpackage : vitis_design_axi_vip_0_0_pkg
