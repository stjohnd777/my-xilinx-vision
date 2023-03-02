// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module canny_accel_xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_s_angle_V_RAM_Ag8j (
     
    address0, ce0,
    d0, we0, 
    
      
    address1, ce1,
    
    q1, 
     
    reset, clk);

parameter DataWidth = 8;
parameter AddressWidth = 11;
parameter AddressRange = 1920;
 
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 

 
input[AddressWidth-1:0] address1;
input ce1;

output reg[DataWidth-1:0] q1; 

input reset;
input clk;

(* ram_style = "auto"  *)reg [DataWidth-1:0] ram[0:AddressRange-1];


 

always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram[address0] <= d0; 
    end
end 



 
  



always @(posedge clk) 
begin 
    if (ce1) begin
        q1 <= ram[address1];
    end
end 

 
 

endmodule

