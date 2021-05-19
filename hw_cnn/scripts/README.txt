
scripts support creation of CONV and POOL ips (no FC ips)
and vivado design that includes only CONV and POOL layers
FC layers need to be added manually

scripts to create hls ip blocks and vivado cnn design:

hls_ip_gen        - auto creates ip cores
vivado_design_gen - auto create vivado project with specified cnn layers
cnn_gen           - combine hls and vivado scripts

tcl               - DONT TOUCH THESE FILES UNLESS YOU KNOW BETTER (these files are used by py scripts)