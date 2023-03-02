#
# File: profile.tcl
# Description: Script to analyze HW emulation results
# Created: 2023-02-28 22:20:20
#

global ofp
global ofp2

# Log results (file 1 for summary)
proc putsLog {str} {
  global ofp

#  puts $str
  puts $ofp $str
}

# Log results (file 2 for trace)
proc putsLog2 {str} {
  global ofp2

#  puts $str
  puts $ofp2 $str
}

# Get end time in ps (by default)
proc getEndTime {} {
  return [lindex [now] 0]
}

# Check if signal has too many transitions to be logged/processed efficiently
# Check for transitions in given time range near the start and check again near the end
# Also, calculate total time at a given target value in given time range from startTime
proc checkTransitions {signal timeRange startTimeUs endTimeUs max targetValue {requireEnd 0}} {
  set retList {}
  if {[get_objects -quiet $signal] == {}} {
    lappend retList 0
    return $retList
  }
  # Check for transitions in given time range at the given startTimeUs 
  set firstEndTimeUs [expr $startTimeUs + $timeRange]
  append startTimeUs us
  append firstEndTimeUs us

  set tranx [get_transitions $signal -startTime $startTimeUs -endTime $firstEndTimeUs]

  set numTranx [llength $tranx] 

  if { $numTranx < $max } {
    if { $endTimeUs < $timeRange } {
      lappend retList 0
      return $retList
    }
    # Check again for transitions in given time range at the given endTimeUs 
    set lastStartTimeUs [expr $endTimeUs - $timeRange]
    append endTimeUs us
    append lastStartTimeUs us

    set tranx2 [get_transitions $signal -startTime $lastStartTimeUs -endTime $endTimeUs]

    set numTranx2 [llength $tranx2] 

    if { $numTranx2 < $max } {
      lappend retList 0
      return $retList
    }
    puts "WARNING: $signal has $numTranx2 transitions in $lastStartTimeUs to $endTimeUs. Too many transitions to process efficiently."
  }

  puts "WARNING: $signal has $numTranx transitions in $startTimeUs to $firstEndTimeUs. Too many transitions to process efficiently."
  lappend retList 1
  # Calculate total time at given targetValue in the given time slice
  set otherValue [expr 1 - $targetValue]
  set factor 6.0
  set startTimeUsec 0
  set totalTimeUsec 0

  for { set i 0 } { $i < $numTranx } { incr i } {
    set tr [lindex $tranx $i]
    set currTime  [lindex $tr 0]
    set currUnit  [lindex $tr 1]
    set currValue [lindex $tr 2]
    if {[string first ns $currUnit] == 0} {
      set factor 3.0
    } elseif {[string first ps $currUnit] == 0} {
      set factor 6.0
    } elseif {[string first fs $currUnit] == 0} {
      set factor 9.0
    } elseif {[string first us $currUnit] == 0} {
      set factor 0.0
    }

    set currTimeUsec [expr $currTime / pow(10.0, $factor)]
    if {$currValue == $targetValue} {
      set startTimeUsec $currTimeUsec
    } elseif { ($currValue == $otherValue) && ($startTimeUsec > 0) && ($currTimeUsec > $startTimeUsec) } {
      set totalTimeUsec [expr $totalTimeUsec + ($currTimeUsec - $startTimeUsec)]
      set startTimeUsec 0
    }
  }

  if {$totalTimeUsec == 0 && $requireEnd} {
    set endTimeUsec [ expr ([getEndTime] / pow(10.0, 6.0))]
    set totalTimeUsec [expr ($endTimeUsec - $startTimeUsec)]
  }
  lappend retList $totalTimeUsec
  return $retList
}

# Get a list with first start time, last end time and total time of signal at a specified value
proc getTimeUsec {signal targetValue {requireEnd 0}} {
  set retList {}
  if {[get_objects -quiet $signal] == {}} {
    lappend retList 0 0 0
    return $retList
  }
  set tranx [get_transitions $signal -start 0 -end [getEndTime]]

  set otherValue [expr 1 - $targetValue]
  set startTimeUsec 0
  set endTimeUsec   0
  set totalTimeUsec 0
  set factor 6.0

  for { set i 0 } { $i < [llength $tranx] } { incr i } {
    set tr [lindex $tranx $i]
    set currTime  [lindex $tr 0]
    set currUnit  [lindex $tr 1]
    set currValue [lindex $tr 2]
    if {[string first ns $currUnit] == 0} {
      set factor 3.0
    } elseif {[string first ps $currUnit] == 0} {
      set factor 6.0
    } elseif {[string first fs $currUnit] == 0} {
      set factor 9.0
    } elseif {[string first us $currUnit] == 0} {
      set factor 0.0
    }

    set currTimeUsec [expr $currTime / pow(10.0, $factor)]
    if {$currValue == $targetValue} {
      set startTimeUsec $currTimeUsec
      if { [llength $retList] == 0 } {
        lappend retList $startTimeUsec
      }
    } elseif { ($currValue == $otherValue) && ($startTimeUsec > 0) && ($currTimeUsec > $startTimeUsec) } {
      set totalTimeUsec [expr $totalTimeUsec + ($currTimeUsec - $startTimeUsec)]
      set endTimeUsec   $currTimeUsec
      set startTimeUsec 0
    }
  }

  if {$totalTimeUsec == 0 && $requireEnd} {
    set endTimeUsec [ expr ([getEndTime] / pow(10.0, 6.0))]
    set totalTimeUsec [expr ($endTimeUsec - $startTimeUsec)]
  }
  if { [llength $retList] == 0 } {
    lappend retList $startTimeUsec
  }
  lappend retList $endTimeUsec
  lappend retList $totalTimeUsec
  return $retList
}

