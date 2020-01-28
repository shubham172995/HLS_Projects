#ifndef CUSTOM2_H
#define CUSTOM2_H

#include "systemc.h"
#include "/home/shubham/HLS_Exercises/CustomClocks2/counter1.h"
//#include "counter2.h"

SC_MODULE (custom2){
	sc_in <bool> clock1;
	sc_in <bool> clock2;
	sc_in <bool> reset;
	sc_in <bool> enable;
	sc_out <sc_uint<4> > out_counter1;
	sc_out <sc_uint<4> > out_counter2;

	sc_uint<4> count1;
	sc_uint<4> count2;

	first_counter first;
	first_counter second;

	SC_CTOR(custom2)
	:clock1("clock1")
	,clock2("clock2")
	,reset("reset")
	,enable("enable")
	,out_counter1("out_counter1")
	,out_counter2("out_counter2")
	,first("first")
	,second("second")
	{
		first.clock(clock1);
		first.reset(reset);
		first.enable(enable);
		first.out_counter(out_counter1);

		second.clock(clock2);
		second.reset(reset);
		second.enable(enable);
		second.out_counter(out_counter2);
	}
};

#endif
