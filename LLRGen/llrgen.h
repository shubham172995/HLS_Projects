#ifndef LLRGEN_H
#define LLRGEN_H

#include "ap_int.h"
#include <systemc.h>
#include <hls_stream.h>
//#include "ap_axi_sdata.h"

//typedef ap_axiu<128,1,1,1> data_element;

/*
MIND THE DATA TYPE OF DIN'S DATA FIELD. SINCE, YOU WILL BE COPYING LLR VALUES TO DATA FIELD, CHECK FOR THE DATA TYPE SINCE LLR WILL BE 31 OR -31 AND CURRENTLY, DATA TYPE OF DIN'S DATA FIELD IS UINT<128>
*/

struct d_in{
	ap_int<128> data;
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

void llr(hls::stream<d_in> dt, hls::stream<d_in> din, hls::stream<int> control, hls::stream<d_in_words > din_words, hls::stream<d_out_words> dout_words){
#pragma HLS INTERFACE axis register both port=dout_words
#pragma HLS INTERFACE axis register both port=din_words
#pragma HLS INTERFACE axis register both port=control
#pragma HLS INTERFACE axis register both port=din
#pragma HLS INTERFACE axis register both port=dt
		d_in dat, temp;
		d_in_words words;
		words.tlast=1;
		words.data=0x10;
		d_out_words dwords;
		dwords.data=0x05;
		dwords.tlast=1;
		control.write(0xfc000004);
		din_words.write(words);
		dout_words.write(dwords);
		ap_int<8> t;
		temp=dt.read();
		while(temp.data){
			t=(temp.data&1)?0x7F:0x81;
			temp.data>>=1;
			if(temp.data==0)
				dat.tlast=1;
			else dat.tlast=0;
			dat.data=t;
			din.write(dat);
		}
	}

	#endif