# Get events of signal at a specified value
proc getTraceEvents {kernelName cuName moduleName signal targetValue {requireEnd 0}} {
  if {[get_objects -quiet $signal] == {}} {
    return
  }
  set tranx [get_transitions $signal -start 0 -end [getEndTime]]

  set otherValue [expr 1 - $targetValue]
  set startTimeMsec 0
  set factor 9.0
  set currDeviceName xilinx.com_xd_xilinx_zcu102_base_202220_1_202220_1-0
  set currBinaryName binary_container_1

  for { set i 0 } { $i < [llength $tranx] } { incr i } {
    set tr [lindex $tranx $i]
    set currTime  [lindex $tr 0]
    set currUnit  [lindex $tr 1]
    set currValue [lindex $tr 2]
    if {[string first ns $currUnit] == 0} {
      set factor 6.0
    } elseif {[string first ps $currUnit] == 0} {
      set factor 9.0
    } elseif {[string first fs $currUnit] == 0} {
      set factor 12.0
    } elseif {[string first us $currUnit] == 0} {
      set factor 3.0
    }

    set currTimeMsec [expr $currTime / pow(10.0, $factor)]
    if {$currValue == $targetValue} {
      set startTimeMsec $currTimeMsec
    } elseif {$currValue == $otherValue && $startTimeMsec > 0} {
      set endTimeMsec $currTimeMsec
      set traceStr [format "%s,%s,%s,%s,%s,%s,0,%.6f,%.6f,0" $currDeviceName $currBinaryName $kernelName $cuName $moduleName $moduleName $startTimeMsec $endTimeMsec]
      putsLog2 $traceStr
      set startTimeMsec 0
    }
  }
}

# Get events of signal at a specified value
proc getTraceEvents2 {kernelName cuName moduleName type index signal} {
  if {[get_objects -quiet $signal] == {}} {
    puts "Unable to find signal: $signal"
    return
  }
  set tranx [get_transitions $signal]

  set factor 9.0
  set newValue 0
  if {$type == "row"} {
      set newValue 65535
  }
  set startTimeMsec 0
  set currDeviceName xilinx.com_xd_xilinx_zcu102_base_202220_1_202220_1-0
  set currBinaryName binary_container_1
  set hasData 0 

  for { set i 0 } { $i < [llength $tranx] } { incr i } {
    set tr [lindex $tranx $i]
    set currTime   [lindex $tr 0]
    if {$currTime == 0} {
      continue
    }
    set currUnit   [lindex $tr 1]
    if {[string first ns $currUnit] == 0} {
      set factor 6.0
    } elseif {[string first ps $currUnit] == 0} {
      set factor 9.0
    } elseif {[string first fs $currUnit] == 0} {
      set factor 12.0
    } elseif {[string first us $currUnit] == 0} {
      set factor 3.0
    }
    set timeMsec [expr $currTime / pow(10.0, $factor)]

    set traceStr [format "%s,%s,%s,%s,%s,%s,%d,%.6f,%.6f,%d" $currDeviceName $currBinaryName $kernelName $cuName $moduleName $type $index $startTimeMsec $timeMsec $newValue]
    putsLog2 $traceStr

    set currValue [lindex $tr 2]
    set currValueInt [expr 0x$currValue]
    if {$type == "row"} {
      set newValue $currValueInt
    } else {
      set newValue [expr {($currValueInt == 65535) ? 0 : $currValueInt}]
    }
    set startTimeMsec $timeMsec
    set hasData 1 
  }

  # Force last value to be 0
  if {$hasData == 1} { 
    set endValue 0
    if {$type == "row"} { set endValue 65535 }
    set traceStr [format "%s,%s,%s,%s,%s,%s,%d,%.6f,%.6f,%d" $currDeviceName $currBinaryName $kernelName $cuName $moduleName $type $index  $startTimeMsec $startTimeMsec $endValue]
    putsLog2 $traceStr
  }
}

set outFilename profile_kernels.csv
set ofp [open $outFilename w]
set outFilename2 timeline_kernels.csv
set ofp2 [open $outFilename2 w]

#
# Compute Unit Stalls
#
set computeUnits { image_thresholding_kernel00_1 remap_accel_1 gaussian_filter_accel_1 sobel_accel_1 threshold_accel_1 fast_accel_1 image_thresholding_kernel01_1 canny_accel_1 }
set cuFullPaths { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel00_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ }

putsLog "Compute Units: Running Time and Stalls"
putsLog "Compute Unit, Running Time (us), Intra-Kernel Dataflow Stalls (%), External Memory Stalls (%), External Stream Stalls (%)"

