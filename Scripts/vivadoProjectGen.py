# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

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
# beofre you run the script make sure you set ip configurations

CONV = 0
POOL = 1

import os

run_synth = 1
launch_sdk = 1
keep_log = 0

repo_path = "D:\\School\\Project\\new_repo\\"
scripts_path = repo_path + "Scripts\\"
tclscript = "vivadoProjectGen.tcl"
vivado_path = repo_path + "Vivado\\"
tclscript_path = scripts_path + "tcl\\" + tclscript
temp_path = vivado_path + "tmp\\"

def ip_name_get(type, data_dim, op_dim):
	type_s = "conv" if type == CONV else "pool"
	data_dim_s = "d{}x{}".format(data_dim, data_dim)
	op_dim_s = "{}{}x{}".format("k" if type == CONV else "p", op_dim, op_dim)
	ip_name = "cnn_{}_{}_{}".format(type_s, data_dim_s, op_dim_s)
	return ip_name

def create_new_temp_file(file_name, lines):
	with open(file_name, 'w') as fp:
		fp.writelines(lines)

def prep_tcl_script(project_name, ip_count, ips_names):
	new_lines = []
	with open(tclscript_path, 'r') as fp:
		for line in fp:
			line = line.rstrip("\n")
			new_line = ""
			mod = False
			if (line == "set gen_bitstream GEN_BITSTREAM"):
				new_line = "set gen_bitstream {}".format(run_synth)
				mod = True
			elif (line == "set lun_sdk LUN_SDK"):
				new_line = "set lun_sdk {}".format(launch_sdk)
				mod = True
			elif (line == "set project_name PROJECT_NAME"):
				new_line = "set project_name {}".format(project_name)
				mod = True
			elif (line == "set ip_count IP_COUNT"):
				new_line = "set ip_count %d" %ip_count
				mod = True
			else:
				for i in range(ip_count):
					temp_line0 = "set ip%d XXX%d%d%dYYY" %(i,i,i,i)
					temp_line1 = "set ip%d_name XXX%d%d%dYYY_Z" %(i,i,i,i)
					if (line == temp_line0):
						new_line = "set ip%d %s" %(i, ips_names[i])
						mod= True
					elif (line == temp_line1):
						new_line = "set ip%d_name %s_0" %(i, ips_names[i])
						mod = True
			if (not mod):
				new_line = line
			new_line = new_line + "\n"
			new_lines.append(new_line)
	create_new_temp_file(temp_path + tclscript, new_lines)

def create_vivado_project(project_name, layers):
	os.chdir(vivado_path)
	os.system("mkdir tmp")
	os.chdir(vivado_path + "\\tmp")
	ip_names = []
	for layer in layers:
		ip_name = ip_name_get(layer["type"], layer["data_dim"], layer["op_dim"])
		ip_names.append(ip_name)
	prep_tcl_script(project_name, len(layers), ip_names)
	cmd = "vivado -mode batch -source {}".format(temp_path + tclscript)
	os.system(cmd)
	if (not keep_log):
		os.chdir(vivado_path)
		cmd = "rmdir /s /q " + temp_path
		os.system(cmd)
	print("===============================")
	print("=========== DONE =============")
	print("===============================")

if __name__ == "__main__":
	project_name = "cpx3_test_0_1"
	layers = [\
		{"type": CONV, "data_dim": 30, "op_dim": 3},\
		{"type": POOL, "data_dim": 28, "op_dim": 2},\
		{"type": CONV, "data_dim": 14, "op_dim": 3},\
		{"type": POOL, "data_dim": 12, "op_dim": 2},\
		{"type": CONV, "data_dim": 6, "op_dim": 3},\
		{"type": POOL, "data_dim": 4, "op_dim": 2},\
	]
	create_vivado_project(project_name, layers)

	

