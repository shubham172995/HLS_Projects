// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="llr,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu9eg-ffvb1156-2-i,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.300297,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=931,HLS_SYN_LUT=374,HLS_VERSION=2018_3}" *)

module llr (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        dt_TDATA,
        dt_TVALID,
        dt_TREADY,
        dt_TLAST,
        din_TDATA,
        din_TVALID,
        din_TREADY,
        din_TLAST,
        control_V_TDATA,
        control_V_TVALID,
        control_V_TREADY,
        din_words_TDATA,
        din_words_TVALID,
        din_words_TREADY,
        din_words_TLAST,
        dout_words_TDATA,
        dout_words_TVALID,
        dout_words_TREADY,
        dout_words_TLAST
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] dt_TDATA;
input   dt_TVALID;
output   dt_TREADY;
input   dt_TLAST;
output  [127:0] din_TDATA;
output   din_TVALID;
input   din_TREADY;
output   din_TLAST;
output  [31:0] control_V_TDATA;
output   control_V_TVALID;
input   control_V_TREADY;
output  [7:0] din_words_TDATA;
output   din_words_TVALID;
input   din_words_TREADY;
output   din_words_TLAST;
output  [7:0] dout_words_TDATA;
output   dout_words_TVALID;
input   dout_words_TREADY;
output   dout_words_TLAST;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [127:0] dt_V_data_V_0_data_out;
wire    dt_V_data_V_0_vld_in;
wire    dt_V_data_V_0_vld_out;
wire    dt_V_data_V_0_ack_in;
reg    dt_V_data_V_0_ack_out;
reg   [127:0] dt_V_data_V_0_payload_A;
reg   [127:0] dt_V_data_V_0_payload_B;
reg    dt_V_data_V_0_sel_rd;
reg    dt_V_data_V_0_sel_wr;
wire    dt_V_data_V_0_sel;
wire    dt_V_data_V_0_load_A;
wire    dt_V_data_V_0_load_B;
reg   [1:0] dt_V_data_V_0_state;
wire    dt_V_data_V_0_state_cmp_full;
wire    dt_V_tlast_0_vld_in;
reg    dt_V_tlast_0_ack_out;
reg   [1:0] dt_V_tlast_0_state;
reg   [127:0] din_V_data_V_1_data_out;
reg    din_V_data_V_1_vld_in;
wire    din_V_data_V_1_vld_out;
wire    din_V_data_V_1_ack_in;
wire    din_V_data_V_1_ack_out;
reg   [127:0] din_V_data_V_1_payload_A;
reg   [127:0] din_V_data_V_1_payload_B;
reg    din_V_data_V_1_sel_rd;
reg    din_V_data_V_1_sel_wr;
wire    din_V_data_V_1_sel;
wire    din_V_data_V_1_load_A;
wire    din_V_data_V_1_load_B;
reg   [1:0] din_V_data_V_1_state;
wire    din_V_data_V_1_state_cmp_full;
reg    din_V_tlast_1_data_out;
reg    din_V_tlast_1_vld_in;
wire    din_V_tlast_1_vld_out;
wire    din_V_tlast_1_ack_in;
wire    din_V_tlast_1_ack_out;
reg    din_V_tlast_1_payload_A;
reg    din_V_tlast_1_payload_B;
reg    din_V_tlast_1_sel_rd;
reg    din_V_tlast_1_sel_wr;
wire    din_V_tlast_1_sel;
wire    din_V_tlast_1_load_A;
wire    din_V_tlast_1_load_B;
reg   [1:0] din_V_tlast_1_state;
wire    din_V_tlast_1_state_cmp_full;
wire   [31:0] control_V_1_data_out;
reg    control_V_1_vld_in;
wire    control_V_1_vld_out;
wire    control_V_1_ack_in;
wire    control_V_1_ack_out;
reg    control_V_1_sel_rd;
wire    control_V_1_sel;
reg   [1:0] control_V_1_state;
wire   [7:0] din_words_V_data_V_1_data_out;
reg    din_words_V_data_V_1_vld_in;
wire    din_words_V_data_V_1_vld_out;
wire    din_words_V_data_V_1_ack_in;
wire    din_words_V_data_V_1_ack_out;
reg    din_words_V_data_V_1_sel_rd;
wire    din_words_V_data_V_1_sel;
reg   [1:0] din_words_V_data_V_1_state;
wire    din_words_V_tlast_1_data_out;
reg    din_words_V_tlast_1_vld_in;
wire    din_words_V_tlast_1_vld_out;
wire    din_words_V_tlast_1_ack_in;
wire    din_words_V_tlast_1_ack_out;
reg    din_words_V_tlast_1_sel_rd;
wire    din_words_V_tlast_1_sel;
reg   [1:0] din_words_V_tlast_1_state;
wire   [7:0] dout_words_V_data_V_1_data_out;
reg    dout_words_V_data_V_1_vld_in;
wire    dout_words_V_data_V_1_vld_out;
wire    dout_words_V_data_V_1_ack_in;
wire    dout_words_V_data_V_1_ack_out;
reg    dout_words_V_data_V_1_sel_rd;
wire    dout_words_V_data_V_1_sel;
reg   [1:0] dout_words_V_data_V_1_state;
wire    dout_words_V_tlast_1_data_out;
reg    dout_words_V_tlast_1_vld_in;
wire    dout_words_V_tlast_1_vld_out;
wire    dout_words_V_tlast_1_ack_in;
wire    dout_words_V_tlast_1_ack_out;
reg    dout_words_V_tlast_1_sel_rd;
wire    dout_words_V_tlast_1_sel;
reg   [1:0] dout_words_V_tlast_1_state;
reg    dt_TDATA_blk_n;
reg    din_TDATA_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] tmp_5_fu_135_p2;
wire    ap_CS_fsm_state4;
reg    control_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
reg    din_words_TDATA_blk_n;
reg    dout_words_TDATA_blk_n;
reg   [127:0] tmp_data_V_reg_171;
reg    ap_block_state1;
reg    ap_block_state1_io;
wire  signed [127:0] temp_data_V_1_fu_151_p1;
reg  signed [127:0] temp_data_V_1_reg_179;
reg    ap_block_state3;
reg    ap_block_state3_io;
wire   [0:0] tmp_tlast_fu_155_p2;
wire   [127:0] tmp_data_V_4_cast_fu_162_p3;
reg   [127:0] lhs_V_reg_114;
reg    ap_block_state2_io;
wire   [63:0] tmp_fu_127_p1;
wire  signed [126:0] tmp_2_fu_141_p4;
wire   [0:0] tmp_1_fu_131_p1;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 dt_V_data_V_0_sel_rd = 1'b0;
#0 dt_V_data_V_0_sel_wr = 1'b0;
#0 dt_V_data_V_0_state = 2'd0;
#0 dt_V_tlast_0_state = 2'd0;
#0 din_V_data_V_1_sel_rd = 1'b0;
#0 din_V_data_V_1_sel_wr = 1'b0;
#0 din_V_data_V_1_state = 2'd0;
#0 din_V_tlast_1_sel_rd = 1'b0;
#0 din_V_tlast_1_sel_wr = 1'b0;
#0 din_V_tlast_1_state = 2'd0;
#0 control_V_1_sel_rd = 1'b0;
#0 control_V_1_state = 2'd0;
#0 din_words_V_data_V_1_sel_rd = 1'b0;
#0 din_words_V_data_V_1_state = 2'd0;
#0 din_words_V_tlast_1_sel_rd = 1'b0;
#0 din_words_V_tlast_1_state = 2'd0;
#0 dout_words_V_data_V_1_sel_rd = 1'b0;
#0 dout_words_V_data_V_1_state = 2'd0;
#0 dout_words_V_tlast_1_sel_rd = 1'b0;
#0 dout_words_V_tlast_1_state = 2'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        control_V_1_sel_rd <= 1'b0;
    end else begin
        if (((control_V_1_ack_out == 1'b1) & (control_V_1_vld_out == 1'b1))) begin
            control_V_1_sel_rd <= ~control_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        control_V_1_state <= 2'd0;
    end else begin
        if ((((control_V_1_state == 2'd2) & (control_V_1_vld_in == 1'b0)) | ((control_V_1_state == 2'd3) & (control_V_1_vld_in == 1'b0) & (control_V_1_ack_out == 1'b1)))) begin
            control_V_1_state <= 2'd2;
        end else if ((((control_V_1_state == 2'd1) & (control_V_1_ack_out == 1'b0)) | ((control_V_1_state == 2'd3) & (control_V_1_ack_out == 1'b0) & (control_V_1_vld_in == 1'b1)))) begin
            control_V_1_state <= 2'd1;
        end else if (((~((control_V_1_vld_in == 1'b0) & (control_V_1_ack_out == 1'b1)) & ~((control_V_1_ack_out == 1'b0) & (control_V_1_vld_in == 1'b1)) & (control_V_1_state == 2'd3)) | ((control_V_1_state == 2'd1) & (control_V_1_ack_out == 1'b1)) | ((control_V_1_state == 2'd2) & (control_V_1_vld_in == 1'b1)))) begin
            control_V_1_state <= 2'd3;
        end else begin
            control_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((din_V_data_V_1_ack_out == 1'b1) & (din_V_data_V_1_vld_out == 1'b1))) begin
            din_V_data_V_1_sel_rd <= ~din_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((din_V_data_V_1_ack_in == 1'b1) & (din_V_data_V_1_vld_in == 1'b1))) begin
            din_V_data_V_1_sel_wr <= ~din_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((din_V_data_V_1_state == 2'd2) & (din_V_data_V_1_vld_in == 1'b0)) | ((din_V_data_V_1_state == 2'd3) & (din_V_data_V_1_vld_in == 1'b0) & (din_V_data_V_1_ack_out == 1'b1)))) begin
            din_V_data_V_1_state <= 2'd2;
        end else if ((((din_V_data_V_1_state == 2'd1) & (din_V_data_V_1_ack_out == 1'b0)) | ((din_V_data_V_1_state == 2'd3) & (din_V_data_V_1_ack_out == 1'b0) & (din_V_data_V_1_vld_in == 1'b1)))) begin
            din_V_data_V_1_state <= 2'd1;
        end else if (((~((din_V_data_V_1_vld_in == 1'b0) & (din_V_data_V_1_ack_out == 1'b1)) & ~((din_V_data_V_1_ack_out == 1'b0) & (din_V_data_V_1_vld_in == 1'b1)) & (din_V_data_V_1_state == 2'd3)) | ((din_V_data_V_1_state == 2'd1) & (din_V_data_V_1_ack_out == 1'b1)) | ((din_V_data_V_1_state == 2'd2) & (din_V_data_V_1_vld_in == 1'b1)))) begin
            din_V_data_V_1_state <= 2'd3;
        end else begin
            din_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_tlast_1_sel_rd <= 1'b0;
    end else begin
        if (((din_V_tlast_1_ack_out == 1'b1) & (din_V_tlast_1_vld_out == 1'b1))) begin
            din_V_tlast_1_sel_rd <= ~din_V_tlast_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_tlast_1_sel_wr <= 1'b0;
    end else begin
        if (((din_V_tlast_1_ack_in == 1'b1) & (din_V_tlast_1_vld_in == 1'b1))) begin
            din_V_tlast_1_sel_wr <= ~din_V_tlast_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_V_tlast_1_state <= 2'd0;
    end else begin
        if ((((din_V_tlast_1_state == 2'd2) & (din_V_tlast_1_vld_in == 1'b0)) | ((din_V_tlast_1_state == 2'd3) & (din_V_tlast_1_vld_in == 1'b0) & (din_V_tlast_1_ack_out == 1'b1)))) begin
            din_V_tlast_1_state <= 2'd2;
        end else if ((((din_V_tlast_1_state == 2'd1) & (din_V_tlast_1_ack_out == 1'b0)) | ((din_V_tlast_1_state == 2'd3) & (din_V_tlast_1_ack_out == 1'b0) & (din_V_tlast_1_vld_in == 1'b1)))) begin
            din_V_tlast_1_state <= 2'd1;
        end else if (((~((din_V_tlast_1_vld_in == 1'b0) & (din_V_tlast_1_ack_out == 1'b1)) & ~((din_V_tlast_1_ack_out == 1'b0) & (din_V_tlast_1_vld_in == 1'b1)) & (din_V_tlast_1_state == 2'd3)) | ((din_V_tlast_1_state == 2'd1) & (din_V_tlast_1_ack_out == 1'b1)) | ((din_V_tlast_1_state == 2'd2) & (din_V_tlast_1_vld_in == 1'b1)))) begin
            din_V_tlast_1_state <= 2'd3;
        end else begin
            din_V_tlast_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((din_words_V_data_V_1_ack_out == 1'b1) & (din_words_V_data_V_1_vld_out == 1'b1))) begin
            din_words_V_data_V_1_sel_rd <= ~din_words_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((din_words_V_data_V_1_state == 2'd2) & (din_words_V_data_V_1_vld_in == 1'b0)) | ((din_words_V_data_V_1_state == 2'd3) & (din_words_V_data_V_1_vld_in == 1'b0) & (din_words_V_data_V_1_ack_out == 1'b1)))) begin
            din_words_V_data_V_1_state <= 2'd2;
        end else if ((((din_words_V_data_V_1_state == 2'd1) & (din_words_V_data_V_1_ack_out == 1'b0)) | ((din_words_V_data_V_1_state == 2'd3) & (din_words_V_data_V_1_ack_out == 1'b0) & (din_words_V_data_V_1_vld_in == 1'b1)))) begin
            din_words_V_data_V_1_state <= 2'd1;
        end else if (((~((din_words_V_data_V_1_vld_in == 1'b0) & (din_words_V_data_V_1_ack_out == 1'b1)) & ~((din_words_V_data_V_1_ack_out == 1'b0) & (din_words_V_data_V_1_vld_in == 1'b1)) & (din_words_V_data_V_1_state == 2'd3)) | ((din_words_V_data_V_1_state == 2'd1) & (din_words_V_data_V_1_ack_out == 1'b1)) | ((din_words_V_data_V_1_state == 2'd2) & (din_words_V_data_V_1_vld_in == 1'b1)))) begin
            din_words_V_data_V_1_state <= 2'd3;
        end else begin
            din_words_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_tlast_1_sel_rd <= 1'b0;
    end else begin
        if (((din_words_V_tlast_1_ack_out == 1'b1) & (din_words_V_tlast_1_vld_out == 1'b1))) begin
            din_words_V_tlast_1_sel_rd <= ~din_words_V_tlast_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        din_words_V_tlast_1_state <= 2'd0;
    end else begin
        if ((((din_words_V_tlast_1_state == 2'd2) & (din_words_V_tlast_1_vld_in == 1'b0)) | ((din_words_V_tlast_1_state == 2'd3) & (din_words_V_tlast_1_vld_in == 1'b0) & (din_words_V_tlast_1_ack_out == 1'b1)))) begin
            din_words_V_tlast_1_state <= 2'd2;
        end else if ((((din_words_V_tlast_1_state == 2'd1) & (din_words_V_tlast_1_ack_out == 1'b0)) | ((din_words_V_tlast_1_state == 2'd3) & (din_words_V_tlast_1_ack_out == 1'b0) & (din_words_V_tlast_1_vld_in == 1'b1)))) begin
            din_words_V_tlast_1_state <= 2'd1;
        end else if (((~((din_words_V_tlast_1_vld_in == 1'b0) & (din_words_V_tlast_1_ack_out == 1'b1)) & ~((din_words_V_tlast_1_ack_out == 1'b0) & (din_words_V_tlast_1_vld_in == 1'b1)) & (din_words_V_tlast_1_state == 2'd3)) | ((din_words_V_tlast_1_state == 2'd1) & (din_words_V_tlast_1_ack_out == 1'b1)) | ((din_words_V_tlast_1_state == 2'd2) & (din_words_V_tlast_1_vld_in == 1'b1)))) begin
            din_words_V_tlast_1_state <= 2'd3;
        end else begin
            din_words_V_tlast_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_words_V_data_V_1_ack_out == 1'b1) & (dout_words_V_data_V_1_vld_out == 1'b1))) begin
            dout_words_V_data_V_1_sel_rd <= ~dout_words_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((dout_words_V_data_V_1_state == 2'd2) & (dout_words_V_data_V_1_vld_in == 1'b0)) | ((dout_words_V_data_V_1_state == 2'd3) & (dout_words_V_data_V_1_vld_in == 1'b0) & (dout_words_V_data_V_1_ack_out == 1'b1)))) begin
            dout_words_V_data_V_1_state <= 2'd2;
        end else if ((((dout_words_V_data_V_1_state == 2'd1) & (dout_words_V_data_V_1_ack_out == 1'b0)) | ((dout_words_V_data_V_1_state == 2'd3) & (dout_words_V_data_V_1_ack_out == 1'b0) & (dout_words_V_data_V_1_vld_in == 1'b1)))) begin
            dout_words_V_data_V_1_state <= 2'd1;
        end else if (((~((dout_words_V_data_V_1_vld_in == 1'b0) & (dout_words_V_data_V_1_ack_out == 1'b1)) & ~((dout_words_V_data_V_1_ack_out == 1'b0) & (dout_words_V_data_V_1_vld_in == 1'b1)) & (dout_words_V_data_V_1_state == 2'd3)) | ((dout_words_V_data_V_1_state == 2'd1) & (dout_words_V_data_V_1_ack_out == 1'b1)) | ((dout_words_V_data_V_1_state == 2'd2) & (dout_words_V_data_V_1_vld_in == 1'b1)))) begin
            dout_words_V_data_V_1_state <= 2'd3;
        end else begin
            dout_words_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_tlast_1_sel_rd <= 1'b0;
    end else begin
        if (((dout_words_V_tlast_1_ack_out == 1'b1) & (dout_words_V_tlast_1_vld_out == 1'b1))) begin
            dout_words_V_tlast_1_sel_rd <= ~dout_words_V_tlast_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dout_words_V_tlast_1_state <= 2'd0;
    end else begin
        if ((((dout_words_V_tlast_1_state == 2'd2) & (dout_words_V_tlast_1_vld_in == 1'b0)) | ((dout_words_V_tlast_1_state == 2'd3) & (dout_words_V_tlast_1_vld_in == 1'b0) & (dout_words_V_tlast_1_ack_out == 1'b1)))) begin
            dout_words_V_tlast_1_state <= 2'd2;
        end else if ((((dout_words_V_tlast_1_state == 2'd1) & (dout_words_V_tlast_1_ack_out == 1'b0)) | ((dout_words_V_tlast_1_state == 2'd3) & (dout_words_V_tlast_1_ack_out == 1'b0) & (dout_words_V_tlast_1_vld_in == 1'b1)))) begin
            dout_words_V_tlast_1_state <= 2'd1;
        end else if (((~((dout_words_V_tlast_1_vld_in == 1'b0) & (dout_words_V_tlast_1_ack_out == 1'b1)) & ~((dout_words_V_tlast_1_ack_out == 1'b0) & (dout_words_V_tlast_1_vld_in == 1'b1)) & (dout_words_V_tlast_1_state == 2'd3)) | ((dout_words_V_tlast_1_state == 2'd1) & (dout_words_V_tlast_1_ack_out == 1'b1)) | ((dout_words_V_tlast_1_state == 2'd2) & (dout_words_V_tlast_1_vld_in == 1'b1)))) begin
            dout_words_V_tlast_1_state <= 2'd3;
        end else begin
            dout_words_V_tlast_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dt_V_data_V_0_sel_rd <= 1'b0;
    end else begin
        if (((dt_V_data_V_0_ack_out == 1'b1) & (dt_V_data_V_0_vld_out == 1'b1))) begin
            dt_V_data_V_0_sel_rd <= ~dt_V_data_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dt_V_data_V_0_sel_wr <= 1'b0;
    end else begin
        if (((dt_V_data_V_0_ack_in == 1'b1) & (dt_V_data_V_0_vld_in == 1'b1))) begin
            dt_V_data_V_0_sel_wr <= ~dt_V_data_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dt_V_data_V_0_state <= 2'd0;
    end else begin
        if ((((dt_V_data_V_0_state == 2'd2) & (dt_V_data_V_0_vld_in == 1'b0)) | ((dt_V_data_V_0_state == 2'd3) & (dt_V_data_V_0_vld_in == 1'b0) & (dt_V_data_V_0_ack_out == 1'b1)))) begin
            dt_V_data_V_0_state <= 2'd2;
        end else if ((((dt_V_data_V_0_state == 2'd1) & (dt_V_data_V_0_ack_out == 1'b0)) | ((dt_V_data_V_0_state == 2'd3) & (dt_V_data_V_0_ack_out == 1'b0) & (dt_V_data_V_0_vld_in == 1'b1)))) begin
            dt_V_data_V_0_state <= 2'd1;
        end else if (((~((dt_V_data_V_0_vld_in == 1'b0) & (dt_V_data_V_0_ack_out == 1'b1)) & ~((dt_V_data_V_0_ack_out == 1'b0) & (dt_V_data_V_0_vld_in == 1'b1)) & (dt_V_data_V_0_state == 2'd3)) | ((dt_V_data_V_0_state == 2'd1) & (dt_V_data_V_0_ack_out == 1'b1)) | ((dt_V_data_V_0_state == 2'd2) & (dt_V_data_V_0_vld_in == 1'b1)))) begin
            dt_V_data_V_0_state <= 2'd3;
        end else begin
            dt_V_data_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        dt_V_tlast_0_state <= 2'd0;
    end else begin
        if ((((dt_V_tlast_0_state == 2'd2) & (dt_V_tlast_0_vld_in == 1'b0)) | ((dt_V_tlast_0_state == 2'd3) & (dt_V_tlast_0_vld_in == 1'b0) & (dt_V_tlast_0_ack_out == 1'b1)))) begin
            dt_V_tlast_0_state <= 2'd2;
        end else if ((((dt_V_tlast_0_state == 2'd1) & (dt_V_tlast_0_ack_out == 1'b0)) | ((dt_V_tlast_0_state == 2'd3) & (dt_V_tlast_0_ack_out == 1'b0) & (dt_V_tlast_0_vld_in == 1'b1)))) begin
            dt_V_tlast_0_state <= 2'd1;
        end else if (((~((dt_V_tlast_0_vld_in == 1'b0) & (dt_V_tlast_0_ack_out == 1'b1)) & ~((dt_V_tlast_0_ack_out == 1'b0) & (dt_V_tlast_0_vld_in == 1'b1)) & (dt_V_tlast_0_state == 2'd3)) | ((dt_V_tlast_0_state == 2'd1) & (dt_V_tlast_0_ack_out == 1'b1)) | ((dt_V_tlast_0_state == 2'd2) & (dt_V_tlast_0_vld_in == 1'b1)))) begin
            dt_V_tlast_0_state <= 2'd3;
        end else begin
            dt_V_tlast_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (din_V_data_V_1_ack_in == 1'b1))) begin
        lhs_V_reg_114 <= temp_data_V_1_reg_179;
    end else if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2))) begin
        lhs_V_reg_114 <= tmp_data_V_reg_171;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_data_V_1_load_A == 1'b1)) begin
        din_V_data_V_1_payload_A <= tmp_data_V_4_cast_fu_162_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_data_V_1_load_B == 1'b1)) begin
        din_V_data_V_1_payload_B <= tmp_data_V_4_cast_fu_162_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_tlast_1_load_A == 1'b1)) begin
        din_V_tlast_1_payload_A <= tmp_tlast_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((din_V_tlast_1_load_B == 1'b1)) begin
        din_V_tlast_1_payload_B <= tmp_tlast_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((dt_V_data_V_0_load_A == 1'b1)) begin
        dt_V_data_V_0_payload_A <= dt_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((dt_V_data_V_0_load_B == 1'b1)) begin
        dt_V_data_V_0_payload_B <= dt_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        temp_data_V_1_reg_179 <= temp_data_V_1_fu_151_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_data_V_reg_171 <= dt_V_data_V_0_data_out;
    end
end

always @ (*) begin
    if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd1) & (dout_words_V_tlast_1_state[1'd0] == 1'b0) & (dout_words_V_data_V_1_state[1'd0] == 1'b0) & (din_words_V_tlast_1_state[1'd0] == 1'b0) & (din_words_V_data_V_1_state[1'd0] == 1'b0) & (control_V_1_state[1'd0] == 1'b0) & (din_V_tlast_1_state[1'd0] == 1'b0) & (din_V_data_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd1) & (dout_words_V_tlast_1_state[1'd0] == 1'b0) & (dout_words_V_data_V_1_state[1'd0] == 1'b0) & (din_words_V_tlast_1_state[1'd0] == 1'b0) & (din_words_V_data_V_1_state[1'd0] == 1'b0) & (control_V_1_state[1'd0] == 1'b0) & (din_V_tlast_1_state[1'd0] == 1'b0) & (din_V_data_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        control_V_1_vld_in = 1'b1;
    end else begin
        control_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        control_V_TDATA_blk_n = control_V_1_state[1'd1];
    end else begin
        control_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((tmp_5_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        din_TDATA_blk_n = din_V_data_V_1_state[1'd1];
    end else begin
        din_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((din_V_data_V_1_sel == 1'b1)) begin
        din_V_data_V_1_data_out = din_V_data_V_1_payload_B;
    end else begin
        din_V_data_V_1_data_out = din_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        din_V_data_V_1_vld_in = 1'b1;
    end else begin
        din_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((din_V_tlast_1_sel == 1'b1)) begin
        din_V_tlast_1_data_out = din_V_tlast_1_payload_B;
    end else begin
        din_V_tlast_1_data_out = din_V_tlast_1_payload_A;
    end
end

always @ (*) begin
    if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        din_V_tlast_1_vld_in = 1'b1;
    end else begin
        din_V_tlast_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        din_words_TDATA_blk_n = din_words_V_data_V_1_state[1'd1];
    end else begin
        din_words_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        din_words_V_data_V_1_vld_in = 1'b1;
    end else begin
        din_words_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        din_words_V_tlast_1_vld_in = 1'b1;
    end else begin
        din_words_V_tlast_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        dout_words_TDATA_blk_n = dout_words_V_data_V_1_state[1'd1];
    end else begin
        dout_words_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_words_V_data_V_1_vld_in = 1'b1;
    end else begin
        dout_words_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_words_V_tlast_1_vld_in = 1'b1;
    end else begin
        dout_words_V_tlast_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dt_TDATA_blk_n = dt_V_data_V_0_state[1'd0];
    end else begin
        dt_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        dt_V_data_V_0_ack_out = 1'b1;
    end else begin
        dt_V_data_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((dt_V_data_V_0_sel == 1'b1)) begin
        dt_V_data_V_0_data_out = dt_V_data_V_0_payload_B;
    end else begin
        dt_V_data_V_0_data_out = dt_V_data_V_0_payload_A;
    end
end

always @ (*) begin
    if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
        dt_V_tlast_0_ack_out = 1'b1;
    end else begin
        dt_V_tlast_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0) | (1'b1 == ap_block_state1_io)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_io) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd1) & (dout_words_V_tlast_1_state[1'd0] == 1'b0) & (dout_words_V_data_V_1_state[1'd0] == 1'b0) & (din_words_V_tlast_1_state[1'd0] == 1'b0) & (din_words_V_data_V_1_state[1'd0] == 1'b0) & (control_V_1_state[1'd0] == 1'b0) & (din_V_tlast_1_state[1'd0] == 1'b0) & (din_V_data_V_1_state[1'd0] == 1'b0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0) | (1'b1 == ap_block_state3_io)) & (tmp_5_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (din_V_data_V_1_ack_in == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((dt_V_data_V_0_vld_out == 1'b0) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state1_io = ((dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state2_io = ((dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state3 = ((dout_words_V_tlast_1_ack_in == 1'b0) | (dout_words_V_data_V_1_ack_in == 1'b0) | (din_words_V_tlast_1_ack_in == 1'b0) | (din_words_V_data_V_1_ack_in == 1'b0) | (control_V_1_ack_in == 1'b0) | (din_V_tlast_1_ack_in == 1'b0) | (din_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = ((tmp_5_fu_135_p2 == 1'd0) & (din_V_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign control_V_1_ack_in = control_V_1_state[1'd1];

assign control_V_1_ack_out = control_V_TREADY;

assign control_V_1_data_out = 32'd4227858436;

assign control_V_1_sel = control_V_1_sel_rd;

assign control_V_1_vld_out = control_V_1_state[1'd0];

assign control_V_TDATA = control_V_1_data_out;

assign control_V_TVALID = control_V_1_state[1'd0];

assign din_TDATA = din_V_data_V_1_data_out;

assign din_TLAST = din_V_tlast_1_data_out;

assign din_TVALID = din_V_tlast_1_state[1'd0];

assign din_V_data_V_1_ack_in = din_V_data_V_1_state[1'd1];

assign din_V_data_V_1_ack_out = din_TREADY;

assign din_V_data_V_1_load_A = (~din_V_data_V_1_sel_wr & din_V_data_V_1_state_cmp_full);

assign din_V_data_V_1_load_B = (din_V_data_V_1_state_cmp_full & din_V_data_V_1_sel_wr);

assign din_V_data_V_1_sel = din_V_data_V_1_sel_rd;

assign din_V_data_V_1_state_cmp_full = ((din_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign din_V_data_V_1_vld_out = din_V_data_V_1_state[1'd0];

assign din_V_tlast_1_ack_in = din_V_tlast_1_state[1'd1];

assign din_V_tlast_1_ack_out = din_TREADY;

assign din_V_tlast_1_load_A = (~din_V_tlast_1_sel_wr & din_V_tlast_1_state_cmp_full);

assign din_V_tlast_1_load_B = (din_V_tlast_1_state_cmp_full & din_V_tlast_1_sel_wr);

assign din_V_tlast_1_sel = din_V_tlast_1_sel_rd;

assign din_V_tlast_1_state_cmp_full = ((din_V_tlast_1_state != 2'd1) ? 1'b1 : 1'b0);

assign din_V_tlast_1_vld_out = din_V_tlast_1_state[1'd0];

assign din_words_TDATA = din_words_V_data_V_1_data_out;

assign din_words_TLAST = din_words_V_tlast_1_data_out;

assign din_words_TVALID = din_words_V_tlast_1_state[1'd0];

assign din_words_V_data_V_1_ack_in = din_words_V_data_V_1_state[1'd1];

assign din_words_V_data_V_1_ack_out = din_words_TREADY;

assign din_words_V_data_V_1_data_out = 8'd16;

assign din_words_V_data_V_1_sel = din_words_V_data_V_1_sel_rd;

assign din_words_V_data_V_1_vld_out = din_words_V_data_V_1_state[1'd0];

assign din_words_V_tlast_1_ack_in = din_words_V_tlast_1_state[1'd1];

assign din_words_V_tlast_1_ack_out = din_words_TREADY;

assign din_words_V_tlast_1_data_out = 1'd1;

assign din_words_V_tlast_1_sel = din_words_V_tlast_1_sel_rd;

assign din_words_V_tlast_1_vld_out = din_words_V_tlast_1_state[1'd0];

assign dout_words_TDATA = dout_words_V_data_V_1_data_out;

assign dout_words_TLAST = dout_words_V_tlast_1_data_out;

assign dout_words_TVALID = dout_words_V_tlast_1_state[1'd0];

assign dout_words_V_data_V_1_ack_in = dout_words_V_data_V_1_state[1'd1];

assign dout_words_V_data_V_1_ack_out = dout_words_TREADY;

assign dout_words_V_data_V_1_data_out = 8'd5;

assign dout_words_V_data_V_1_sel = dout_words_V_data_V_1_sel_rd;

assign dout_words_V_data_V_1_vld_out = dout_words_V_data_V_1_state[1'd0];

assign dout_words_V_tlast_1_ack_in = dout_words_V_tlast_1_state[1'd1];

assign dout_words_V_tlast_1_ack_out = dout_words_TREADY;

assign dout_words_V_tlast_1_data_out = 1'd1;

assign dout_words_V_tlast_1_sel = dout_words_V_tlast_1_sel_rd;

assign dout_words_V_tlast_1_vld_out = dout_words_V_tlast_1_state[1'd0];

assign dt_TREADY = dt_V_tlast_0_state[1'd1];

assign dt_V_data_V_0_ack_in = dt_V_data_V_0_state[1'd1];

assign dt_V_data_V_0_load_A = (~dt_V_data_V_0_sel_wr & dt_V_data_V_0_state_cmp_full);

assign dt_V_data_V_0_load_B = (dt_V_data_V_0_state_cmp_full & dt_V_data_V_0_sel_wr);

assign dt_V_data_V_0_sel = dt_V_data_V_0_sel_rd;

assign dt_V_data_V_0_state_cmp_full = ((dt_V_data_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign dt_V_data_V_0_vld_in = dt_TVALID;

assign dt_V_data_V_0_vld_out = dt_V_data_V_0_state[1'd0];

assign dt_V_tlast_0_vld_in = dt_TVALID;

assign temp_data_V_1_fu_151_p1 = tmp_2_fu_141_p4;

assign tmp_1_fu_131_p1 = lhs_V_reg_114[0:0];

assign tmp_2_fu_141_p4 = {{lhs_V_reg_114[127:1]}};

assign tmp_5_fu_135_p2 = ((tmp_fu_127_p1 == 64'd0) ? 1'b1 : 1'b0);

assign tmp_data_V_4_cast_fu_162_p3 = ((tmp_1_fu_131_p1[0:0] === 1'b1) ? 128'd127 : 128'd340282366920938463463374607431768211329);

assign tmp_fu_127_p1 = lhs_V_reg_114[63:0];

assign tmp_tlast_fu_155_p2 = ((tmp_2_fu_141_p4 == 127'd0) ? 1'b1 : 1'b0);

endmodule //llr