for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set cuFullPath [lindex $cuFullPaths $i]

  # Runtime
  set signal $cuFullPath/ap_idle
  set cuTimes     [getTimeUsec $signal 0 1]
  set cuStartTime [lindex $cuTimes 0]
  set cuEndTime   [lindex $cuTimes 1]
  set cuTime      [lindex $cuTimes 2]

  # Stall times
  set signal $cuFullPath/ap_int_blocking_n
  set timeRange 20
  set checkTransRetList  [checkTransitions $signal $timeRange $cuStartTime $cuEndTime 1000 0]
  set isHighNumTranx     [lindex $checkTransRetList 0]
  set intStallPercent 0
  if { $isHighNumTranx == 0 } {
    set intStallTime [lindex [getTimeUsec $signal 0] 2]
    set intStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $intStallTime) / $cuTime, 100.0)]
  } else {
    puts "WARNING: $signal has too many transitions to process efficiently. So, intra-kernel dataflow stall percent is approximate."
    set intStallTimeUsec [lindex $checkTransRetList 1]
    set intStallPercent [expr (100.0 * $intStallTimeUsec)/$timeRange]
  }

  set signal $cuFullPath/ap_ext_blocking_n
  set extStallTime [lindex [getTimeUsec $signal 0] 2]
  set extStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $extStallTime) / $cuTime, 100.0)]

  set signal $cuFullPath/ap_str_blocking_n
  set strStallTime [lindex [getTimeUsec $signal 0] 2]
  set strStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $strStallTime) / $cuTime, 100.0)]

  set logStr [format "%s,%.3f,%.3f,%.3f,%.3f" $cuName $cuTime $intStallPercent $extStallPercent $strStallPercent]
  putsLog $logStr
}
putsLog ""

#
# Function Stalls
#
set computeUnits { image_thresholding_kernel00_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 threshold_accel_1 threshold_accel_1 threshold_accel_1 threshold_accel_1 threshold_accel_1 threshold_accel_1 threshold_accel_1 threshold_accel_1 fast_accel_1 fast_accel_1 fast_accel_1 fast_accel_1 fast_accel_1 fast_accel_1 fast_accel_1 fast_accel_1 image_thresholding_kernel01_1 image_thresholding_kernel01_1 canny_accel_1 canny_accel_1 canny_accel_1 canny_accel_1 canny_accel_1 canny_accel_1 canny_accel_1 canny_accel_1 }
set cuFullPaths { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel00_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/inst/ /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ }
set modules { grp_image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1_fu_121 entry_proc7_U0 Block_entry6_proc_U0 Loop_VITIS_LOOP_46_1_proc1_U0 Loop_VITIS_LOOP_46_1_proc1_U0/grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90 Array2xfMat_8_0_1080_1920_1_2_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62 entry_proc8_U0 Block_entry1_proc_U0 Array2xfMat_256_0_2160_3840_1_2_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84 GaussianBlur_3_0_0_2160_3840_1_2_2_U0 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111 xfMat2Array_256_0_2160_3840_1_2_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62 entry_proc11_U0 Block_entry1_proc_U0 Array2xfMat_256_0_2160_3840_1_2_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0/grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46 xfMat2Array_256_0_2160_3840_1_2_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62 xfMat2Array_256_0_2160_3840_1_2_1_2_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62 entry_proc5_U0 Block_entry1_proc_U0 Array2xfMat_256_0_1080_1920_1_1_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84 Threshold_0_0_1080_1920_1_1_1_U0 Threshold_0_0_1080_1920_1_1_1_U0/grp_Threshold_0_0_1080_1920_1_1_1_Pipeline_colLoop_fu_82 xfMat2Array_256_0_1080_1920_1_1_1_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62 entry_proc9_U0 Block_entry1_proc_U0 Array2xfMat_8_0_2160_3840_1_2_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84 fast_1_0_2160_3840_1_2_2_U0 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54 xfMat2Array_8_0_2160_3840_1_2_1_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62 grp_image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2_fu_133 grp_image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3_fu_144 entry_proc18_U0 Block_entry11_proc_U0 Array2xfMat_64_0_1080_1920_1_2_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60 xfMat2Array_64_8_1080_1920_32_2_1_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64 }
set realModules { image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1 entry_proc7 Block_entry6_proc Loop_VITIS_LOOP_46_1_proc1 Loop_VITIS_LOOP_46_1_proc1/Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1 Array2xfMat_8_0_1080_1920_1_2_s Array2xfMat_8_0_1080_1920_1_2_s/Axi2Mat remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s/remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_s/xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_s xfMat2Array_8_0_1080_1920_1_2_1_s xfMat2Array_8_0_1080_1920_1_2_1_s/Mat2Axi entry_proc8 Block_entry1_proc Array2xfMat_256_0_2160_3840_1_2_s Array2xfMat_256_0_2160_3840_1_2_s/Axi2Mat GaussianBlur_3_0_0_2160_3840_1_2_2_s GaussianBlur_3_0_0_2160_3840_1_2_2_s/GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1 GaussianBlur_3_0_0_2160_3840_1_2_2_s/GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2 GaussianBlur_3_0_0_2160_3840_1_2_2_s/xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s xfMat2Array_256_0_2160_3840_1_2_1_s xfMat2Array_256_0_2160_3840_1_2_1_s/Mat2Axi entry_proc11 Block_entry1_proc Array2xfMat_256_0_2160_3840_1_2_s Array2xfMat_256_0_2160_3840_1_2_s/Axi2Mat Sobel_0_3_0_0_2160_3840_1_false_2_2_2_s Sobel_0_3_0_0_2160_3840_1_false_2_2_2_s/xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s xfMat2Array_256_0_2160_3840_1_2_1_s xfMat2Array_256_0_2160_3840_1_2_1_s/Mat2Axi xfMat2Array_256_0_2160_3840_1_2_1_2 xfMat2Array_256_0_2160_3840_1_2_1_2/Mat2Axi entry_proc5 Block_entry1_proc Array2xfMat_256_0_1080_1920_1_1_s Array2xfMat_256_0_1080_1920_1_1_s/Axi2Mat Threshold_0_0_1080_1920_1_1_1_s Threshold_0_0_1080_1920_1_1_1_s/Threshold_0_0_1080_1920_1_1_1_Pipeline_colLoop xfMat2Array_256_0_1080_1920_1_1_1_s xfMat2Array_256_0_1080_1920_1_1_1_s/Mat2Axi entry_proc9 Block_entry1_proc Array2xfMat_8_0_2160_3840_1_2_s Array2xfMat_8_0_2160_3840_1_2_s/Axi2Mat fast_1_0_2160_3840_1_2_2_s fast_1_0_2160_3840_1_2_2_s/xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s xfMat2Array_8_0_2160_3840_1_2_1_s xfMat2Array_8_0_2160_3840_1_2_1_s/Mat2Axi image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2 image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3 entry_proc18 Block_entry11_proc Array2xfMat_64_0_1080_1920_1_2_s Array2xfMat_64_0_1080_1920_1_2_s/Axi2Mat Canny_3_0_0_8_1080_1920_1_32_false_2_2_s Canny_3_0_0_8_1080_1920_1_32_false_2_2_s/xFCannyKernel xfMat2Array_64_8_1080_1920_32_2_1_s xfMat2Array_64_8_1080_1920_32_2_1_s/Mat2Axi }

