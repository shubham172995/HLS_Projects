set moduleName llr
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
set C_modelName {llr}
set C_modelType { void 0 }
set C_modelArgList {
	{ dt_V_data_V int 128 regular {axi_s 0 volatile  { dt Data } }  }
	{ dt_V_tlast int 1 regular {axi_s 0 volatile  { dt Last } }  }
	{ din_V_data_V int 128 regular {axi_s 1 volatile  { din Data } }  }
	{ din_V_tlast int 1 regular {axi_s 1 volatile  { din Last } }  }
	{ control_V int 32 regular {axi_s 1 volatile  { control_V Data } }  }
	{ din_words_V_data_V int 8 regular {axi_s 1 volatile  { din_words Data } }  }
	{ din_words_V_tlast int 1 regular {axi_s 1 volatile  { din_words Last } }  }
	{ dout_words_V_data_V int 8 regular {axi_s 1 volatile  { dout_words Data } }  }
	{ dout_words_V_tlast int 1 regular {axi_s 1 volatile  { dout_words Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dt_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "dt.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dt_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dt.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "din.V.data.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "din.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "control_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "control.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_words_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "din_words.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "din_words_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "din_words.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_words_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dout_words.V.data.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dout_words_V_tlast", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dout_words.V.tlast","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dt_TDATA sc_in sc_lv 128 signal 0 } 
	{ dt_TVALID sc_in sc_logic 1 invld 1 } 
	{ dt_TREADY sc_out sc_logic 1 inacc 1 } 
	{ dt_TLAST sc_in sc_logic 1 signal 1 } 
	{ din_TDATA sc_out sc_lv 128 signal 2 } 
	{ din_TVALID sc_out sc_logic 1 outvld 3 } 
	{ din_TREADY sc_in sc_logic 1 outacc 2 } 
	{ din_TLAST sc_out sc_logic 1 signal 3 } 
	{ control_V_TDATA sc_out sc_lv 32 signal 4 } 
	{ control_V_TVALID sc_out sc_logic 1 outvld 4 } 
	{ control_V_TREADY sc_in sc_logic 1 outacc 4 } 
	{ din_words_TDATA sc_out sc_lv 8 signal 5 } 
	{ din_words_TVALID sc_out sc_logic 1 outvld 6 } 
	{ din_words_TREADY sc_in sc_logic 1 outacc 5 } 
	{ din_words_TLAST sc_out sc_logic 1 signal 6 } 
	{ dout_words_TDATA sc_out sc_lv 8 signal 7 } 
	{ dout_words_TVALID sc_out sc_logic 1 outvld 8 } 
	{ dout_words_TREADY sc_in sc_logic 1 outacc 7 } 
	{ dout_words_TLAST sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dt_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "dt_V_data_V", "role": "default" }} , 
 	{ "name": "dt_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "dt_V_tlast", "role": "default" }} , 
 	{ "name": "dt_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "dt_V_tlast", "role": "default" }} , 
 	{ "name": "dt_TLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dt_V_tlast", "role": "default" }} , 
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
		"CDFG" : "llr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "dt_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dt_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dt_V_tlast", "Type" : "Axis", "Direction" : "I"},
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
	llr {
		dt_V_data_V {Type I LastRead 0 FirstWrite -1}
		dt_V_tlast {Type I LastRead 0 FirstWrite -1}
		din_V_data_V {Type O LastRead -1 FirstWrite 2}
		din_V_tlast {Type O LastRead -1 FirstWrite 2}
		control_V {Type O LastRead -1 FirstWrite 0}
		din_words_V_data_V {Type O LastRead -1 FirstWrite 0}
		din_words_V_tlast {Type O LastRead -1 FirstWrite 0}
		dout_words_V_data_V {Type O LastRead -1 FirstWrite 0}
		dout_words_V_tlast {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dt_V_data_V { axis {  { dt_TDATA in_data 0 128 } } }
	dt_V_tlast { axis {  { dt_TVALID in_vld 0 1 }  { dt_TREADY in_acc 1 1 }  { dt_TLAST in_data 0 1 } } }
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
