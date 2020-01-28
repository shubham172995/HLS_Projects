#include <systemc.h>

SC_MODULE (first_counter){
	/*create_clock -period 15 fast_clk
	create_clock -period 60 slow_clk*/
	sc_in_clk clock;
	sc_in<bool> reset, enable;
	sc_out<sc_uint<4> > out_counter;

	sc_uint<4> count;
	void increment(){
		int i=0;
		while(i<=100){
			//wait for sensitivity
			wait();
			i=i+1;
			if(reset.read()==1){
				count=0;
				out_counter.write(count);
			}
			else if(enable.read()==1){
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
	SC_CTOR(first_counter){
		SC_CTHREAD(increment, clock.pos());
		SC_THREAD(print);
		sensitive<<out_counter;
	}
};
