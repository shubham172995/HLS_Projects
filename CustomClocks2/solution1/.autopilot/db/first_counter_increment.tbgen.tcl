set moduleName first_counter_increment
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {first_counter::increment}
set C_modelType { void 0 }
set C_modelArgList {
	{ enable int 1 regular {pointer 0 volatile }  }
	{ out_counter int 4 regular {pointer 1 volatile }  }
	{ first_counter_count_V int 4 regular {pointer 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "first_counter.enable.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_counter", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "first_counter.out_counter.m_if.Val.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "first_counter_count_V", "interface" : "wire", "bitwidth" : 4, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "first_counter.count.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ enable sc_in sc_logic 1 signal 0 } 
	{ out_counter sc_out sc_lv 4 signal 1 } 
	{ out_counter_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ first_counter_count_V_i sc_in sc_lv 4 signal 2 } 
	{ first_counter_count_V_o sc_out sc_lv 4 signal 2 } 
	{ first_counter_count_V_o_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "out_counter", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_counter", "role": "default" }} , 
 	{ "name": "out_counter_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_counter", "role": "ap_vld" }} , 
 	{ "name": "first_counter_count_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "first_counter_count_V", "role": "i" }} , 
 	{ "name": "first_counter_count_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "first_counter_count_V", "role": "o" }} , 
 	{ "name": "first_counter_count_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "first_counter_count_V", "role": "o_ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "first_counter_increment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_counter", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "first_counter_count_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	first_counter_increment {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 1 FirstWrite -1}
		out_counter {Type O LastRead -1 FirstWrite 1}
		first_counter_count_V {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	enable { ap_none {  { enable in_data 0 1 } } }
	out_counter { ap_vld {  { out_counter out_data 1 4 }  { out_counter_ap_vld out_vld 1 1 } } }
	first_counter_count_V { ap_ovld {  { first_counter_count_V_i in_data 0 4 }  { first_counter_count_V_o out_data 1 4 }  { first_counter_count_V_o_ap_vld out_vld 1 1 } } }
}
