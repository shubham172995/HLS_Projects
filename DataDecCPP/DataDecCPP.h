#ifndef DATADECCPP_H
#define DATADECCPP_H

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

void datagdec(hls::stream<d_in> din, hls::stream<int> control, hls::stream<d_in_words > din_words, hls::stream<d_out_words> dout_words){
#pragma HLS INTERFACE axis register both port=dout_words
#pragma HLS INTERFACE axis register both port=din_words
#pragma HLS INTERFACE axis register both port=control
#pragma HLS INTERFACE axis register both port=din
	ap_uint<64> llr[2];
		llr[0]=43436342183587593;	llr[1]=1376363;
		ap_int<8> t[8];
		for(int i=0;i<8;i++){
			if(i&1)
				t[i]=0x00;
			else t[i]=0xff;
			//dat.tlast=0;
			//ap_int<8> t;
			if(llr[0]){
				t[i]=(llr[0]&1)?31:-31;
				llr[0]>>1;
			}
			else{
				t[i]=(llr[1]&1)?31:-31;
				llr[1]>>1;
			}
			/*if(llr[1]==0)
				dat.tlast=1;
			dat.data=t;
			din.write(dat);*/
		}
		d_in dat;
		/*dat.data=0xF5EE819A76;
		dat.tlast=1;*/
		d_in_words words;
		words.tlast=1;
		words.data=0x10;
		d_out_words dwords;
		dwords.data=0x10;
		dwords.tlast=1;
		control.write(0);
		din_words.write(words);
		dout_words.write(dwords);
		for(int i=0;i<8;i++){
				if(i<7)
					dat.tlast=0;
				else dat.tlast=1;
				dat.data=t[i];
				din.write(dat);
			}
	}

	#endif
