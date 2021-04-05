# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

#========================================================================================
#                                        README
#========================================================================================
# 
# This script automates the creation of Vivado projects and designs.
# in order to use it you must first add the following to system PATH
# (assuming this is the install dir):
#
#	C:\Xilinx\Vivado_HLS\2016.4\bin
# 
# how to add to path:
# 
# 	https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/
#
# beofre you run the script make sure the equivalent tcl script is configured with correct
# variables.

# beofre you run the script make sure the equivalent tcl script is configured with correct
# variables.

#========================================================================================
#                                         main
#========================================================================================

import os

project_name = "autotest1"

repo_path = "D:/School/Project/new_repo"
hls_path = repo_path + "/HLS"
project_path = hls_path + "/" + project_name

tclscript = "hlsProjectGen.tcl"
cmd = "vivado_hls -f {}".format(tclscript)
os.system(cmd)
