#ifndef DATACPP_H
#define DATACPP_H

#include "ap_int.h"
#include <systemc.h>
#include <hls_stream.h>

struct d_in{
	ap_uint<128> data;
	bool tlast;
};

struct d_in_words{
	ap_uint<8> data;
	bool tlast;
};

struct d_out_words{
	ap_uint<8> data;
	bool tlast;
};

void datag(hls::stream<d_in> din, hls::stream<int> control, hls::stream<d_in_words > din_words, hls::stream<d_out_words> dout_words){
#pragma HLS INTERFACE axis register both port=dout_words
#pragma HLS INTERFACE axis register both port=din_words
#pragma HLS INTERFACE axis register both port=control
#pragma HLS INTERFACE axis register both port=din
	d_in dat;
	dat.data=0xE95EE819A7;
	dat.tlast=1;
	d_in_words words;
	words.tlast=1;
	words.data=0x5;
	d_out_words dwords;
	dwords.data=0x10;
	dwords.tlast=1;
	control.write(0xFC558F04);
	din_words.write(words);
	dout_words.write(dwords);
	din.write(dat);
}

#endif
