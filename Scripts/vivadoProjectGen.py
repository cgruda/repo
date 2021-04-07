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

project_name = "cpx3_test_0_1"
ip_count = 6
ip0 = {"type": CONV, "data_dim": 30, "op_dim": 3}
ip1 = {"type": POOL, "data_dim": 28, "op_dim": 2}
ip2 = {"type": CONV, "data_dim": 14, "op_dim": 3}
ip3 = {"type": POOL, "data_dim": 12, "op_dim": 2}
ip4 = {"type": CONV, "data_dim": 6, "op_dim": 3}
ip5 = {"type": POOL, "data_dim": 4, "op_dim": 2}

run_synth = 1
launch_sdk = 1

keep_log = 1

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


#========================================================================================
#                                         main
#========================================================================================

print("================================================")
print("=========== GENERATING TCL SCRIPT ==============")
print("================================================")


os.chdir(vivado_path)
os.system("mkdir TEMP")
os.chdir(vivado_path + "\\TEMP")

# prep tcl vars
ip0_name = ip_name_get(ip0["type"], ip0["data_dim"], ip0["op_dim"])
ip1_name = ip_name_get(ip1["type"], ip1["data_dim"], ip1["op_dim"])
ip2_name = ip_name_get(ip2["type"], ip2["data_dim"], ip2["op_dim"])
ip3_name = ip_name_get(ip3["type"], ip3["data_dim"], ip3["op_dim"])
ip4_name = ip_name_get(ip4["type"], ip4["data_dim"], ip4["op_dim"])
ip5_name = ip_name_get(ip5["type"], ip5["data_dim"], ip5["op_dim"])
ips_names = [ip0_name, ip1_name, ip2_name, ip3_name, ip4_name, ip5_name]
prep_tcl_script(project_name, ip_count, ips_names)

print("=============================================")
print("=========== RUNINIG TCL SCRIPT ==============")
print("=============================================")


cmd = "vivado -mode batch -source {}".format(temp_path + tclscript)
os.system(cmd)

if (not keep_log):
	os.chdir(vivado_path)
	cmd = "rmdir /s /q " + temp_path
	os.system(cmd)

print("===============================")
print("=========== DONE =============")
print("===============================")
