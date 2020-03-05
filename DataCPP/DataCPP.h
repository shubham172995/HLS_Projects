#ifndef DATACPP_H
#define DATACPP_H

#include "ap_int.h"
#include <systemc.h>
#include <hls_stream.h>
//#include "ap_axi_sdata.h"

//typedef ap_axiu<128,1,1,1> data_element;

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
	dat.data=0xF5EE819A76;
	dat.tlast=1;
	d_in_words words;
	words.tlast=1;
	words.data=0x5;
	d_out_words dwords;
	dwords.data=0x10;
	dwords.tlast=1;
	control.write(0);
	din_words.write(words);
	dout_words.write(dwords);
	/*for(int i=0;i<5;i++){
		if(i==4)
			dat.tlast=1;
		else dat.tlast=0;
		if(i==0)
			dat.data=0x76;
		else if(i==1)
			dat.data=0x9A;
		else if(i==2)
			dat.data=0x81;
		else if(i==3)
			dat.data=0xEE;
		else dat.data=0xF5;
		din.write(dat);
	}*/
	din.write(dat);
}

#endif
