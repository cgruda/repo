import os

tclscript = "vivadoAutoGen.tcl"
cmd = "vivado -mode batch -source {}".format(tclscript)
os.system(cmd)
