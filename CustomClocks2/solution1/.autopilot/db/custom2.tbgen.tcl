set moduleName custom2
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
set C_modelName {custom2::custom2}
set C_modelType { void 0 }
set C_modelArgList {
	{ clock1 int 1 unused {pointer 0}  }
	{ clock2 int 1 unused {pointer 0}  }
	{ reset int 1 unused {pointer 0}  }
	{ enable int 1 unused {pointer 0}  }
	{ out_counter1 int 4 unused {pointer 1}  }
	{ out_counter2 int 4 unused {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "clock1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "custom2.clock1.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "clock2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "custom2.clock2.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "reset", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "custom2.reset.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "enable", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "custom2.enable.m_if.Val","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_counter1", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "custom2.out_counter1.m_if.Val.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_counter2", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "custom2.out_counter2.m_if.Val.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 6
set portList { 
	{ clock1 sc_in sc_logic 1 clock -1 } 
	{ clock2 sc_in sc_logic 1 clock -1 } 
	{ reset sc_in sc_logic 1 reset -1 active_high_sync clock1 } 
	{ enable sc_in sc_logic 1 signal 3 clock1 } 
	{ out_counter1 sc_out sc_lv 4 signal 4 clock1 } 
	{ out_counter2 sc_out sc_lv 4 signal 5 clock1 } 
}
set NewPortList {[ 
	{ "name": "clock1", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock1", "role": "default" }} , 
 	{ "name": "clock2", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "clock2", "role": "default" }} , 
 	{ "name": "reset", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "reset", "role": "default" }} , 
 	{ "name": "enable", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "enable", "role": "default" }} , 
 	{ "name": "out_counter1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_counter1", "role": "default" }} , 
 	{ "name": "out_counter2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_counter2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "custom2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock1", "Type" : "None", "Direction" : "I"},
			{"Name" : "clock2", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "enable", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_counter1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_counter2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "custom2_count1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "custom2_count2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "clock1_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_first_counter_fu_70", "Port" : "clock"}]},
			{"Name" : "reset_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_first_counter_fu_70", "Port" : "reset"}]},
			{"Name" : "enable_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_first_counter_fu_70", "Port" : "enable"}]},
			{"Name" : "out_counter1_form", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_first_counter_fu_70", "Port" : "out_counter"}]},
			{"Name" : "custom2_first_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_first_counter_fu_70", "Port" : "first_counter_count_V"}]},
			{"Name" : "clock2_form", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_first_counter_fu_86", "Port" : "clock"}]},
			{"Name" : "reset_form1", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_first_counter_fu_86", "Port" : "reset"}]},
			{"Name" : "enable_form2", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_first_counter_fu_86", "Port" : "enable"}]},
			{"Name" : "out_counter2_form", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_first_counter_fu_86", "Port" : "out_counter"}]},
			{"Name" : "custom2_second_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_first_counter_fu_86", "Port" : "first_counter_count_V"}]},
			{"Name" : "first_counter_ssdm_thread_M_increment", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_first_counter_fu_70", "Port" : "first_counter_ssdm_thread_M_increment"},
					{"ID" : "3", "SubInstance" : "grp_first_counter_fu_86", "Port" : "first_counter_ssdm_thread_M_increment"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_first_counter_fu_70", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "first_counter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "reset"}]},
			{"Name" : "enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "enable"}]},
			{"Name" : "out_counter", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "out_counter"}]},
			{"Name" : "first_counter_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "first_counter_count_V"}]},
			{"Name" : "first_counter_ssdm_thread_M_increment", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_first_counter_fu_70.grp_first_counter_increment_fu_50", "Parent" : "1",
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
			{"Name" : "first_counter_count_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_first_counter_fu_86", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "first_counter",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [],
		"Port" : [
			{"Name" : "clock", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "clock"}]},
			{"Name" : "reset", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "reset"}]},
			{"Name" : "enable", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "enable"}]},
			{"Name" : "out_counter", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "out_counter"}]},
			{"Name" : "first_counter_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_first_counter_increment_fu_50", "Port" : "first_counter_count_V"}]},
			{"Name" : "first_counter_ssdm_thread_M_increment", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_first_counter_fu_86.grp_first_counter_increment_fu_50", "Parent" : "3",
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
	custom2 {
		clock1 {Type I LastRead -1 FirstWrite -1}
		clock2 {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead -1 FirstWrite -1}
		out_counter1 {Type O LastRead -1 FirstWrite -1}
		out_counter2 {Type O LastRead -1 FirstWrite -1}
		custom2_count1_V {Type I LastRead -1 FirstWrite -1}
		custom2_count2_V {Type I LastRead -1 FirstWrite -1}
		clock1_form {Type I LastRead -1 FirstWrite -1}
		reset_form {Type I LastRead -1 FirstWrite -1}
		enable_form {Type I LastRead -1 FirstWrite -1}
		out_counter1_form {Type O LastRead -1 FirstWrite -1}
		custom2_first_count_V {Type IO LastRead -1 FirstWrite -1}
		clock2_form {Type I LastRead -1 FirstWrite -1}
		reset_form1 {Type I LastRead -1 FirstWrite -1}
		enable_form2 {Type I LastRead -1 FirstWrite -1}
		out_counter2_form {Type O LastRead -1 FirstWrite -1}
		custom2_second_count_V {Type IO LastRead -1 FirstWrite -1}
		first_counter_ssdm_thread_M_increment {Type I LastRead -1 FirstWrite -1}}
	first_counter {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 1 FirstWrite -1}
		out_counter {Type O LastRead -1 FirstWrite 1}
		first_counter_count_V {Type IO LastRead -1 FirstWrite -1}
		first_counter_ssdm_thread_M_increment {Type I LastRead -1 FirstWrite -1}}
	first_counter_increment {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 1 FirstWrite -1}
		out_counter {Type O LastRead -1 FirstWrite 1}
		first_counter_count_V {Type IO LastRead 1 FirstWrite 1}}
	first_counter {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 1 FirstWrite -1}
		out_counter {Type O LastRead -1 FirstWrite 1}
		first_counter_count_V {Type IO LastRead -1 FirstWrite -1}
		first_counter_ssdm_thread_M_increment {Type I LastRead -1 FirstWrite -1}}
	first_counter_increment {
		clock {Type I LastRead -1 FirstWrite -1}
		reset {Type I LastRead -1 FirstWrite -1}
		enable {Type I LastRead 1 FirstWrite -1}
		out_counter {Type O LastRead -1 FirstWrite 1}
		first_counter_count_V {Type IO LastRead 1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "5"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	enable { ap_none {  { enable in_data 0 1 } } }
	out_counter1 { ap_vld {  { out_counter1 out_data 1 4 } } }
	out_counter2 { ap_vld {  { out_counter2 out_data 1 4 } } }
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
