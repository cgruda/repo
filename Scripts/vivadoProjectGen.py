# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

import os

tclscript = "vivadoAutoGen.tcl"
cmd = "vivado -mode batch -source {}".format(tclscript)
os.system(cmd)
