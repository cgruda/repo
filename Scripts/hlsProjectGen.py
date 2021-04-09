# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

# This script automates the creation of Vivado_HLS projects and code.
# in order to use it you must first add the following to system PATH
# (assuming this is the install dir):
#
#	C:\Xilinx\Vivado_HLS\2016.4\bin
# 
# how to add to path:
# 
# 	https://www.architectryan.com/2018/03/17/add-to-the-path-on-windows-10/
#
# beofre you run the script make sure to properly set repo_path and IP configuration 

import os

CONV = 0
POOL = 1

repo_path = "D:\\School\\Project\\new_repo\\"
scripts_path = repo_path + "Scripts\\"
hls_source_path = repo_path + "Source\\HLS\\"
hls_path = repo_path + "HLS\\"
temp_path = hls_path + "tmp\\"
tclscript = "hlsProjectGen.tcl"
tclscript_path = scripts_path + "tcl\\" + tclscript

def ip_name_get(type, data_dim, op_dim):
	type_s = "conv" if type == CONV else "pool"
	data_dim_s = "d{}x{}".format(data_dim, data_dim)
	op_dim_s = "{}{}x{}".format("k" if type == CONV else "p", op_dim, op_dim)
	ip_name = "cnn_{}_{}_{}".format(type_s, data_dim_s, op_dim_s)
	return ip_name

def get_new_core_lines(orig_file, ip_name, data_dim, op_dim):
	new_lines = []
	with open(orig_file, 'r') as fp:
		for line in fp:
			line = line.rstrip("\n")
			new_line = ""
			if (line == "#define INPUT_COLS X"):
				new_line = "#define INPUT_COLS %d" %data_dim
			elif (line == "#define INPUT_ROWS X"):
				new_line = "#define INPUT_ROWS %d" %data_dim
			elif (line == "#define KERNEL_DIM Y"):
				new_line = "#define KERNEL_DIM %d" %op_dim
			elif (line == "#define POOL_DIM_R Y"):
				new_line = "#define POOL_DIM_R %d" %op_dim
			elif (line == "cnn_conv_dXxX_kYxY"):
				new_line = ip_name
			elif (line == "cnn_pool_dXxX_pYxY"):
				new_line = ip_name
			else:
				new_line = line
			new_line = new_line + "\n"
			new_lines.append(new_line)
	return new_lines

def create_new_temp_file(file_name, lines):
	with open(file_name, 'w') as fp:
		fp.writelines(lines)

def prep_hls_files(type, data_dim, op_dim, ip_name):
	type_str = "conv" if type == CONV else "pool"
	orig_source_path = hls_source_path + "%s//" %type_str
	new_core_h_lines = get_new_core_lines(orig_source_path + "core.h", ip_name, data_dim, op_dim)
	new_core_cpp_lines = get_new_core_lines(orig_source_path + "core.cpp", ip_name, data_dim, op_dim)
	new_core_tb_cpp_lines = get_new_core_lines(orig_source_path + "core_tb.cpp", ip_name, data_dim, op_dim)
	create_new_temp_file(temp_path + "core.h", new_core_h_lines)
	create_new_temp_file(temp_path + "core.cpp", new_core_cpp_lines)
	create_new_temp_file(temp_path + "core_tb.cpp", new_core_tb_cpp_lines)

def prep_tcl_script(ip_name):
	new_lines = []
	with open(tclscript_path, 'r') as fp:
		for line in fp:
			line = line.rstrip("\n")
			new_line = ""
			if (line == "set project_name PROJECT_NAME"):
				new_line = "set project_name {}".format(ip_name)
			elif (line == "set project_name_str \"PROJECT_NAME\""):
				new_line = "set project_name_str \"{}\"".format(ip_name)
			else:
				new_line = line
			new_line = new_line + "\n"
			new_lines.append(new_line)
	create_new_temp_file(temp_path + tclscript, new_lines)

def create_new_hls_ip(type, data_dim, op_dim):
	# enter temp location
	os.chdir(hls_path)
	os.system("mkdir tmp")
	os.chdir(hls_path + "\\tmp")
	# prep files and tcl script
	ip_name = ip_name_get(type, data_dim, op_dim)
	prep_hls_files(type, data_dim, op_dim, ip_name)
	prep_tcl_script(ip_name)
	# execute creation
	os.system("copy {} {}".format(temp_path + tclscript, hls_path + "."))
	os.chdir(hls_path)
	os.system("vivado_hls -f {}".format(tclscript))
	os.system("rmdir /s /q " + temp_path)
	os.system("del " + hls_path + tclscript)
	os.system("del " + hls_path + "vivado_hls")
	print("created hls ip: %s" %ip_name)

def hls_ip_exists(ip_name):
	return os.path.exists(hls_path + ip_name)

if __name__ == "__main__":
	type = CONV
	data_dim = 46
	op_dim = 3
	create_new_hls_ip(type, data_dim, op_dim)