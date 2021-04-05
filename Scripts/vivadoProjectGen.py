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
# beofre you run the script make sure you set ip configurations

CONV = 0
POOL = 1

#========================================================================================
#                                   IP CONFIGURATIONS
#========================================================================================

project_name = "autotest13"
ip_count = 1
keep_log = 0

# [type, data_dim, op_dim]
ip0 = {"type": CONV, "data_dim": 16, "op_dim": 3}
ip1 = {}
ip2 = {}
ip3 = {}
ip4 = {}
ip5 = {}

#========================================================================================
#                                   global vars
#========================================================================================

import os

repo_path = "D:\\School\\Project\\new_repo\\"
scripts_path = repo_path + "Scripts\\"
tclscript = "vivadoProjectGen.tcl"
vivado_path = repo_path + "Vivado\\"
tclscript_path = scripts_path + "tcl\\" + tclscript
temp_path = vivado_path + "TEMP\\"

#========================================================================================
#                                         functions
#========================================================================================

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
			if (line == "set project_name PROJECT_NAME"):
				new_line = "set project_name {}".format(project_name)
			elif (line == "set ip_count IP_COUNT"):
				new_line = "set ip_count %d" %ip_count
			else:
				for i in range(ip_count):
					temp_line0 = "set ip%d XXX%d%d%dYYY" %(i,i,i,i)
					temp_line1 = "set ip%d_name XXX%d%d%dYYY_Z" %(i,i,i,i)
					if (line == temp_line0):
						new_line = "set ip%d %s" %(i, ips_names[i])
					elif (line == temp_line1):
						new_line = "set ip%d_name %s_0" %(i, ips_names[i])
					else:
						new_line = line
			new_line = new_line + "\n"
			new_lines.append(new_line)
	create_new_temp_file(temp_path + tclscript, new_lines)


#========================================================================================
#                                         main
#========================================================================================

os.chdir(vivado_path)
os.system("mkdir TEMP")
os.chdir(vivado_path + "\\TEMP")

# prep tcl vars
ip0_name = ip_name_get(ip0["type"], ip0["data_dim"], ip0["op_dim"])
ip1_name = "nothing"
ip2_name = "nothing"
ip3_name = "nothing"
ip4_name = "nothing"
ip5_name = "nothing"
ips_names = [ip0_name, ip1_name, ip2_name, ip3_name, ip4_name, ip5_name]
prep_tcl_script(project_name, ip_count, ips_names)

cmd = "vivado -mode batch -source {}".format(temp_path + tclscript)
os.system(cmd)

if (not keep_log):
	os.chdir(vivado_path)
	cmd = "rmdir /s /q " + temp_path
	os.system(cmd)

print("================================")
print("===========  DONE ==============")
print("================================")
