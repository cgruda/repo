# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2016.4
# Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ap_puts_err "COSIM" 403 "SystemC simulation FAILED with ${mismatch_num} mismatches detected."
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ap_puts_err "COSIM" 404 "Simulation failed: Function \'main\' returns nonzero value \'$status\'."
            } else {
                ap_puts_err "COSIM" 405 "Simulation failed."
            }
        } else {
            ap_puts_err "COSIM" 405 "Simulation failed."
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ap_puts_err "COSIM" 405 "Simulation failed."
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ap_puts_err "COSIM" 406 "Simulation FAILED with ${unmatch_num} mismatches detected."
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ap_puts_err "COSIM" 407 "Simulation failed: Function \'main\' returns nonzero value \'$line\'."
        }
    }
    if {[file exists ".exit.err"]} {
        ap_puts_err "COSIM" 405 "Simulation failed."
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_data_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_keep_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_strb_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_user_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_last_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_id_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_inStream_V_dest_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_data_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_keep_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_strb_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_user_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_last_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_id_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_outStream_V_dest_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_ctrl.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_0.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_1.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_2.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_3.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_4.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_5.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_6.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_7.dat"
         "c.cnn_conv_d22x22_k3x3.autotvin_kernel_8.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_data_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_keep_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_strb_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_user_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_last_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_id_V.dat"
         "c.cnn_conv_d22x22_k3x3.autotvout_outStream_V_dest_V.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ap_puts_err "COSIM" 320 "C TB testing failed. Please check C TB or re-run cosim.  "
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ap_puts_err "COSIM" 320 "C TB testing failed. Please check C TB or re-run cosim.  "
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_data_V.dat"
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_keep_V.dat"
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_strb_V.dat"
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_user_V.dat"
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_last_V.dat"
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_id_V.dat"
         "rtl.cnn_conv_d22x22_k3x3.autotvout_outStream_V_dest_V.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ap_puts_err "COSIM" 303 "Aborting co-simulation: RTL simulation failed.  "
            return 1
        }
        set ret [catch {eval exec "grep /runtime $rtlfile"} err]
        if { $ret } {
            ap_puts_err "COSIM" 303 "Aborting co-simulation: RTL simulation failed.  "
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