putsLog "Functions: Running Time and Stalls"
putsLog "Compute Unit, Function, Running Time (us), Intra-Kernel Dataflow Stalls (%), External Memory Stalls (%), External Stream Stalls (%)"

for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set cuFullPath [lindex $cuFullPaths $i]
  set moduleName [lindex $modules $i]
  set moduleRealName [lindex $realModules $i]

  # Runtime
  # NOTE: not all modules have ap_start/ap_idle
  set cuSignal $cuFullPath/ap_idle
  set moduleSignal $cuFullPath/$moduleName/ap_idle
  if {[get_objects -quiet $moduleSignal] == {}} {
    set moduleSignal $cuSignal
  }
  set cuTimes [getTimeUsec $cuSignal 0 1]
  set cuStartTime [lindex $cuTimes 0]
  set cuEndTime   [lindex $cuTimes 1]
  set cuTime      [lindex $cuTimes 2]

  set moduleTime [lindex [getTimeUsec $moduleSignal 0 1] 2]

  # Stall times
  set signal $cuFullPath/$moduleName/ap_int_blocking_n
  set timeRange 20
  set checkTransRetList  [checkTransitions $signal $timeRange $cuStartTime $cuEndTime 1000 0]
  set isHighNumTranx     [lindex $checkTransRetList 0]
  set intStallPercent 0
  if { $isHighNumTranx == 0 } {
    set intStallTime [lindex [getTimeUsec $signal 0] 2]
    set intStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $intStallTime) / $cuTime, 100.0)]
  } else {
    puts "WARNING: $signal has too many transitions to process efficiently. So, intra-kernel dataflow stall percent is approximate."
    set intStallTimeUsec [lindex $checkTransRetList 1]
    set intStallPercent [expr (100.0 * $intStallTimeUsec)/$timeRange]
  }

  set signal $cuFullPath/$moduleName/ap_ext_blocking_n
  set extStallTime [lindex [getTimeUsec $signal 0] 2]
  set extStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $extStallTime) / $cuTime, 100.0)]

  set signal $cuFullPath/$moduleName/ap_str_blocking_n
  set strStallTime [lindex [getTimeUsec $signal 0] 2]
  set strStallPercent [expr {$cuTime == 0} ? 0 : min((100.0 * $strStallTime) / $cuTime, 100.0)]

  set logStr [format "%s,%s,%.3f,%.3f,%.3f,%.3f" $cuName $moduleName $moduleTime $intStallPercent $extStallPercent $strStallPercent]
  putsLog $logStr
}
putsLog ""

puts "Waiting for protocol analyzers to complete..."
sim_wait_for_processing
puts "Done!"

#
# Compute Unit Ports
#
set computeUnits { image_thresholding_kernel00_1 remap_accel_1 remap_accel_1 remap_accel_1 remap_accel_1 gaussian_filter_accel_1 gaussian_filter_accel_1 sobel_accel_1 sobel_accel_1 sobel_accel_1 threshold_accel_1 threshold_accel_1 fast_accel_1 fast_accel_1 image_thresholding_kernel01_1 image_thresholding_kernel01_1 canny_accel_1 canny_accel_1 }
set cuFullPaths      { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel00_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/inst/ /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/ }
set ports { m_axi_gmem m_axi_gmem0 m_axi_gmem1 m_axi_gmem2 m_axi_gmem3 m_axi_gmem1 m_axi_gmem2 m_axi_gmem1 m_axi_gmem2 m_axi_gmem3 m_axi_gmem1 m_axi_gmem2 m_axi_gmem0 m_axi_gmem1 m_axi_gmem0 m_axi_gmem1 m_axi_gmem1 m_axi_gmem2 }
set readBusySignals { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel00_1/m_axi_gmem.readActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem0.readActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem2.readActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem3.readActive /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/m_axi_gmem2.readActive /vitis_design_wrapper/vitis_design_i/sobel_accel_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/sobel_accel_1/m_axi_gmem2.readActive /vitis_design_wrapper/vitis_design_i/sobel_accel_1/m_axi_gmem3.readActive /vitis_design_wrapper/vitis_design_i/threshold_accel_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/threshold_accel_1/m_axi_gmem2.readActive /vitis_design_wrapper/vitis_design_i/fast_accel_1/m_axi_gmem0.readActive /vitis_design_wrapper/vitis_design_i/fast_accel_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/m_axi_gmem0.readActive /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/canny_accel_1/m_axi_gmem1.readActive /vitis_design_wrapper/vitis_design_i/canny_accel_1/m_axi_gmem2.readActive }
set writeBusySignals { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel00_1/m_axi_gmem.writeActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem0.writeActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem2.writeActive /vitis_design_wrapper/vitis_design_i/remap_accel_1/m_axi_gmem3.writeActive /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/m_axi_gmem2.writeActive /vitis_design_wrapper/vitis_design_i/sobel_accel_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/sobel_accel_1/m_axi_gmem2.writeActive /vitis_design_wrapper/vitis_design_i/sobel_accel_1/m_axi_gmem3.writeActive /vitis_design_wrapper/vitis_design_i/threshold_accel_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/threshold_accel_1/m_axi_gmem2.writeActive /vitis_design_wrapper/vitis_design_i/fast_accel_1/m_axi_gmem0.writeActive /vitis_design_wrapper/vitis_design_i/fast_accel_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/m_axi_gmem0.writeActive /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/canny_accel_1/m_axi_gmem1.writeActive /vitis_design_wrapper/vitis_design_i/canny_accel_1/m_axi_gmem2.writeActive }

