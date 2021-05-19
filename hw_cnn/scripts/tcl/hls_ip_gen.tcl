# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

#========================================================================================
#                                        README
#========================================================================================
# 
#  THIS SCRIPT IS DESINED TO BE MODIFIED AND EXECUTED BY PYTHON SCRIPT. DONT CHANGE IT !!
# 

#========================================================================================
#                                      script vars
#========================================================================================

set repo_path D:/School/Project/new_repo
set project_name PROJECT_NAME
set project_name_str "PROJECT_NAME"

#========================================================================================
#                                            main
#========================================================================================

set project_dir $project_name

open_project -reset $project_name
set_top $project_name
file copy -force -- $repo_path/hw_cnn/hls/tmp/core.cpp $project_dir/core.cpp
file copy -force -- $repo_path/hw_cnn/hls/tmp/core.h $project_dir/core.h
file copy -force -- $repo_path/hw_cnn/hls/tmp/core_tb.cpp $project_dir/core_tb.cpp
file copy -force -- $repo_path/hw_cnn/hls/src/common/fixed_point.h $project_dir/fixed_point.h

add_files $project_dir/core.cpp
add_files $project_dir/core.h
add_files $project_dir/fixed_point.h
add_files -tb $project_dir/core_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default

csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name $project_name_str

exit