#ifndef PSDATAGEN_H
#define PSDATAGEN_H

#include "systemc.h"
#include "/home/shubham/HLS_Exercises/PSDataGen/calculate.h"

SC_MODULE (PSDataGen){
	sc_in<bool> clock;
	sc_out<bool>  din_tlast;
	sc_out<bool>  din_tvalid;
	sc_out<sc_uint<32> > ctrl;
	sc_out<sc_uint<4> > dout_words;
	sc_out<sc_uint<128> > din;
	sc_out<bool> reset;
	sc_out<sc_uint<4> > din_words;

	calculation cal;

	SC_CTOR(PSDataGen)
	:dout_words("dout_words"),
	ctrl("ctrl"),
	din("din"),
	din_words("din_words"),
	clock("clock"),
	din_tvalid("din_tvalid"),
	din_tlast("din_tlast"),
	cal("cal"),
	reset("reset")
	{

		cal.ctrl(ctrl);
		cal.reset(reset);
		cal.din_tlast(din_tlast);
		cal.din_tvalid(din_tvalid);
		cal.clock(clock);
		cal.dout_words(dout_words);
		cal.din(din);
		cal.din_words(din_words);
	}
};

#endif
