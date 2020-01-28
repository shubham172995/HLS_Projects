#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/shubham/HLS_Exercises/axilite_polar/solution1/.autopilot/db/a.g.bc ${1+"$@"}
