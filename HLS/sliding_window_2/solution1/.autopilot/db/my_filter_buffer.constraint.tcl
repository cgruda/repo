set clock_constraint { \
    name clk \
    module my_filter_buffer \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

