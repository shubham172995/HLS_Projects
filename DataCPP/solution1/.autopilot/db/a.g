#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/shubham/HLS_Exercises/DataCPP/solution1/.autopilot/db/a.g.bc ${1+"$@"}
