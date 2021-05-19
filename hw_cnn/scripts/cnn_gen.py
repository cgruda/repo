# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

# This script automates the creation of CNN
# in order to use it you must first add the following to system PATH
# (assuming this is the install dir):
#
#	C:\Xilinx\Vivado\2016.4\bin
#	C:\Xilinx\Vivado_HLS\2016.4\bin
# 
# how to add to path:
# 
# 	https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/
#
# beofre you run the script make sure you set ip configurations

import os

repo_path = "D:\\School\\Project\\new_repo\\"
scripts_path = repo_path + "hw_cnn\\scripts\\"
os.system("set PYTHONPATH=%PYTHONPATH%;" + scripts_path)

import hls_ip_gen as hlsgen
import vivado_design_gen as vivgen

CONV = 0
POOL = 1
FC   = 2

project_name = "fc_144_50_test"

layers = [ \
 {"type": CONV, "data_dim": 54, "op_dim": 3},\
 {"type": POOL, "data_dim": 52, "op_dim": 2},\
 {"type": CONV, "data_dim": 26, "op_dim": 3},\
 {"type": POOL, "data_dim": 24, "op_dim": 2},\
]

# create IPs
for layer in layers:
	ip_name = hlsgen.ip_name_get(layer["type"], layer["data_dim"], layer["op_dim"])
	if not hlsgen.hls_ip_exists(ip_name):
		hlsgen.create_new_hls_ip(layer["type"], layer["data_dim"], layer["op_dim"])
	else:
		print (ip_name + " already exists")

# create vivado desing
vivgen.create_vivado_project(project_name, layers)