#include <systemc.h>
#include "custom.cpp"

int sc_main(int argc, char* argv[]){
	sc_clock clock1("clock1", 4, 0.5);
	sc_clock clock2("clock2", 2, 0.5);
	sc_signal<bool>   reset1;
	sc_signal<bool>   enable1;
	sc_signal<sc_uint<4> > out_counter1;
	sc_signal<bool>   reset2;
	sc_signal<bool>   enable2;
	sc_signal<sc_uint<4> > out_counter2;
	reset1=0;
	reset2=0;
	enable1=1;
	enable2=1;

	second_counter ob2("SECOND");
	ob2.clock(clock2);
	ob2.reset(reset2);
	ob2.enable(enable2);
	ob2.out_counter(out_counter2);

	first_counter ob1("FIRST");
	ob1.clock(clock1);
	ob1.reset(reset1);
	ob1.enable(enable1);
	ob1.out_counter(out_counter1);

	//top(clock1, clock2, reset1, reset2, enable1, enable2, out_counter1, out_counter2);

	//top();
	sc_start(1000, SC_NS);

	return 0;
}
