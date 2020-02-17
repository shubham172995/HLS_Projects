set moduleName datag
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
set C_modelName {datag}
set C_modelType { void 0 }
set C_modelArgList {
	{ din_V_data_V int 128 regular {axi_s 1 volatile  { din Data } }  }
	{ din_V_tlast int 1 regular {axi_s 1 volatile  { din Last } }  }
	{ control_V int 32 regular {axi_s 1 volatile  { control_V Data } }  }
	{ din_words_V_data_V int 8 regular {axi_s 1 volatile  { din_words Data } }  }
	{ din_words_V_tlast int 1 regular {axi_s 1 volatile  { din_words Last } }  }
	{ dout_words_V_data_V int 8 regular {axi_s 1 volatile  { dout_words Data } }  }
	{ dout_words_V_tlast int 1 regular {axi_s 1 volatile  { dout_words Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "din.V.data.V","cData": "uint128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "din.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "control_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "control.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_words_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "din_words.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_words_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "din_words.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_words_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dout_words.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_words_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dout_words.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ din_TDATA sc_out sc_lv 128 signal 0 } 
	{ din_TVALID sc_out sc_logic 1 outvld 1 } 
	{ din_TREADY sc_in sc_logic 1 outacc 0 } 
	{ din_TLAST sc_out sc_logic 1 signal 1 } 
	{ control_V_TDATA sc_out sc_lv 32 signal 2 } 
	{ control_V_TVALID sc_out sc_logic 1 outvld 2 } 
	{ control_V_TREADY sc_in sc_logic 1 outacc 2 } 
	{ din_words_TDATA sc_out sc_lv 8 signal 3 } 
	{ din_words_TVALID sc_out sc_logic 1 outvld 4 } 
	{ din_words_TREADY sc_in sc_logic 1 outacc 3 } 
	{ din_words_TLAST sc_out sc_logic 1 signal 4 } 
	{ dout_words_TDATA sc_out sc_lv 8 signal 5 } 
	{ dout_words_TVALID sc_out sc_logic 1 outvld 6 } 
	{ dout_words_TREADY sc_in sc_logic 1 outacc 5 } 
	{ dout_words_TLAST sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "din_V_data_V", "role": "default" }} , 
 	{ "name": "din_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "din_V_tlast", "role": "default" }} , 
 	{ "name": "din_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "din_V_data_V", "role": "default" }} , 
 	{ "name": "din_TLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_V_tlast", "role": "default" }} , 
 	{ "name": "control_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_V", "role": "TDATA" }} , 
 	{ "name": "control_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "control_V", "role": "TVALID" }} , 
 	{ "name": "control_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "control_V", "role": "TREADY" }} , 
 	{ "name": "din_words_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "din_words_V_data_V", "role": "default" }} , 
 	{ "name": "din_words_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "din_words_V_tlast", "role": "default" }} , 
 	{ "name": "din_words_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "din_words_V_data_V", "role": "default" }} , 
 	{ "name": "din_words_TLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "din_words_V_tlast", "role": "default" }} , 
 	{ "name": "dout_words_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dout_words_V_data_V", "role": "default" }} , 
 	{ "name": "dout_words_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dout_words_V_tlast", "role": "default" }} , 
 	{ "name": "dout_words_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dout_words_V_data_V", "role": "default" }} , 
 	{ "name": "dout_words_TLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dout_words_V_tlast", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "datag",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "din_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "din_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_V_tlast", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "control_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "control_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_words_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "din_words_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "din_words_V_tlast", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dout_words_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dout_words_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dout_words_V_tlast", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	datag {
		din_V_data_V {Type O LastRead -1 FirstWrite 0}
		din_V_tlast {Type O LastRead -1 FirstWrite 0}
		control_V {Type O LastRead -1 FirstWrite 0}
		din_words_V_data_V {Type O LastRead -1 FirstWrite 0}
		din_words_V_tlast {Type O LastRead -1 FirstWrite 0}
		dout_words_V_data_V {Type O LastRead -1 FirstWrite 0}
		dout_words_V_tlast {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	din_V_data_V { axis {  { din_TDATA out_data 1 128 }  { din_TREADY out_acc 0 1 } } }
	din_V_tlast { axis {  { din_TVALID out_vld 1 1 }  { din_TLAST out_data 1 1 } } }
	control_V { axis {  { control_V_TDATA out_data 1 32 }  { control_V_TVALID out_vld 1 1 }  { control_V_TREADY out_acc 0 1 } } }
	din_words_V_data_V { axis {  { din_words_TDATA out_data 1 8 }  { din_words_TREADY out_acc 0 1 } } }
	din_words_V_tlast { axis {  { din_words_TVALID out_vld 1 1 }  { din_words_TLAST out_data 1 1 } } }
	dout_words_V_data_V { axis {  { dout_words_TDATA out_data 1 8 }  { dout_words_TREADY out_acc 0 1 } } }
	dout_words_V_tlast { axis {  { dout_words_TVALID out_vld 1 1 }  { dout_words_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
