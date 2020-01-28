#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("clock1", 1, hls_in, -1, "", "", 1),
	Port_Property("clock2", 1, hls_in, -1, "", "", 1),
	Port_Property("reset", 1, hls_in, -1, "", "", 1),
	Port_Property("enable", 1, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("out_counter1", 4, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("out_counter2", 4, hls_out, 5, "ap_vld", "out_data", 1),
};
const char* HLS_Design_Meta::dut_name = "custom2::custom2";