putsLog "Compute Units: Port Data Transfer"
putsLog "Compute Unit, Port, Write Time (us), Outstanding Write (%), Read Time (us), Outstanding Read (%)"

for { set i 0 } { $i < [llength $computeUnits] } { incr i } {
  set cuName [lindex $computeUnits $i]
  set cuFullPath [lindex $cuFullPaths $i]
  set portName [lindex $ports $i]
  set readBusy [lindex $readBusySignals $i]
  set writeBusy [lindex $writeBusySignals $i]

  # Runtime
  set signal $cuFullPath/ap_idle
  set moduleTime [lindex [getTimeUsec $signal 0 1] 2]

  # Write times
  set writeTime [lindex [getTimeUsec $writeBusy 1] 2]
  set writePercent [expr {$moduleTime == 0} ? 0 : min((100.0 * $writeTime) / $moduleTime, 100.0)]

  # Read times
  set readTime [lindex [getTimeUsec $readBusy 1] 2]
  set readPercent [expr {$moduleTime == 0} ? 0 : min((100.0 * $readTime) / $moduleTime, 100.0)]

  set logStr [format "%s,%s,%.3f,%.3f,%.3f,%.3f" $cuName $portName $writeTime $writePercent $readTime $readPercent]
  putsLog $logStr
}
putsLog ""

#
# Trace Events
#
putsLog2 "Kernel trace events"
putsLog2 "Device, Binary, Kernel, Compute Unit, Function, Data Type, Index, Start Time (ms), End Time (ms), Value"
# Set list of CU, modules, protoinst for kernel image_thresholding_kernel00 at index 0 in " kernels " list declared later 
set cuForKernel0 { image_thresholding_kernel00_1  } 
set cuPathForKernel0 { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel00_1/inst/  } 
set moduleForKernel0 { grp_image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1_fu_121  } 
set protoInstForKernel0 { grp_image_thresholding_kernel00_Pipeline_VITIS_LOOP_11_1_fu_121  } 

# Set list of CU, modules, protoinst for kernel remap_accel at index 1 in " kernels " list declared later 
set cuForKernel1 { remap_accel_1  } 
set cuPathForKernel1 { /vitis_design_wrapper/vitis_design_i/remap_accel_1/inst/  } 
set moduleForKernel1 { entry_proc7_U0 Block_entry6_proc_U0 Loop_VITIS_LOOP_46_1_proc1_U0 Loop_VITIS_LOOP_46_1_proc1_U0/grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90 Array2xfMat_8_0_1080_1920_1_2_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0/grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/entry_proc5_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/last_blk_pxl_width_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0 Array2xfMat_8_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0/grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0/grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0/grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0/xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0/grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106 xfMat2Array_8_0_1080_1920_1_2_1_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/addrbound_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/last_blk_pxl_width_1_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0/grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/entry_proc6_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2Axi_Block_entry24_proc_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0 xfMat2Array_8_0_1080_1920_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67  } 
set protoInstForKernel1 { entry_proc7_U0 Block_entry6_proc_U0 Loop_VITIS_LOOP_46_1_proc1_U0 grp_Loop_VITIS_LOOP_46_1_proc1_Pipeline_VITIS_LOOP_46_1_fu_90 Array2xfMat_8_0_1080_1920_1_2_U0 grp_Axi2Mat_fu_84 Axi2AxiStream_U0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108 AxiStream2Mat_U0 entry_proc5_U0 last_blk_pxl_width_U0 AxiStream2MatStream_2_U0 grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_U0 remap_8_1_0_4_0_1080_1920_1_false_2_2_2_2_Block_entry1_proc_U0 xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_U0 grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_1_fu_94 grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_2_fu_100 grp_xFRemapLI_0_0_1_4_8_1080_1920_1_2_2_2_2_false_Pipeline_loop_width_fu_106 xfMat2Array_8_0_1080_1920_1_2_1_U0 grp_Mat2Axi_fu_62 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 last_blk_pxl_width_1_U0 MatStream2AxiStream_2_U0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 entry_proc6_U0 Mat2Axi_Block_entry24_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67  } 

