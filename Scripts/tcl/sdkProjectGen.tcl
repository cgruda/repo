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

# create sdk application
createapp -name $project_name -proc ps7_cortexa9_0 -app {Empty Application} -hwproject design_1_wrapper_hw_platform_0 -os standalone -lang c

importsources -name $project_name -path $repo_path/Vivado/tmp/sdk

importsources -name auto_test_2 -path D:/School/Project/new_repo/Vivado/tmp/sdk





set project_dir $project_name

open_project -reset $project_name
set_top $project_name
file copy -force -- $repo_path/HLS/tmp/core.cpp $project_dir/core.cpp
file copy -force -- $repo_path/HLS/tmp/core.h $project_dir/core.h
file copy -force -- $repo_path/HLS/tmp/core_tb.cpp $project_dir/core_tb.cpp
file copy -force -- $repo_path/Source/HLS/common/fixed_point.h $project_dir/fixed_point.h

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