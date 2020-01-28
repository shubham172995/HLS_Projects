set clock_constraint { \
    name clk \
    module custom2::custom2 \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set MultiClock_number 2

set MultiClock_constraint {  clock1 10 clock2 10 }

set all_path {}

set false_path {}

