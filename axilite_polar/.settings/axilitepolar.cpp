#include<iostream>
#include <stdint.h>
#include<cstring>

using namespace std;

int PutValue(uint32_t* addr, uint32_t data){
#pragma HLS INTERFACE ap_bus port=addr
#pragma HLS RESOURCE core=AXI4M variable=addr
//#pragma HLS INTERFACE s_axilite port=addr bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=data bundle=CRTLS
#pragma HLS INTERFACE s_axilite port=return bundle=CRTLS
	//*addr=data;
	memcpy(addr, &data, sizeof(uint32_t));
	return 1;
}
