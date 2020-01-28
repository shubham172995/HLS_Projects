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


SC_MODULE (second_counter){
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
			cout<<"Second Counter "<<sc_time_stamp()<<" -> Counter Value = "<<out_counter.read()<<endl;
		}
	}
	SC_CTOR(second_counter){
		SC_CTHREAD(increment, clock.pos());
		SC_THREAD(print);
		sensitive<<out_counter;
	}
};

/*void top(sc_clock clock1, sc_clock clock2, sc_signal<bool> reset1, sc_signal<bool> reset2, sc_signal<bool> enable1, sc_signal<bool> enable2, sc_signal<sc_uint<4> > out_counter1, sc_signal<sc_uint<4> > out_counter2){
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
}*/

/*void top(){

	set_directive_clock first_counter fast_clock
	set_directive_clock second_counter slow_clock
}*/
