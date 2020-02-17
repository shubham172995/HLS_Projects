#ifndef DATACPP_H
#define DATACPP_H

#include "ap_int.h"
#include "systemc.h"

void assign(ap_uint<128> din, bool din_tvalid, bool din_tlast, ap_uint<32> control, ap_uint<4> din_words, ap_uint<4> dout_words){
#pragma HLS INTERFACE m_axi depth=50 port=din
#pragma HLS INTERFACE m_axi depth=50 port=din_tvalid
#pragma HLS INTERFACE m_axi depth=50 port=din_tlast
#pragma HLS INTERFACE m_axi depth=50 port=control
#pragma HLS INTERFACE m_axi depth=50 port=din_words
#pragma HLS INTERFACE m_axi depth=50 port=dout_words
	din_tvalid=1;
	din_tlast=0;
	control=0x048F55FC;
	din_words=0x10;
	dout_words=0x10;
	din=0xD832CA95EE819A76;
	wait(10, SC_NS);
	din=0xA4C646F952BB13AD;
	wait(10, SC_NS);
	din=0xFCEA2B05F4059A53;
	wait(10, SC_NS);
	din=0x56;
}

#endif
