# This constraints file contains default clock frequencies to be used during out-of-context flows such as
# OOC Synthesis and Hierarchical Designs. For best results the frequencies should be modified
# to match the target frequencies. 
# This constraints file is not used in normal top-down synthesis (the default flow of Vivado)
create_clock -name clock1 -period 10.000 [get_ports clock1]
create_clock -name clock2 -period 10.000 [get_ports clock2]

set_false_path -from [get_clocks clock1] -to [get_clocks clock2]
set_false_path -from [get_clocks clock2] -to [get_clocks clock1]
