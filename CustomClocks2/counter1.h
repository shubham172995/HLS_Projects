#ifndef COUNTER1_H
#define COUNTER1_H

#include "systemc.h"

SC_MODULE (first_counter){
	/*create_clock -period 15 fast_clk
	create_clock -period 60 slow_clk*/
	sc_in_clk clock;
	sc_in<bool> reset, enable;
	sc_out<sc_uint<4> > out_counter;

	sc_uint<4> count;
	void increment(){
		//int i=0;
		while(1){
			//wait for sensitivity
			wait();
			//i=i+1;
			/*if(reset.read()==1){
				count=0;
				out_counter.write(count);
			}*/
			if(enable.read()==1){
				count=count+1;
				out_counter.write(count);
			}
		}
	}
	void print(){
		int i=0;
		while(i<=100){
			wait();
			i=i+1;
			cout<<"First Counter "<<sc_time_stamp()<<" -> Counter Value = "<<out_counter.read()<<endl;
		}
	}
	SC_CTOR(first_counter)
	:clock("clock")
	,reset("reset")
	,enable("enable")
	,out_counter("out_counter")
	{
		SC_CTHREAD(increment, clock.pos());
		reset_signal_is(reset,true);

		//SC_CTHREAD(print, clock.pos());
		//reset_signal_is(reset,true);
	}
};

#endif
