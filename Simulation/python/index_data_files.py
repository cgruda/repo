import glob

path = "D:\\School\\Project\\new_repo\\Simulation\\data\\"

for i in range(10):
	dir_path = path + "{}\\".format(i)
	list_files_in_dir = glob.glob(dir_path + "\\*")
	index_file_path = dir_path + "index.txt"
	with open(index_file_path, "w") as fp:
		for fname in list_files_in_dir:
			fp.write(fname + "\n")
