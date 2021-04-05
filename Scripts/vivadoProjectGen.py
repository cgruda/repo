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
#	C:\Xilinx\Vivado\2016.4\bin
# 
# how to add to path:
# 
# 	https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/
#
# beofre you run the script make sure the equivalent tcl script is configured with correct
# variables.

#========================================================================================
#                                         main
#========================================================================================

import os

tclscript = "vivadoProjectGen.tcl"
cmd = "vivado -mode batch -source {}".format(tclscript)
os.system(cmd)