# Set list of CU, modules, protoinst for kernel gaussian_filter_accel at index 2 in " kernels " list declared later 
set cuForKernel2 { gaussian_filter_accel_1  } 
set cuPathForKernel2 { /vitis_design_wrapper/vitis_design_i/gaussian_filter_accel_1/inst/  } 
set moduleForKernel2 { entry_proc8_U0 Block_entry1_proc_U0 Array2xfMat_256_0_2160_3840_1_2_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0/grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/entry_proc6_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/last_blk_pxl_width_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0/grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 GaussianBlur_3_0_0_2160_3840_1_2_2_U0 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111/grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159 GaussianBlur_3_0_0_2160_3840_1_2_2_U0/grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111/grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168 xfMat2Array_256_0_2160_3840_1_2_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/addrbound_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/last_blk_pxl_width_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0/grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/entry_proc7_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2Axi_Block_entry24_proc_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 
set protoInstForKernel2 { entry_proc8_U0 Block_entry1_proc_U0 Array2xfMat_256_0_2160_3840_1_2_U0 grp_Axi2Mat_fu_84 Axi2AxiStream_U0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 AxiStream2Mat_U0 entry_proc6_U0 last_blk_pxl_width_U0 AxiStream2MatStream_2_U0 grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 GaussianBlur_3_0_0_2160_3840_1_2_2_U0 grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_48_1_fu_96 grp_GaussianBlur_3_0_0_2160_3840_1_2_2_Pipeline_VITIS_LOOP_58_2_fu_103 grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_s_fu_111 grp_xfGaussianFilter3x3_Pipeline_Clear_Row_Loop_fu_159 grp_xfGaussianFilter3x3_0_2160_3840_1_0_1_2_2_1_3840_Pipeline_Col_Loop_fu_168 xfMat2Array_256_0_2160_3840_1_2_1_U0 grp_Mat2Axi_fu_62 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 last_blk_pxl_width_1_U0 MatStream2AxiStream_2_U0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 entry_proc7_U0 Mat2Axi_Block_entry24_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 

# Set list of CU, modules, protoinst for kernel sobel_accel at index 3 in " kernels " list declared later 
set cuForKernel3 { sobel_accel_1  } 
set cuPathForKernel3 { /vitis_design_wrapper/vitis_design_i/sobel_accel_1/inst/  } 
set moduleForKernel3 { entry_proc11_U0 Block_entry1_proc_U0 Array2xfMat_256_0_2160_3840_1_2_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0/grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/entry_proc9_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/last_blk_pxl_width_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0 Array2xfMat_256_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0/grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0/grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0/grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46/grp_xFSobelFilter3x3_Pipeline_Clear_Row_Loop_fu_148 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0/grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46/grp_xFSobelFilter3x3_Pipeline_Col_Loop_fu_157 xfMat2Array_256_0_2160_3840_1_2_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/addrbound_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/last_blk_pxl_width_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0/grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/entry_proc10_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2Axi_Block_entry24_proc_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0 xfMat2Array_256_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73 xfMat2Array_256_0_2160_3840_1_2_1_2_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/addrbound_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/last_blk_pxl_width_1_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0/grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/entry_proc10_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/Mat2Axi_Block_entry24_proc_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0 xfMat2Array_256_0_2160_3840_1_2_1_2_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 
set protoInstForKernel3 { entry_proc11_U0 Block_entry1_proc_U0 Array2xfMat_256_0_2160_3840_1_2_U0 grp_Axi2Mat_fu_84 Axi2AxiStream_U0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 AxiStream2Mat_U0 entry_proc9_U0 last_blk_pxl_width_U0 AxiStream2MatStream_2_U0 grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 Sobel_0_3_0_0_2160_3840_1_false_2_2_2_U0 grp_xFSobelFilter3x3_0_0_2160_3840_1_0_0_1_2_2_2_1_1_3840_false_s_fu_46 grp_xFSobelFilter3x3_Pipeline_Clear_Row_Loop_fu_148 grp_xFSobelFilter3x3_Pipeline_Col_Loop_fu_157 xfMat2Array_256_0_2160_3840_1_2_1_U0 grp_Mat2Axi_fu_62 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 last_blk_pxl_width_1_U0 MatStream2AxiStream_2_U0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 entry_proc10_U0 Mat2Axi_Block_entry24_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73 xfMat2Array_256_0_2160_3840_1_2_1_2_U0 grp_Mat2Axi_fu_62 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 last_blk_pxl_width_1_U0 MatStream2AxiStream_2_U0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 entry_proc10_U0 Mat2Axi_Block_entry24_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 

# Set list of CU, modules, protoinst for kernel threshold_accel at index 4 in " kernels " list declared later 
set cuForKernel4 { threshold_accel_1  } 
set cuPathForKernel4 { /vitis_design_wrapper/vitis_design_i/threshold_accel_1/inst/  } 
set moduleForKernel4 { entry_proc5_U0 Block_entry1_proc_U0 Array2xfMat_256_0_1080_1920_1_1_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0/grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/entry_proc3_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/last_blk_pxl_width_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_1_U0 Array2xfMat_256_0_1080_1920_1_1_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_1_U0/grp_AxiStream2MatStream_1_Pipeline_MMIterInLoopRow_fu_62 Threshold_0_0_1080_1920_1_1_1_U0 Threshold_0_0_1080_1920_1_1_1_U0/grp_Threshold_0_0_1080_1920_1_1_1_Pipeline_colLoop_fu_82 xfMat2Array_256_0_1080_1920_1_1_1_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/addrbound_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/last_blk_pxl_width_1_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_1_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_1_U0/grp_MatStream2AxiStream_1_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/entry_proc4_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/Mat2Axi_Block_entry24_proc_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0 xfMat2Array_256_0_1080_1920_1_1_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 
set protoInstForKernel4 { entry_proc5_U0 Block_entry1_proc_U0 Array2xfMat_256_0_1080_1920_1_1_U0 grp_Axi2Mat_fu_84 Axi2AxiStream_U0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 AxiStream2Mat_U0 entry_proc3_U0 last_blk_pxl_width_U0 AxiStream2MatStream_1_U0 grp_AxiStream2MatStream_1_Pipeline_MMIterInLoopRow_fu_62 Threshold_0_0_1080_1920_1_1_1_U0 grp_Threshold_0_0_1080_1920_1_1_1_Pipeline_colLoop_fu_82 xfMat2Array_256_0_1080_1920_1_1_1_U0 grp_Mat2Axi_fu_62 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 last_blk_pxl_width_1_U0 MatStream2AxiStream_1_U0 grp_MatStream2AxiStream_1_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 entry_proc4_U0 Mat2Axi_Block_entry24_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 

# Set list of CU, modules, protoinst for kernel fast_accel at index 5 in " kernels " list declared later 
set cuForKernel5 { fast_accel_1  } 
set cuPathForKernel5 { /vitis_design_wrapper/vitis_design_i/fast_accel_1/inst/  } 
set moduleForKernel5 { entry_proc9_U0 Block_entry1_proc_U0 Array2xfMat_8_0_2160_3840_1_2_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0/grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/entry_proc7_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/last_blk_pxl_width_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0 Array2xfMat_8_0_2160_3840_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0/grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 fast_1_0_2160_3840_1_2_2_U0 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0/grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0/grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0/grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0/grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0/grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0/grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0/grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154 fast_1_0_2160_3840_1_2_2_U0/grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54/xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0/grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163 xfMat2Array_8_0_2160_3840_1_2_1_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/addrbound_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/last_blk_pxl_width_1_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2AxiStream_U0/MatStream2AxiStream_2_U0/grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/entry_proc8_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/Mat2Axi_Block_entry24_proc_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0 xfMat2Array_8_0_2160_3840_1_2_1_U0/grp_Mat2Axi_fu_62/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67  } 
set protoInstForKernel5 { entry_proc9_U0 Block_entry1_proc_U0 Array2xfMat_8_0_2160_3840_1_2_U0 grp_Axi2Mat_fu_84 Axi2AxiStream_U0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_108 AxiStream2Mat_U0 entry_proc7_U0 last_blk_pxl_width_U0 AxiStream2MatStream_2_U0 grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 fast_1_0_2160_3840_1_2_2_U0 grp_xFFastCornerDetection_0_2160_3840_0_1_2_2_1_12_1_s_fu_54 xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_U0 grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_515_1_fu_242 grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_530_2_fu_253 grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_VITIS_LOOP_541_3_fu_268 grp_xFfast7x7_0_2160_3840_0_1_2_2_1_3843_7_49_3_Pipeline_Col_Loop_fu_276 xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_U0 grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_876_1_fu_136 grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_890_2_fu_143 grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_VITIS_LOOP_901_3_fu_154 grp_xFfastnms_0_2160_3840_0_1_2_2_1_3841_3_9_4_Pipeline_Col_Loop_fu_163 xfMat2Array_8_0_2160_3840_1_2_1_U0 grp_Mat2Axi_fu_62 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 last_blk_pxl_width_1_U0 MatStream2AxiStream_2_U0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79 entry_proc8_U0 Mat2Axi_Block_entry24_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67  } 

# Set list of CU, modules, protoinst for kernel image_thresholding_kernel01 at index 6 in " kernels " list declared later 
set cuForKernel6 { image_thresholding_kernel01_1  } 
set cuPathForKernel6 { /vitis_design_wrapper/vitis_design_i/image_thresholding_kernel01_1/inst/  } 
set moduleForKernel6 { grp_image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2_fu_133 grp_image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3_fu_144  } 
set protoInstForKernel6 { grp_image_thresholding_kernel01_Pipeline_VITIS_LOOP_26_2_fu_133 grp_image_thresholding_kernel01_Pipeline_VITIS_LOOP_33_3_fu_144  } 

# Set list of CU, modules, protoinst for kernel canny_accel at index 7 in " kernels " list declared later 
set cuForKernel7 { canny_accel_1  } 
set cuPathForKernel7 { /vitis_design_wrapper/vitis_design_i/canny_accel_1/inst/  } 
set moduleForKernel7 { entry_proc18_U0 Block_entry11_proc_U0 Array2xfMat_64_0_1080_1920_1_2_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/Axi2AxiStream_U0/grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/entry_proc15_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/last_blk_pxl_width_1_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0 Array2xfMat_64_0_1080_1920_1_2_U0/grp_Axi2Mat_fu_84/AxiStream2Mat_U0/AxiStream2MatStream_2_U0/grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0/grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0/grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0/grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0/grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68/grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0/grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68/grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0/grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68/grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0/grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68/grp_xFSobel3x3_Pipeline_Col_Loop_fu_155 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0/grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFCannyKernel_Block_entry15_proc_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0/grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0/grp_xFAngleKernel_Pipeline_colLoop_fu_88 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/entry_proc16_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0/grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0/grp_xFSuppression3x3_Pipeline_colLoop1_fu_231 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0/grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0/grp_xFCannyKernel_fu_60/xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0/grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86/grp_read_2_void_0_s_fu_480 xfMat2Array_64_8_1080_1920_32_2_1_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/addrbound_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2AxiStream_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2AxiStream_U0/entry_proc_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2AxiStream_U0/cols_npc_aligned_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2AxiStream_U0/last_blk_pxl_width_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2AxiStream_U0/MatStream2AxiStream_2_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2AxiStream_U0/MatStream2AxiStream_2_U0/grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/entry_proc17_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/Mat2Axi_Block_entry13_proc_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/AxiStream2Axi_U0 xfMat2Array_64_8_1080_1920_32_2_1_U0/grp_Mat2Axi_fu_64/AxiStream2Axi_U0/grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 
set protoInstForKernel7 { entry_proc18_U0 Block_entry11_proc_U0 Array2xfMat_64_0_1080_1920_1_2_U0 grp_Axi2Mat_fu_84 Axi2AxiStream_U0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1022_1_fu_126 AxiStream2Mat_U0 entry_proc15_U0 last_blk_pxl_width_1_U0 AxiStream2MatStream_2_U0 grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_62 Canny_3_0_0_8_1080_1920_1_32_false_2_2_U0 grp_xFCannyKernel_fu_60 xFAverageGaussianMask3x3_0_0_1080_1920_0_1_2_2_1_1920_U0 grp_xFAverageGaussianMask3x3_Pipeline_Clear_Row_Loop_fu_181 grp_xFAverageGaussianMask3x3_Pipeline_Col_Loop_fu_190 xFSobel_0_2_1080_1920_0_3_1_2_2_2_1_5_3_false_U0 grp_xFSobel3x3_0_2_1080_1920_0_3_1_2_2_2_1_5_1921_3_9_false_s_fu_68 grp_xFSobel3x3_Pipeline_VITIS_LOOP_456_1_fu_128 grp_xFSobel3x3_Pipeline_VITIS_LOOP_468_2_fu_135 grp_xFSobel3x3_Pipeline_VITIS_LOOP_479_3_fu_146 grp_xFSobel3x3_Pipeline_Col_Loop_fu_155 xFDuplicate_rows_2_1080_1920_3_1_2_2_2_2_2_2_5_1920_U0 grp_xFDuplicate_rows_Pipeline_Col_Loop_fu_94 xFCannyKernel_Block_entry15_proc_U0 xFMagnitudeKernel_2_2_1080_1920_3_3_1_2_2_2_5_5_1920_U0 grp_xFMagnitudeKernel_Pipeline_colLoop_fu_56 xFAngleKernel_2_0_1080_1920_3_0_1_2_2_5_1_1920_5760_U0 grp_xFAngleKernel_Pipeline_colLoop_fu_88 entry_proc16_U0 xFSuppression3x3_2_0_8_1080_1920_3_0_12_1_2_5_1_0_1920_5760_2_U0 grp_xFSuppression3x3_Pipeline_bufColLoop_fu_219 grp_xFSuppression3x3_Pipeline_colLoop1_fu_231 xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_U0 grp_xFPackNMS_8_8_1080_1920_12_12_1_32_2_2_0_20_Pipeline_colLoop_fu_86 grp_read_2_void_0_s_fu_480 xfMat2Array_64_8_1080_1920_32_2_1_U0 grp_Mat2Axi_fu_64 addrbound_U0 Mat2AxiStream_U0 entry_proc_U0 cols_npc_aligned_U0 last_blk_pxl_width_U0 MatStream2AxiStream_2_U0 grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_81 entry_proc17_U0 Mat2Axi_Block_entry13_proc_U0 AxiStream2Axi_U0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_73  } 

set kernels { image_thresholding_kernel00 remap_accel gaussian_filter_accel sobel_accel threshold_accel fast_accel image_thresholding_kernel01 canny_accel }
for { set i 0 } { $i < [llength $kernels] } { incr i } {
  set kernelName [lindex $kernels $i]
  set computeUnits [set cuForKernel$i] 
  set cuPaths [set cuPathForKernel$i] 
  for { set j 0 } { $j < [llength $computeUnits] } { incr j } {
    set cuName [lindex $computeUnits $j]
    set cuPath [lindex $cuPaths $j]
    set signal $cuPath/ap_idle
    getTraceEvents $kernelName $cuName top $signal 0 1
  }
}

for { set i 0 } { $i < [llength $kernels] } { incr i } {
  set kernelName [lindex $kernels $i]
  set computeUnits [set cuForKernel$i] 
  set cuPaths [set cuPathForKernel$i] 
  set modules [set moduleForKernel$i] 
  set protoInstNames [set protoInstForKernel$i] 
  for { set j 0 } { $j < [llength $computeUnits] } { incr j } {
    set cuName [lindex $computeUnits $j]
    set cuPath [lindex $cuPaths $j]
    for { set k 0 } { $k < [llength $modules] } { incr k } {
      set modulePathName [lindex $modules $k]
      set protoInstName  [lindex $protoInstNames $k]
      set signal $cuPath/$modulePathName/$protoInstName.dataflowTxWaveData.OutStanding
      getTraceEvents2 $kernelName $cuName $modulePathName outstanding 0 $signal
      for { set l 0 } { $l < 64 } { incr l } {
        set signal $cuPath/$modulePathName/$protoInstName.iterationsWave_$l
        getTraceEvents2 $kernelName $cuName $modulePathName row $l $signal
      }
    }
  }
}

close $ofp
close $ofp2
