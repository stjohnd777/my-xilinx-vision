# This file was automatically generated by Vpl
if { ![info exists _is_init_cmds] } {
  set script_old $::optrace::script
  set category_old $::optrace::category
  source ../../../ipirun.tcl
  variable ::optrace::script $script_old
  variable ::optrace::category $category_old
  source $local_dir/debug_profile_hooks.tcl
  namespace import ocl_util::*

set VPL_ERROR_LOGGED 707
  set _is_init_cmds true
}



# run timing analysis and frequency scaling
if { ![report_timing_and_scale_freq "" "dr" $vivado_output_dir $vpl_output_dir "kernel_clock_freqs {} system_clock_freqs {} worst_negative_slack 0 max_frequency 650 min_frequency 10 error_on_hold_violation true error_on_pw_violation true skip_timing_and_scaling false enable_auto_freq_scale false" "binary_container_1"] } {
  return false
}
