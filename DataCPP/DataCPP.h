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
//#pragma HLS INTERFACE ap_hs port=start
//#pragma HLS INTERFACE axis register both port=din_tlast
//#pragma HLS INTERFACE axis register both port=dat
//#pragma HLS INTERFACE axis port=return
#pragma HLS INTERFACE axis register both port=din
//#pragma HLS INTERFACE axis register both port=din_tlast
//#pragma HLS INTERFACE axis register both port=control
//#pragma HLS INTERFACE axis register both port=din_words
//#pragma HLS INTERFACE axis register both port=dout_words
	/*ap_uint<128> dat[4];*/
	//while(!start);
	d_in dat;
	dat.data=0x95EE819A76;
	dat.tlast=1;
	d_in_words words;
	words.tlast=1;
	words.data=0x10;
	d_out_words dwords;
	dwords.data=0x10;
	dwords.tlast=1;
	//dat[1]=0x22B05F4059A53;
	/*dat[0]=0x6;		dat[1]=0x7;
	dat[2]=0xA;		dat[3]=0x9;
	dat[4]=0x1;		dat[5]=0x8;0x10
	dat[6]=0xE;		dat[7]=0xE;
	dat[8]=0x5;		dat[9]=0x9;
	dat[10]=0xA;		dat[11]=0xC;
	dat[12]=0x2;		dat[13]=0x3;
	dat[14]=0x8;		dat[15]=0xD;
	dat[16]=0xD;		dat[17]=0xA;
	dat[18]=0x3;		dat[19]=0x1;
	dat[20]=0xB;		dat[21]=0xB;
	dat[22]=0x2;		dat[23]=0x5;
	dat[24]=0x9;		dat[25]=0xF;
	dat[26]=0x6;		dat[27]=0x4;
	dat[28]=0x6;		dat[29]=0xC;
	dat[30]=0x4;		dat[31]=0xA;
	dat[32]=0x3;		dat[33]=0x5;
	dat[34]=0xA;		dat[35]=0x9;
	dat[36]=0x5;		dat[37]=0x0;
	dat[38]=0x4;		dat[39]=0xF;
	dat[40]=0x5;		dat[41]=0x0;
	dat[42]=0xB;		dat[43]=0x2;
	dat[44]=0xA;		dat[45]=0xE;
	dat[46]=0xC;		dat[47]=0xF;
	dat[48]=0x6;		dat[49]=0x5;*/
	//for(int i=0;i<2;i++){
		control.write(0x048F55FC);
		din_words.write(words);
		dout_words.write(dwords);
		/*if(i==0)
			din_tlast[i]=0;
		else
			din_tlast[i]=1;*/
		/*for(int j=0;j<32;j++){
			if((i*32+j)>=50)
				break;
			din[i]=dat[i*32+j];
		}*/
		din.write(dat);
		/*if(i==0)
			din.write(0xA4C646F952BB13ADD832CA95EE819A76);
		else din.write(0x56FCEA2B05F4059A53);*/
		/*din_tlast=0;
		if(i==3)
			din_tlast=1;
		control=0x048F55FC;
		din_words=0x10;
		dout_words=0x10;9*/
	//}
}

#endif
