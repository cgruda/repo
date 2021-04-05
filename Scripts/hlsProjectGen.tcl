# Project 20-1-1-2187
# CNN accelerator
# 
# Chaim Gruda
# Shay Tsabar

#========================================================================================
#                                        README
#========================================================================================
# 
# repo_path      - make sure its set to repo checked out from git
# gen_bitstream  - if set to 1 will generate bitstream (takes a while to complete)
# lun_sdk        - if set to 1 will launch SDK at end of run
# ip_count       - from 1 to 6
# 
# ipX            - make sure the IP exists in HLS folder
# ipX_name       - i suggest to make it "ipX_0"
# ipX_ver        - usually will be 1.0 (unless you know better)
# 

#========================================================================================
#                                      script vars
#========================================================================================

set repo_path D:/School/Project/new_repo
set type conv
set project_name autotest0
set project_name_str "autotest0"

#========================================================================================
#                                            main
#========================================================================================

set project_dir $project_name

open_project -reset $project_name
set_top $project_name
file copy -force -- $repo_path/Source/HLS/$type/core.cpp $project_dir/core.cpp
file copy -force -- $repo_path/Source/HLS/$type/core.h $project_dir/core.h
file copy -force -- $repo_path/Source/HLS/$type/fixed_point.h $project_dir/fixed_point.h
file copy -force -- $repo_path/Source/HLS/$type/core_tb.cpp $project_dir/core_tb.cpp

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