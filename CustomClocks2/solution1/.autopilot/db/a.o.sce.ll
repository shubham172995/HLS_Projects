; ModuleID = '/home/shubham/HLS_Exercises/CustomClocks2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@first_counter_ssdm_thread_M_increment = external global i1
@p_str9 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str8 = private unnamed_addr constant [7 x i8] c"clock2\00", align 1
@p_str7 = private unnamed_addr constant [7 x i8] c"clock1\00", align 1
@p_str6 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"custom2\00", align 1
@p_str24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str23 = private unnamed_addr constant [15 x i8] c"__ssdm_reset__\00", align 1
@p_str21 = private unnamed_addr constant [12 x i8] c"out_counter\00", align 1
@p_str20 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@p_str19 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@p_str18 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@p_str17 = private unnamed_addr constant [14 x i8] c"first_counter\00", align 1
@p_str13 = private unnamed_addr constant [13 x i8] c"out_counter2\00", align 1
@p_str12 = private unnamed_addr constant [13 x i8] c"out_counter1\00", align 1
@p_str11 = private unnamed_addr constant [13 x i8] c"\22sc_uint<4>\22\00", align 1
@p_str10 = private unnamed_addr constant [7 x i8] c"enable\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @"first_counter::increment"(i1* %clock, i1* %reset, i1* %enable, i4* %out_counter, i4* %first_counter_count_V) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !187
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !191
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !195
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_counter), !map !199
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %first_counter_count_V), !map !203
  call void @llvm.dbg.value(metadata !{i1* %clock}, i64 0, metadata !207), !dbg !1360
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1361), !dbg !1360
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1362), !dbg !1360
  call void @llvm.dbg.value(metadata !{i4* %out_counter}, i64 0, metadata !1363), !dbg !1360
  call void @llvm.dbg.value(metadata !{i4* %first_counter_count_V}, i64 0, metadata !1383), !dbg !1360
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 3, [5 x i8]* @p_str20, [6 x i8]* @p_str19, i32 0, i32 0, i1* %clock) nounwind, !dbg !1386
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 0, [7 x i8]* @p_str6, [6 x i8]* @p_str9, i32 0, i32 0, i1* %reset) nounwind, !dbg !1388
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 0, [7 x i8]* @p_str6, [7 x i8]* @p_str10, i32 0, i32 0, i1* %enable) nounwind, !dbg !1389
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 1, [13 x i8]* @p_str11, [12 x i8]* @p_str21, i32 0, i32 0, i4* %out_counter) nounwind, !dbg !1390
  call void (...)* @_ssdm_op_SpecProcessDef([14 x i8]* @p_str17, i32 2, [10 x i8]* @p_str18) nounwind, !dbg !1391
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str23), !dbg !1391
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str24) nounwind, !dbg !1391
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind, !dbg !1391
  call void @llvm.dbg.value(metadata !{i32 %p_ssdm_reset_v}, i64 0, metadata !1392), !dbg !1391
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind, !dbg !1393
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str23, i32 %tmp_1), !dbg !1393
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit, !dbg !1394

_ZN7_ap_sc_7sc_core4waitEi.exit:                  ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit._crit_edge, %0
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind, !dbg !1395
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1403), !dbg !1411
  %tmp = call i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1* %enable), !dbg !1419
  call void @llvm.dbg.value(metadata !{i1 %tmp}, i64 0, metadata !1421), !dbg !1412
  br i1 %tmp, label %1, label %_ZN7_ap_sc_7sc_core4waitEi.exit._crit_edge, !dbg !1418

; <label>:1                                       ; preds = %_ZN7_ap_sc_7sc_core4waitEi.exit
  %first_counter_count_s = call i4 @_ssdm_op_Read.ap_auto.i4P(i4* %first_counter_count_V), !dbg !1422
  %v_V = add i4 %first_counter_count_s, 1, !dbg !1713
  call void @_ssdm_op_Write.ap_auto.i4P(i4* %first_counter_count_V, i4 %v_V), !dbg !1722
  call void @llvm.dbg.value(metadata !{i4 %v_V}, i64 0, metadata !1725), !dbg !1733
  call void @_ssdm_op_Write.ap_auto.volatile.i4P(i4* %out_counter, i4 %v_V), !dbg !1738
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit._crit_edge, !dbg !1751

_ZN7_ap_sc_7sc_core4waitEi.exit._crit_edge:       ; preds = %1, %_ZN7_ap_sc_7sc_core4waitEi.exit
  br label %_ZN7_ap_sc_7sc_core4waitEi.exit, !dbg !1752
}

define weak void @"first_counter::first_counter.1"(i1* %clock, i1* %reset, i1* %enable, i4* %out_counter, i4* %first_counter_count_V) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock), !map !187
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !191
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !195
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_counter), !map !199
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %first_counter_count_V), !map !203
  call void @llvm.dbg.value(metadata !{i1* %clock}, i64 0, metadata !1753), !dbg !1756
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1757), !dbg !1756
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1758), !dbg !1756
  call void @llvm.dbg.value(metadata !{i4* %out_counter}, i64 0, metadata !1759), !dbg !1756
  call void @llvm.dbg.value(metadata !{i4* %first_counter_count_V}, i64 0, metadata !1760), !dbg !1756
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @p_str17, [14 x i8]* @p_str17) nounwind, !dbg !1761
  %first_counter_ssd = load i1* @first_counter_ssdm_thread_M_increment, align 1, !dbg !1763
  br i1 %first_counter_ssd, label %1, label %2, !dbg !1763

; <label>:1                                       ; preds = %0
  call void @"first_counter::increment"(i1* %clock, i1* %reset, i1* %enable, i4* %out_counter, i4* %first_counter_count_V), !dbg !1763
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([14 x i8]* @p_str17, i32 2, [10 x i8]* @p_str18) nounwind, !dbg !1763
  call void (...)* @_ssdm_op_SpecSensitive([10 x i8]* @p_str18, [6 x i8]* @p_str19, i1* %clock, i32 1) nounwind, !dbg !1764
  call void (...)* @_ssdm_op_SpecSensitive([10 x i8]* @p_str18, [6 x i8]* @p_str9, i1* %reset, i32 3) nounwind, !dbg !1765
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 3, [5 x i8]* @p_str20, [6 x i8]* @p_str19, i32 0, i32 0, i1* %clock) nounwind, !dbg !1766
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 0, [7 x i8]* @p_str6, [6 x i8]* @p_str9, i32 0, i32 0, i1* %reset) nounwind, !dbg !1767
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 0, [7 x i8]* @p_str6, [7 x i8]* @p_str10, i32 0, i32 0, i1* %enable) nounwind, !dbg !1768
  call void (...)* @_ssdm_op_SpecPort([14 x i8]* @p_str17, i32 1, [13 x i8]* @p_str11, [12 x i8]* @p_str21, i32 0, i32 0, i4* %out_counter) nounwind, !dbg !1769
  ret void, !dbg !1770
}

define weak void @"custom2::custom2"(i1* %clock1, i1* %clock2, i1* %reset, i1* %enable, i4* %out_counter1, i4* %out_counter2, i4* %custom2_count1_V, i4* %custom2_count2_V, i1* %clock1_form, i1* %reset_form, i1* %enable_form, i4* %out_counter1_form, i4* %custom2_first_count_V, i1* %clock2_form, i1* %reset_form1, i1* %enable_form2, i4* %out_counter2_form, i4* %custom2_second_count_V) noinline {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock1), !map !1771
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock2), !map !1775
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !1779
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable), !map !1783
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_counter1), !map !1787
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_counter2), !map !1791
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %custom2_count1_V), !map !1795
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %custom2_count2_V), !map !1799
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock1_form), !map !1803
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form), !map !1807
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable_form), !map !1811
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_counter1_form), !map !1815
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %custom2_first_count_V), !map !1819
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clock2_form), !map !1823
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset_form1), !map !1827
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %enable_form2), !map !1831
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_counter2_form), !map !1835
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %custom2_second_count_V), !map !1839
  call void @llvm.dbg.value(metadata !{i1* %clock1}, i64 0, metadata !1843), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %clock2}, i64 0, metadata !1867), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1868), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1869), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %out_counter1}, i64 0, metadata !1870), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %out_counter2}, i64 0, metadata !1873), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %custom2_count1_V}, i64 0, metadata !1874), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %custom2_count2_V}, i64 0, metadata !1877), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %clock1_form}, i64 0, metadata !1878), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %reset_form}, i64 0, metadata !1882), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %enable_form}, i64 0, metadata !1883), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %out_counter1_form}, i64 0, metadata !1884), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %custom2_first_count_V}, i64 0, metadata !1888), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %clock2_form}, i64 0, metadata !1892), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %reset_form1}, i64 0, metadata !1893), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %enable_form2}, i64 0, metadata !1894), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %out_counter2_form}, i64 0, metadata !1895), !dbg !1866
  call void @llvm.dbg.value(metadata !{i4* %custom2_second_count_V}, i64 0, metadata !1896), !dbg !1866
  call void @llvm.dbg.value(metadata !{i1* %clock1_form}, i64 0, metadata !1897), !dbg !1901
  call void @llvm.dbg.value(metadata !{i1* %reset_form}, i64 0, metadata !1902), !dbg !1901
  call void @llvm.dbg.value(metadata !{i1* %enable_form}, i64 0, metadata !1903), !dbg !1901
  call void @llvm.dbg.value(metadata !{i4* %out_counter1_form}, i64 0, metadata !1904), !dbg !1901
  call void @llvm.dbg.value(metadata !{i4* %custom2_first_count_V}, i64 0, metadata !1905), !dbg !1901
  call void @"first_counter::first_counter.1"(i1* %clock1_form, i1* %reset_form, i1* %enable_form, i4* %out_counter1_form, i4* %custom2_first_count_V), !dbg !1906
  call void @llvm.dbg.value(metadata !{i1* %clock2_form}, i64 0, metadata !1897), !dbg !1901
  call void @llvm.dbg.value(metadata !{i1* %reset_form1}, i64 0, metadata !1902), !dbg !1901
  call void @llvm.dbg.value(metadata !{i1* %enable_form2}, i64 0, metadata !1903), !dbg !1901
  call void @llvm.dbg.value(metadata !{i4* %out_counter2_form}, i64 0, metadata !1904), !dbg !1901
  call void @llvm.dbg.value(metadata !{i4* %custom2_second_count_V}, i64 0, metadata !1905), !dbg !1901
  call void @"first_counter::first_counter.1"(i1* %clock2_form, i1* %reset_form1, i1* %enable_form2, i4* %out_counter2_form, i4* %custom2_second_count_V), !dbg !1906
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @p_str5, [8 x i8]* @p_str5) nounwind, !dbg !1907
  call void (...)* @_ssdm_op_SpecPort([8 x i8]* @p_str5, i32 0, [7 x i8]* @p_str6, [7 x i8]* @p_str7, i32 0, i32 0, i1* %clock1) nounwind, !dbg !1909
  call void (...)* @_ssdm_op_SpecPort([8 x i8]* @p_str5, i32 0, [7 x i8]* @p_str6, [7 x i8]* @p_str8, i32 0, i32 0, i1* %clock2) nounwind, !dbg !1910
  call void (...)* @_ssdm_op_SpecPort([8 x i8]* @p_str5, i32 0, [7 x i8]* @p_str6, [6 x i8]* @p_str9, i32 0, i32 0, i1* %reset) nounwind, !dbg !1911
  call void (...)* @_ssdm_op_SpecPort([8 x i8]* @p_str5, i32 0, [7 x i8]* @p_str6, [7 x i8]* @p_str10, i32 0, i32 0, i1* %enable) nounwind, !dbg !1912
  call void (...)* @_ssdm_op_SpecPort([8 x i8]* @p_str5, i32 1, [13 x i8]* @p_str11, [13 x i8]* @p_str12, i32 0, i32 0, i4* %out_counter1) nounwind, !dbg !1913
  call void (...)* @_ssdm_op_SpecPort([8 x i8]* @p_str5, i32 1, [13 x i8]* @p_str11, [13 x i8]* @p_str13, i32 0, i32 0, i4* %out_counter2) nounwind, !dbg !1914
  call void @llvm.dbg.value(metadata !{i1* %clock1_form}, i64 0, metadata !1915), !dbg !1920
  call void @llvm.dbg.value(metadata !{i1* %clock1_form}, i64 0, metadata !1922), !dbg !1925
  call void @llvm.dbg.value(metadata !{i1* %clock1_form}, i64 0, metadata !1928), !dbg !1931
  call void @llvm.dbg.value(metadata !{i1* %clock1}, i64 0, metadata !1934), !dbg !1937
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock1_form, i1* %clock1) nounwind, !dbg !1938
  call void @llvm.dbg.value(metadata !{i1* %reset_form}, i64 0, metadata !1915), !dbg !1940
  call void @llvm.dbg.value(metadata !{i1* %reset_form}, i64 0, metadata !1922), !dbg !1942
  call void @llvm.dbg.value(metadata !{i1* %reset_form}, i64 0, metadata !1928), !dbg !1944
  call void @llvm.dbg.value(metadata !{i1* %reset}, i64 0, metadata !1934), !dbg !1946
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form, i1* %reset) nounwind, !dbg !1947
  call void @llvm.dbg.value(metadata !{i1* %enable_form}, i64 0, metadata !1915), !dbg !1948
  call void @llvm.dbg.value(metadata !{i1* %enable_form}, i64 0, metadata !1922), !dbg !1950
  call void @llvm.dbg.value(metadata !{i1* %enable_form}, i64 0, metadata !1928), !dbg !1952
  call void @llvm.dbg.value(metadata !{i1* %enable}, i64 0, metadata !1934), !dbg !1954
  call void (...)* @_ssdm_op_SpecPortMap(i1* %enable_form, i1* %enable) nounwind, !dbg !1955
  call void @llvm.dbg.value(metadata !{i4* %out_counter1_form}, i64 0, metadata !1956), !dbg !1961
  call void @llvm.dbg.value(metadata !{i4* %out_counter1_form}, i64 0, metadata !1963), !dbg !1966
  call void @llvm.dbg.value(metadata !{i4* %out_counter1_form}, i64 0, metadata !1969), !dbg !1972
  call void @llvm.dbg.value(metadata !{i4* %out_counter1}, i64 0, metadata !1975), !dbg !1978
  call void (...)* @_ssdm_op_SpecPortMap(i4* %out_counter1_form, i4* %out_counter1) nounwind, !dbg !1979
  call void @llvm.dbg.value(metadata !{i1* %clock2_form}, i64 0, metadata !1915), !dbg !1981
  call void @llvm.dbg.value(metadata !{i1* %clock2_form}, i64 0, metadata !1922), !dbg !1983
  call void @llvm.dbg.value(metadata !{i1* %clock2_form}, i64 0, metadata !1928), !dbg !1985
  call void @llvm.dbg.value(metadata !{i1* %clock2}, i64 0, metadata !1934), !dbg !1987
  call void (...)* @_ssdm_op_SpecPortMap(i1* %clock2_form, i1* %clock2) nounwind, !dbg !1988
  call void @llvm.dbg.value(metadata !{i1* %reset_form1}, i64 0, metadata !1915), !dbg !1989
  call void @llvm.dbg.value(metadata !{i1* %reset_form1}, i64 0, metadata !1922), !dbg !1991
  call void @llvm.dbg.value(metadata !{i1* %reset_form1}, i64 0, metadata !1928), !dbg !1993
  call void (...)* @_ssdm_op_SpecPortMap(i1* %reset_form1, i1* %reset) nounwind, !dbg !1995
  call void @llvm.dbg.value(metadata !{i1* %enable_form2}, i64 0, metadata !1915), !dbg !1996
  call void @llvm.dbg.value(metadata !{i1* %enable_form2}, i64 0, metadata !1922), !dbg !1998
  call void @llvm.dbg.value(metadata !{i1* %enable_form2}, i64 0, metadata !1928), !dbg !2000
  call void (...)* @_ssdm_op_SpecPortMap(i1* %enable_form2, i1* %enable) nounwind, !dbg !2002
  call void @llvm.dbg.value(metadata !{i4* %out_counter2_form}, i64 0, metadata !1956), !dbg !2003
  call void @llvm.dbg.value(metadata !{i4* %out_counter2_form}, i64 0, metadata !1963), !dbg !2005
  call void @llvm.dbg.value(metadata !{i4* %out_counter2_form}, i64 0, metadata !1969), !dbg !2007
  call void @llvm.dbg.value(metadata !{i4* %out_counter2}, i64 0, metadata !1975), !dbg !2009
  call void (...)* @_ssdm_op_SpecPortMap(i4* %out_counter2_form, i4* %out_counter2) nounwind, !dbg !2010
  ret void, !dbg !2011
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecStateEnd(...) nounwind {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecStateBegin(...) nounwind {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecSensitive(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDef(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDecl(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPortMap(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPort(...) nounwind {
entry:
  ret void
}

declare i32 @_ssdm_op_SpecLoopTripCount(...)

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_auto.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak i4 @_ssdm_op_Read.ap_auto.i4P(i4*) {
entry:
  %empty = load i4* %0
  ret i4 %empty
}

!opencl.kernels = !{!0, !0, !7, !7, !10, !13, !13, !15, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !17, !23, !23, !0, !0, !17, !27, !30, !32, !38, !40, !43, !43, !17, !46, !49, !49, !17, !17, !17, !51, !51, !53, !53, !49, !49, !49, !38, !17, !17, !55, !58}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!60, !67, !72, !77, !82, !87, !92, !97, !102, !107, !112, !117, !122, !127, !132, !137, !142, !147, !152, !157, !162, !167, !172, !177, !182}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !""}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_signal_inout_if<struct _ap_sc_::sc_dt::sc_uint<4> > > &"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"parent_"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_signal_inout_if<struct _ap_sc_::sc_dt::sc_uint<4> > &"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"interface_"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !9, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_port_b<class _ap_sc_::sc_core::sc_signal_in_if<_Bool> > &"}
!15 = metadata !{null, metadata !1, metadata !2, metadata !16, metadata !4, metadata !12, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"class _ap_sc_::sc_core::sc_signal_in_if<_Bool> &"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space"}
!19 = metadata !{metadata !"kernel_arg_access_qual"}
!20 = metadata !{metadata !"kernel_arg_type"}
!21 = metadata !{metadata !"kernel_arg_type_qual"}
!22 = metadata !{metadata !"kernel_arg_name"}
!23 = metadata !{null, metadata !24, metadata !2, metadata !25, metadata !26, metadata !5, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!27 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const struct _ap_sc_::sc_dt::sc_uint<4> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"v2"}
!32 = metadata !{null, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!34 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"volatile sc_uint<4> &", metadata !"const struct _ap_sc_::sc_dt::sc_uint<4> &"}
!36 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!38 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!40 = metadata !{null, metadata !33, metadata !34, metadata !41, metadata !36, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!43 = metadata !{null, metadata !1, metadata !2, metadata !44, metadata !26, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!46 = metadata !{null, metadata !33, metadata !34, metadata !47, metadata !36, metadata !48, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"const ap_int_base<32, true> &"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !45, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !45, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !45, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!55 = metadata !{null, metadata !1, metadata !2, metadata !56, metadata !4, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"volatile _Bool &"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!58 = metadata !{null, metadata !1, metadata !2, metadata !44, metadata !4, metadata !59, metadata !6}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"n"}
!60 = metadata !{metadata !61, null}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"ssdm_ins_first_counter_0_0.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, i32 1}
!67 = metadata !{metadata !68, null}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 3, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"ssdm_ins_first_counter_0_0.out_counter.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!72 = metadata !{metadata !73, null}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"ssdm_ins_first_counter_0_0.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!77 = metadata !{metadata !78, null}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 3, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"ssdm_ins_first_counter_0_0.count.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!82 = metadata !{metadata !83, null}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 0, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"ssdm_ins_first_counter_0_0.clock.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!87 = metadata !{metadata !88, null}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 0, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"ssdm_ins_custom2_0_0.second.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!92 = metadata !{metadata !93, null}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 3, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"ssdm_ins_custom2_0_0.second.out_counter.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!97 = metadata !{metadata !98, null}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 0, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"ssdm_ins_custom2_0_0.second.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!102 = metadata !{metadata !103, null}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 3, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"ssdm_ins_custom2_0_0.second.count.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!107 = metadata !{metadata !108, null}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 0, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"ssdm_ins_custom2_0_0.second.clock.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!112 = metadata !{metadata !113, null}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 0, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"ssdm_ins_custom2_0_0.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!117 = metadata !{metadata !118, null}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 3, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"ssdm_ins_custom2_0_0.out_counter2.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!122 = metadata !{metadata !123, null}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 3, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"ssdm_ins_custom2_0_0.out_counter1.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!127 = metadata !{metadata !128, null}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 0, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"ssdm_ins_custom2_0_0.first.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!132 = metadata !{metadata !133, null}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 3, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"ssdm_ins_custom2_0_0.first.out_counter.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!137 = metadata !{metadata !138, null}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 0, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"ssdm_ins_custom2_0_0.first.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!142 = metadata !{metadata !143, null}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 3, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"ssdm_ins_custom2_0_0.first.count.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!147 = metadata !{metadata !148, null}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 0, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"ssdm_ins_custom2_0_0.first.clock.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!152 = metadata !{metadata !153, null}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 0, i32 0, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"ssdm_ins_custom2_0_0.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!157 = metadata !{metadata !158, null}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 3, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"ssdm_ins_custom2_0_0.count2.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!162 = metadata !{metadata !163, null}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 3, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"ssdm_ins_custom2_0_0.count1.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!167 = metadata !{metadata !168, null}
!168 = metadata !{metadata !169}
!169 = metadata !{i32 0, i32 0, metadata !170}
!170 = metadata !{metadata !171}
!171 = metadata !{metadata !"ssdm_ins_custom2_0_0.clock2.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!172 = metadata !{metadata !173, null}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 0, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"ssdm_ins_custom2_0_0.clock1.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!177 = metadata !{metadata !178, null}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 0, i32 31, metadata !180}
!180 = metadata !{metadata !181}
!181 = metadata !{metadata !"llvm.global_ctors.0", metadata !65, metadata !"", i32 0, i32 31}
!182 = metadata !{metadata !183, i1* @first_counter_ssdm_thread_M_increment}
!183 = metadata !{metadata !184}
!184 = metadata !{i32 0, i32 0, metadata !185}
!185 = metadata !{metadata !186}
!186 = metadata !{metadata !"first_counter::__ssdm_thread_M_increment", metadata !65, metadata !"bool", i32 0, i32 0}
!187 = metadata !{metadata !188}
!188 = metadata !{i32 0, i32 0, metadata !189}
!189 = metadata !{metadata !190}
!190 = metadata !{metadata !"first_counter.clock.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!191 = metadata !{metadata !192}
!192 = metadata !{i32 0, i32 0, metadata !193}
!193 = metadata !{metadata !194}
!194 = metadata !{metadata !"first_counter.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!195 = metadata !{metadata !196}
!196 = metadata !{i32 0, i32 0, metadata !197}
!197 = metadata !{metadata !198}
!198 = metadata !{metadata !"first_counter.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!199 = metadata !{metadata !200}
!200 = metadata !{i32 0, i32 3, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"first_counter.out_counter.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!203 = metadata !{metadata !204}
!204 = metadata !{i32 0, i32 3, metadata !205}
!205 = metadata !{metadata !206}
!206 = metadata !{metadata !"first_counter.count.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!207 = metadata !{i32 790531, metadata !208, metadata !"first_counter.clock.m_if.Val", null, i32 12, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!208 = metadata !{i32 786689, metadata !209, metadata !"this", metadata !210, i32 16777228, metadata !1350, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!209 = metadata !{i32 786478, i32 0, null, metadata !"increment", metadata !"increment", metadata !"_ZN13first_counter9incrementEv", metadata !210, i32 12, metadata !211, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1331, metadata !233, i32 13} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786473, metadata !"/home/shubham/HLS_Exercises/CustomClocks2/counter1.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{null, metadata !213}
!213 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !214} ; [ DW_TAG_pointer_type ]
!214 = metadata !{i32 786434, null, metadata !"first_counter", metadata !210, i32 6, i64 40, i64 8, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_class_type ]
!215 = metadata !{metadata !216, metadata !336, metadata !337, metadata !338, metadata !1330, metadata !1331, metadata !1332, metadata !1333}
!216 = metadata !{i32 786445, metadata !214, metadata !"clock", metadata !210, i32 8, i64 8, i64 8, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ]
!217 = metadata !{i32 786454, metadata !218, metadata !"sc_in_clk", metadata !210, i32 379, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_typedef ]
!218 = metadata !{i32 786489, metadata !219, metadata !"sc_core", metadata !220, i32 163} ; [ DW_TAG_namespace ]
!219 = metadata !{i32 786489, null, metadata !"_ap_sc_", metadata !220, i32 160} ; [ DW_TAG_namespace ]
!220 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_sysc/ap_sc_core.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!221 = metadata !{i32 786434, metadata !218, metadata !"sc_in<bool>", metadata !220, i32 357, i64 8, i64 8, i32 0, i32 0, null, metadata !222, i32 0, null, metadata !267} ; [ DW_TAG_class_type ]
!222 = metadata !{metadata !223, metadata !302, metadata !310, metadata !311, metadata !315, metadata !318, metadata !321, metadata !324}
!223 = metadata !{i32 786460, metadata !221, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_inheritance ]
!224 = metadata !{i32 786434, metadata !218, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >", metadata !220, i32 268, i64 8, i64 8, i32 0, i32 0, null, metadata !225, i32 0, null, metadata !300} ; [ DW_TAG_class_type ]
!225 = metadata !{metadata !226, metadata !235, metadata !269, metadata !273, metadata !279, metadata !283, metadata !284, metadata !290, metadata !291, metadata !295, metadata !296}
!226 = metadata !{i32 786460, metadata !224, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_inheritance ]
!227 = metadata !{i32 786434, metadata !218, metadata !"sc_port_base", metadata !220, i32 265, i64 8, i64 8, i32 0, i32 0, null, metadata !228, i32 0, null, null} ; [ DW_TAG_class_type ]
!228 = metadata !{metadata !229}
!229 = metadata !{i32 786478, i32 0, metadata !227, metadata !"sc_port_base", metadata !"sc_port_base", metadata !"", metadata !220, i32 265, metadata !230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 265} ; [ DW_TAG_subprogram ]
!230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!231 = metadata !{null, metadata !232}
!232 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !227} ; [ DW_TAG_pointer_type ]
!233 = metadata !{metadata !234}
!234 = metadata !{i32 786468}                     ; [ DW_TAG_base_type ]
!235 = metadata !{i32 786445, metadata !224, metadata !"m_if", metadata !220, i32 270, i64 8, i64 8, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ]
!236 = metadata !{i32 786434, metadata !218, metadata !"sc_signal_in_if<bool>", metadata !220, i32 172, i64 8, i64 8, i32 0, i32 0, null, metadata !237, i32 0, null, metadata !267} ; [ DW_TAG_class_type ]
!237 = metadata !{metadata !238, metadata !245, metadata !248, metadata !252, metadata !255, metadata !260, metadata !264}
!238 = metadata !{i32 786460, metadata !236, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_inheritance ]
!239 = metadata !{i32 786434, metadata !218, metadata !"sc_interface", metadata !220, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !240, i32 0, null, null} ; [ DW_TAG_class_type ]
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786478, i32 0, metadata !239, metadata !"sc_interface", metadata !"sc_interface", metadata !"", metadata !220, i32 165, metadata !242, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 165} ; [ DW_TAG_subprogram ]
!242 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!243 = metadata !{null, metadata !244}
!244 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !239} ; [ DW_TAG_pointer_type ]
!245 = metadata !{i32 786445, metadata !236, metadata !"Val", metadata !220, i32 174, i64 8, i64 8, i64 0, i32 0, metadata !246} ; [ DW_TAG_member ]
!246 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_volatile_type ]
!247 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!248 = metadata !{i32 786478, i32 0, metadata !236, metadata !"sc_signal_in_if", metadata !"sc_signal_in_if", metadata !"", metadata !220, i32 176, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 176} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{null, metadata !251}
!251 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !236} ; [ DW_TAG_pointer_type ]
!252 = metadata !{i32 786478, i32 0, metadata !236, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifIbE4readEv", metadata !220, i32 180, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 180} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{metadata !247, metadata !251}
!255 = metadata !{i32 786478, i32 0, metadata !236, metadata !"read", metadata !"read", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifIbE4readEv", metadata !220, i32 181, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 181} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{metadata !247, metadata !258}
!258 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !259} ; [ DW_TAG_pointer_type ]
!259 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_const_type ]
!260 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator const _Bool", metadata !"operator const _Bool", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifIbEcvKbEv", metadata !220, i32 187, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 187} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !263, metadata !251}
!263 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_const_type ]
!264 = metadata !{i32 786478, i32 0, metadata !236, metadata !"operator const _Bool", metadata !"operator const _Bool", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifIbEcvKbEv", metadata !220, i32 188, metadata !265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 188} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!266 = metadata !{metadata !263, metadata !258}
!267 = metadata !{metadata !268}
!268 = metadata !{i32 786479, null, metadata !"T", metadata !247, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!269 = metadata !{i32 786478, i32 0, metadata !224, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !220, i32 272, metadata !270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 272} ; [ DW_TAG_subprogram ]
!270 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!271 = metadata !{null, metadata !272}
!272 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !224} ; [ DW_TAG_pointer_type ]
!273 = metadata !{i32 786478, i32 0, metadata !224, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !220, i32 273, metadata !274, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !233, i32 273} ; [ DW_TAG_subprogram ]
!274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!275 = metadata !{null, metadata !272, metadata !276}
!276 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !277} ; [ DW_TAG_pointer_type ]
!277 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !278} ; [ DW_TAG_const_type ]
!278 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!279 = metadata !{i32 786478, i32 0, metadata !224, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERS3_", metadata !220, i32 277, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 277} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{null, metadata !272, metadata !282}
!282 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_reference_type ]
!283 = metadata !{i32 786478, i32 0, metadata !224, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERS3_", metadata !220, i32 280, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 280} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786478, i32 0, metadata !224, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERNS0_15sc_prim_channelE", metadata !220, i32 281, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 281} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{null, metadata !272, metadata !287}
!287 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_reference_type ]
!288 = metadata !{i32 786434, metadata !218, metadata !"sc_prim_channel", metadata !220, i32 166, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, null} ; [ DW_TAG_class_type ]
!289 = metadata !{i32 0}
!290 = metadata !{i32 786478, i32 0, metadata !224, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERNS0_15sc_prim_channelE", metadata !220, i32 284, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 284} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !224, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERS4_", metadata !220, i32 285, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 285} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{null, metadata !272, metadata !294}
!294 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_reference_type ]
!295 = metadata !{i32 786478, i32 0, metadata !224, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERS4_", metadata !220, i32 286, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 286} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786478, i32 0, metadata !224, metadata !"operator->", metadata !"operator->", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEptEv", metadata !220, i32 288, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 288} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{metadata !299, metadata !272}
!299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ]
!300 = metadata !{metadata !301}
!301 = metadata !{i32 786479, null, metadata !"IF", metadata !236, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!302 = metadata !{i32 786478, i32 0, metadata !221, metadata !"pos", metadata !"pos", metadata !"_ZNK7_ap_sc_7sc_core5sc_inIbE3posEv", metadata !220, i32 365, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 365} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!304 = metadata !{metadata !305, metadata !308}
!305 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_reference_type ]
!306 = metadata !{i32 786454, metadata !218, metadata !"sc_event_finder", metadata !220, i32 353, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_typedef ]
!307 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ]
!308 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !309} ; [ DW_TAG_pointer_type ]
!309 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !221} ; [ DW_TAG_const_type ]
!310 = metadata !{i32 786478, i32 0, metadata !221, metadata !"neg", metadata !"neg", metadata !"_ZNK7_ap_sc_7sc_core5sc_inIbE3negEv", metadata !220, i32 366, metadata !303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 366} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786478, i32 0, metadata !221, metadata !"sc_in", metadata !"sc_in", metadata !"", metadata !220, i32 368, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 368} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{null, metadata !314}
!314 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !221} ; [ DW_TAG_pointer_type ]
!315 = metadata !{i32 786478, i32 0, metadata !221, metadata !"sc_in", metadata !"sc_in", metadata !"", metadata !220, i32 369, metadata !316, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !233, i32 369} ; [ DW_TAG_subprogram ]
!316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!317 = metadata !{null, metadata !314, metadata !276}
!318 = metadata !{i32 786478, i32 0, metadata !221, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core5sc_inIbE4readEv", metadata !220, i32 372, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 372} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !247, metadata !314}
!321 = metadata !{i32 786478, i32 0, metadata !221, metadata !"operator const _Bool", metadata !"operator const _Bool", metadata !"_ZN7_ap_sc_7sc_core5sc_inIbEcvKbEv", metadata !220, i32 373, metadata !322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 373} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!323 = metadata !{metadata !263, metadata !314}
!324 = metadata !{i32 786478, i32 0, metadata !221, metadata !"delayed", metadata !"delayed", metadata !"_ZNK7_ap_sc_7sc_core5sc_inIbE7delayedEv", metadata !220, i32 376, metadata !325, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 376} ; [ DW_TAG_subprogram ]
!325 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !326, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!326 = metadata !{metadata !327, metadata !308}
!327 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_reference_type ]
!328 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_const_type ]
!329 = metadata !{i32 786434, metadata !218, metadata !"sc_signal_bool_deval", metadata !220, i32 255, i64 8, i64 8, i32 0, i32 0, null, metadata !330, i32 0, null, null} ; [ DW_TAG_class_type ]
!330 = metadata !{metadata !331}
!331 = metadata !{i32 786478, i32 0, metadata !329, metadata !"operator==", metadata !"operator==", metadata !"_ZNK7_ap_sc_7sc_core20sc_signal_bool_devaleqEb", metadata !220, i32 257, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 257} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !334, metadata !335, metadata !247}
!334 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_reference_type ]
!335 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !328} ; [ DW_TAG_pointer_type ]
!336 = metadata !{i32 786445, metadata !214, metadata !"reset", metadata !210, i32 9, i64 8, i64 8, i64 8, i32 0, metadata !221} ; [ DW_TAG_member ]
!337 = metadata !{i32 786445, metadata !214, metadata !"enable", metadata !210, i32 9, i64 8, i64 8, i64 16, i32 0, metadata !221} ; [ DW_TAG_member ]
!338 = metadata !{i32 786445, metadata !214, metadata !"out_counter", metadata !210, i32 10, i64 8, i64 8, i64 24, i32 0, metadata !339} ; [ DW_TAG_member ]
!339 = metadata !{i32 786434, metadata !218, metadata !"sc_out<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 430, i64 8, i64 8, i32 0, i32 0, null, metadata !340, i32 0, null, metadata !1314} ; [ DW_TAG_class_type ]
!340 = metadata !{metadata !341, metadata !1316, metadata !1320, metadata !1323}
!341 = metadata !{i32 786460, metadata !339, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_inheritance ]
!342 = metadata !{i32 786434, metadata !218, metadata !"sc_inout<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 409, i64 8, i64 8, i32 0, i32 0, null, metadata !343, i32 0, null, metadata !1314} ; [ DW_TAG_class_type ]
!343 = metadata !{metadata !344, metadata !1284, metadata !1288, metadata !1291, metadata !1294, metadata !1301, metadata !1305, metadata !1311}
!344 = metadata !{i32 786460, metadata !342, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !345} ; [ DW_TAG_inheritance ]
!345 = metadata !{i32 786434, metadata !218, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !220, i32 268, i64 8, i64 8, i32 0, i32 0, null, metadata !346, i32 0, null, metadata !1282} ; [ DW_TAG_class_type ]
!346 = metadata !{metadata !347, metadata !348, metadata !1258, metadata !1262, metadata !1265, metadata !1268, metadata !1269, metadata !1272, metadata !1273, metadata !1277, metadata !1278}
!347 = metadata !{i32 786460, metadata !345, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_inheritance ]
!348 = metadata !{i32 786445, metadata !345, metadata !"m_if", metadata !220, i32 270, i64 8, i64 8, i64 0, i32 0, metadata !349} ; [ DW_TAG_member ]
!349 = metadata !{i32 786434, metadata !218, metadata !"sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 193, i64 8, i64 8, i32 0, i32 0, null, metadata !350, i32 0, null, metadata !1243} ; [ DW_TAG_class_type ]
!350 = metadata !{metadata !351, metadata !1245, metadata !1249, metadata !1255}
!351 = metadata !{i32 786460, metadata !349, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_inheritance ]
!352 = metadata !{i32 786434, metadata !218, metadata !"sc_signal_in_if<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 172, i64 8, i64 8, i32 0, i32 0, null, metadata !353, i32 0, null, metadata !1243} ; [ DW_TAG_class_type ]
!353 = metadata !{metadata !354, metadata !355, metadata !1225, metadata !1229, metadata !1232, metadata !1237, metadata !1240}
!354 = metadata !{i32 786460, metadata !352, null, metadata !220, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !239} ; [ DW_TAG_inheritance ]
!355 = metadata !{i32 786445, metadata !352, metadata !"Val", metadata !220, i32 174, i64 8, i64 8, i64 0, i32 0, metadata !356} ; [ DW_TAG_member ]
!356 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_volatile_type ]
!357 = metadata !{i32 786434, metadata !358, metadata !"sc_uint<4>", metadata !360, i32 269, i64 8, i64 8, i32 0, i32 0, null, metadata !361, i32 0, null, metadata !1223} ; [ DW_TAG_class_type ]
!358 = metadata !{i32 786489, metadata !359, metadata !"sc_dt", metadata !360, i32 67} ; [ DW_TAG_namespace ]
!359 = metadata !{i32 786489, null, metadata !"_ap_sc_", metadata !360, i32 64} ; [ DW_TAG_namespace ]
!360 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_sysc/ap_sc_dt.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!361 = metadata !{metadata !362, metadata !677, metadata !681, metadata !687, metadata !692, metadata !1151, metadata !1157, metadata !1161, metadata !1167, metadata !1170, metadata !1173, metadata !1176, metadata !1179, metadata !1182, metadata !1185, metadata !1188, metadata !1191, metadata !1194, metadata !1197, metadata !1200, metadata !1203, metadata !1206, metadata !1210, metadata !1215, metadata !1219, metadata !1222}
!362 = metadata !{i32 786460, metadata !357, null, metadata !360, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_inheritance ]
!363 = metadata !{i32 786434, null, metadata !"ap_int_base<4, false>", metadata !364, i32 150, i64 8, i64 8, i32 0, i32 0, null, metadata !365, i32 0, null, metadata !645} ; [ DW_TAG_class_type ]
!364 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_int_base.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!365 = metadata !{metadata !366, metadata !380, metadata !384, metadata !392, metadata !398, metadata !401, metadata !404, metadata !409, metadata !414, metadata !419, metadata !424, metadata !428, metadata !433, metadata !438, metadata !443, metadata !449, metadata !455, metadata !460, metadata !464, metadata !468, metadata !471, metadata !474, metadata !478, metadata !481, metadata !484, metadata !485, metadata !489, metadata !492, metadata !495, metadata !498, metadata !501, metadata !504, metadata !507, metadata !510, metadata !513, metadata !516, metadata !519, metadata !522, metadata !525, metadata !528, metadata !537, metadata !540, metadata !543, metadata !546, metadata !549, metadata !552, metadata !555, metadata !558, metadata !561, metadata !564, metadata !567, metadata !570, metadata !573, metadata !576, metadata !579, metadata !583, metadata !584, metadata !585, metadata !586, metadata !589, metadata !590, metadata !593, metadata !596, metadata !597, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608, metadata !620, metadata !621, metadata !624, metadata !639, metadata !640, metadata !641, metadata !646, metadata !649, metadata !652, metadata !655, metadata !656, metadata !657, metadata !661, metadata !662, metadata !663, metadata !664, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673}
!366 = metadata !{i32 786460, metadata !363, null, metadata !364, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !367} ; [ DW_TAG_inheritance ]
!367 = metadata !{i32 786434, null, metadata !"ssdm_int<4 + 1024 * 0, false>", metadata !368, i32 10, i64 8, i64 8, i32 0, i32 0, null, metadata !369, i32 0, null, metadata !376} ; [ DW_TAG_class_type ]
!368 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!369 = metadata !{metadata !370, metadata !372}
!370 = metadata !{i32 786445, metadata !367, metadata !"V", metadata !368, i32 10, i64 4, i64 4, i64 0, i32 0, metadata !371} ; [ DW_TAG_member ]
!371 = metadata !{i32 786468, null, metadata !"uint4", null, i32 0, i64 4, i64 4, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!372 = metadata !{i32 786478, i32 0, metadata !367, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !368, i32 10, metadata !373, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 10} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!374 = metadata !{null, metadata !375}
!375 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !367} ; [ DW_TAG_pointer_type ]
!376 = metadata !{metadata !377, metadata !379}
!377 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !378, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!378 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!379 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !247, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!380 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 206, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 206} ; [ DW_TAG_subprogram ]
!381 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !382, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!382 = metadata !{null, metadata !383}
!383 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !363} ; [ DW_TAG_pointer_type ]
!384 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base<4, false>", metadata !"ap_int_base<4, false>", metadata !"", metadata !364, i32 216, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !389, i32 0, metadata !233, i32 216} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{null, metadata !383, metadata !387}
!387 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !388} ; [ DW_TAG_reference_type ]
!388 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_const_type ]
!389 = metadata !{metadata !390, metadata !391}
!390 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !378, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!391 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !247, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!392 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base<4, false>", metadata !"ap_int_base<4, false>", metadata !"", metadata !364, i32 222, metadata !393, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !389, i32 0, metadata !233, i32 222} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!394 = metadata !{null, metadata !383, metadata !395}
!395 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !396} ; [ DW_TAG_reference_type ]
!396 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !397} ; [ DW_TAG_const_type ]
!397 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_volatile_type ]
!398 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 239, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 239} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{null, metadata !383, metadata !263}
!401 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 240, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 240} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{null, metadata !383, metadata !277}
!404 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 241, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 241} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!406 = metadata !{null, metadata !383, metadata !407}
!407 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_const_type ]
!408 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!409 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 242, metadata !410, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 242} ; [ DW_TAG_subprogram ]
!410 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !411, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!411 = metadata !{null, metadata !383, metadata !412}
!412 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !413} ; [ DW_TAG_const_type ]
!413 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!414 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 243, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 243} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{null, metadata !383, metadata !417}
!417 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !418} ; [ DW_TAG_const_type ]
!418 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!419 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 244, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 244} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{null, metadata !383, metadata !422}
!422 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !423} ; [ DW_TAG_const_type ]
!423 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!424 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 245, metadata !425, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 245} ; [ DW_TAG_subprogram ]
!425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!426 = metadata !{null, metadata !383, metadata !427}
!427 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !378} ; [ DW_TAG_const_type ]
!428 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 246, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 246} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{null, metadata !383, metadata !431}
!431 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !432} ; [ DW_TAG_const_type ]
!432 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!433 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 247, metadata !434, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 247} ; [ DW_TAG_subprogram ]
!434 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!435 = metadata !{null, metadata !383, metadata !436}
!436 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_const_type ]
!437 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!438 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 248, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 248} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{null, metadata !383, metadata !441}
!441 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_const_type ]
!442 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!443 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 249, metadata !444, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 249} ; [ DW_TAG_subprogram ]
!444 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !445, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!445 = metadata !{null, metadata !383, metadata !446}
!446 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !447} ; [ DW_TAG_const_type ]
!447 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !364, i32 232, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_typedef ]
!448 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!449 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 250, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 250} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{null, metadata !383, metadata !452}
!452 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_const_type ]
!453 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !364, i32 233, i64 0, i64 0, i64 0, i32 0, metadata !454} ; [ DW_TAG_typedef ]
!454 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!455 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 255, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 255} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!457 = metadata !{null, metadata !383, metadata !458}
!458 = metadata !{i32 786454, null, metadata !"half", metadata !364, i32 600, i64 0, i64 0, i64 0, i32 0, metadata !459} ; [ DW_TAG_typedef ]
!459 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!460 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 261, metadata !461, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 261} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!462 = metadata !{null, metadata !383, metadata !463}
!463 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!464 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 309, metadata !465, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 309} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !466, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!466 = metadata !{null, metadata !383, metadata !467}
!467 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!468 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 393, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 393} ; [ DW_TAG_subprogram ]
!469 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!470 = metadata !{null, metadata !383, metadata !276}
!471 = metadata !{i32 786478, i32 0, metadata !363, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 399, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 399} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!473 = metadata !{null, metadata !383, metadata !276, metadata !408}
!474 = metadata !{i32 786478, i32 0, metadata !363, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi4ELb0EE4readEv", metadata !364, i32 421, metadata !475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 421} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!476 = metadata !{metadata !363, metadata !477}
!477 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !397} ; [ DW_TAG_pointer_type ]
!478 = metadata !{i32 786478, i32 0, metadata !363, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi4ELb0EE5writeERKS0_", metadata !364, i32 428, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 428} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{null, metadata !477, metadata !387}
!481 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi4ELb0EEaSERVKS0_", metadata !364, i32 440, metadata !482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 440} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!483 = metadata !{null, metadata !477, metadata !395}
!484 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi4ELb0EEaSERKS0_", metadata !364, i32 450, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 450} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSERVKS0_", metadata !364, i32 467, metadata !486, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 467} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!487 = metadata !{metadata !488, metadata !383, metadata !395}
!488 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_reference_type ]
!489 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSERKS0_", metadata !364, i32 472, metadata !490, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 472} ; [ DW_TAG_subprogram ]
!490 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !491, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!491 = metadata !{metadata !488, metadata !383, metadata !387}
!492 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEb", metadata !364, i32 484, metadata !493, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 484} ; [ DW_TAG_subprogram ]
!493 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!494 = metadata !{metadata !488, metadata !383, metadata !247}
!495 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEc", metadata !364, i32 485, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 485} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!497 = metadata !{metadata !488, metadata !383, metadata !278}
!498 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEa", metadata !364, i32 486, metadata !499, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 486} ; [ DW_TAG_subprogram ]
!499 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!500 = metadata !{metadata !488, metadata !383, metadata !408}
!501 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEh", metadata !364, i32 487, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 487} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!503 = metadata !{metadata !488, metadata !383, metadata !413}
!504 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEs", metadata !364, i32 488, metadata !505, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 488} ; [ DW_TAG_subprogram ]
!505 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!506 = metadata !{metadata !488, metadata !383, metadata !418}
!507 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEt", metadata !364, i32 489, metadata !508, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 489} ; [ DW_TAG_subprogram ]
!508 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !509, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!509 = metadata !{metadata !488, metadata !383, metadata !423}
!510 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEi", metadata !364, i32 490, metadata !511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 490} ; [ DW_TAG_subprogram ]
!511 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!512 = metadata !{metadata !488, metadata !383, metadata !378}
!513 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEj", metadata !364, i32 491, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 491} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{metadata !488, metadata !383, metadata !432}
!516 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEl", metadata !364, i32 492, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 492} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !488, metadata !383, metadata !437}
!519 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEm", metadata !364, i32 493, metadata !520, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 493} ; [ DW_TAG_subprogram ]
!520 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !521, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!521 = metadata !{metadata !488, metadata !383, metadata !442}
!522 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEx", metadata !364, i32 494, metadata !523, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 494} ; [ DW_TAG_subprogram ]
!523 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!524 = metadata !{metadata !488, metadata !383, metadata !447}
!525 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi4ELb0EEaSEy", metadata !364, i32 495, metadata !526, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 495} ; [ DW_TAG_subprogram ]
!526 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !527, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!527 = metadata !{metadata !488, metadata !383, metadata !453}
!528 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK11ap_int_baseILi4ELb0EEcvyEv", metadata !364, i32 546, metadata !529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 546} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!530 = metadata !{metadata !531, metadata !536}
!531 = metadata !{i32 786454, metadata !363, metadata !"RetType", metadata !364, i32 160, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ]
!532 = metadata !{i32 786454, metadata !533, metadata !"Type", metadata !364, i32 93, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_typedef ]
!533 = metadata !{i32 786434, null, metadata !"retval<8, false>", metadata !364, i32 92, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !534} ; [ DW_TAG_class_type ]
!534 = metadata !{metadata !535, metadata !379}
!535 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !378, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!536 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !388} ; [ DW_TAG_pointer_type ]
!537 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi4ELb0EE7to_boolEv", metadata !364, i32 551, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 551} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{metadata !247, metadata !536}
!540 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi4ELb0EE7to_charEv", metadata !364, i32 552, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 552} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!542 = metadata !{metadata !278, metadata !536}
!543 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_schar", metadata !"to_schar", metadata !"_ZNK11ap_int_baseILi4ELb0EE8to_scharEv", metadata !364, i32 553, metadata !544, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 553} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !545, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!545 = metadata !{metadata !408, metadata !536}
!546 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi4ELb0EE8to_ucharEv", metadata !364, i32 554, metadata !547, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 554} ; [ DW_TAG_subprogram ]
!547 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !548, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!548 = metadata !{metadata !413, metadata !536}
!549 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi4ELb0EE8to_shortEv", metadata !364, i32 555, metadata !550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 555} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!551 = metadata !{metadata !418, metadata !536}
!552 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi4ELb0EE9to_ushortEv", metadata !364, i32 556, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 556} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{metadata !423, metadata !536}
!555 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi4ELb0EE6to_intEv", metadata !364, i32 557, metadata !556, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 557} ; [ DW_TAG_subprogram ]
!556 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !557, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!557 = metadata !{metadata !378, metadata !536}
!558 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi4ELb0EE7to_uintEv", metadata !364, i32 558, metadata !559, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 558} ; [ DW_TAG_subprogram ]
!559 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !560, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!560 = metadata !{metadata !432, metadata !536}
!561 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi4ELb0EE7to_longEv", metadata !364, i32 559, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 559} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{metadata !437, metadata !536}
!564 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi4ELb0EE8to_ulongEv", metadata !364, i32 560, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 560} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{metadata !442, metadata !536}
!567 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi4ELb0EE8to_int64Ev", metadata !364, i32 561, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 561} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{metadata !447, metadata !536}
!570 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi4ELb0EE9to_uint64Ev", metadata !364, i32 562, metadata !571, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 562} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!572 = metadata !{metadata !453, metadata !536}
!573 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_float", metadata !"to_float", metadata !"_ZNK11ap_int_baseILi4ELb0EE8to_floatEv", metadata !364, i32 563, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 563} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !575, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!575 = metadata !{metadata !463, metadata !536}
!576 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi4ELb0EE9to_doubleEv", metadata !364, i32 564, metadata !577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 564} ; [ DW_TAG_subprogram ]
!577 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !578, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!578 = metadata !{metadata !467, metadata !536}
!579 = metadata !{i32 786478, i32 0, metadata !363, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi4ELb0EE6lengthEv", metadata !364, i32 588, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 588} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!581 = metadata !{metadata !378, metadata !582}
!582 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !396} ; [ DW_TAG_pointer_type ]
!583 = metadata !{i32 786478, i32 0, metadata !363, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi4ELb0EE6iszeroEv", metadata !364, i32 591, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 591} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786478, i32 0, metadata !363, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi4ELb0EE7is_zeroEv", metadata !364, i32 594, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 594} ; [ DW_TAG_subprogram ]
!585 = metadata !{i32 786478, i32 0, metadata !363, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi4ELb0EE4signEv", metadata !364, i32 597, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 597} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786478, i32 0, metadata !363, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi4ELb0EE5clearEi", metadata !364, i32 606, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 606} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{null, metadata !383, metadata !378}
!589 = metadata !{i32 786478, i32 0, metadata !363, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi4ELb0EE6invertEi", metadata !364, i32 612, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 612} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786478, i32 0, metadata !363, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi4ELb0EE4testEi", metadata !364, i32 621, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 621} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!592 = metadata !{metadata !247, metadata !536, metadata !378}
!593 = metadata !{i32 786478, i32 0, metadata !363, metadata !"get", metadata !"get", metadata !"_ZN11ap_int_baseILi4ELb0EE3getEv", metadata !364, i32 627, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 627} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!595 = metadata !{metadata !488, metadata !383}
!596 = metadata !{i32 786478, i32 0, metadata !363, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0EE3setEi", metadata !364, i32 630, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 630} ; [ DW_TAG_subprogram ]
!597 = metadata !{i32 786478, i32 0, metadata !363, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi4ELb0EE3setEib", metadata !364, i32 636, metadata !598, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 636} ; [ DW_TAG_subprogram ]
!598 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !599, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!599 = metadata !{null, metadata !383, metadata !378, metadata !247}
!600 = metadata !{i32 786478, i32 0, metadata !363, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi4ELb0EE7lrotateEi", metadata !364, i32 643, metadata !511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 643} ; [ DW_TAG_subprogram ]
!601 = metadata !{i32 786478, i32 0, metadata !363, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi4ELb0EE7rrotateEi", metadata !364, i32 658, metadata !511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 658} ; [ DW_TAG_subprogram ]
!602 = metadata !{i32 786478, i32 0, metadata !363, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi4ELb0EE7reverseEv", metadata !364, i32 673, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 673} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 786478, i32 0, metadata !363, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi4ELb0EE7set_bitEib", metadata !364, i32 679, metadata !598, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 679} ; [ DW_TAG_subprogram ]
!604 = metadata !{i32 786478, i32 0, metadata !363, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi4ELb0EE7get_bitEi", metadata !364, i32 684, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 684} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786478, i32 0, metadata !363, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi4ELb0EE5b_notEv", metadata !364, i32 689, metadata !381, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 689} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi4ELb0EEppEv", metadata !364, i32 727, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 727} ; [ DW_TAG_subprogram ]
!607 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi4ELb0EEmmEv", metadata !364, i32 731, metadata !594, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 731} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi4ELb0EEppEi", metadata !364, i32 739, metadata !609, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 739} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!610 = metadata !{metadata !611, metadata !383, metadata !378}
!611 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !612} ; [ DW_TAG_const_type ]
!612 = metadata !{i32 786454, metadata !613, metadata !"arg1", metadata !364, i32 198, i64 0, i64 0, i64 0, i32 0, metadata !614} ; [ DW_TAG_typedef ]
!613 = metadata !{i32 786434, metadata !363, metadata !"RType<4, false>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !389} ; [ DW_TAG_class_type ]
!614 = metadata !{i32 786454, metadata !615, metadata !"type", metadata !364, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !616} ; [ DW_TAG_typedef ]
!615 = metadata !{i32 786434, null, metadata !"_ap_int_factory<4, false>", metadata !364, i32 147, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !389} ; [ DW_TAG_class_type ]
!616 = metadata !{i32 786434, null, metadata !"ap_uint<4>", metadata !617, i32 186, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !618} ; [ DW_TAG_class_type ]
!617 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_decl.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!618 = metadata !{metadata !619}
!619 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !378, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!620 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi4ELb0EEmmEi", metadata !364, i32 744, metadata !609, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 744} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi4ELb0EEpsEv", metadata !364, i32 753, metadata !622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 753} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!623 = metadata !{metadata !612, metadata !536}
!624 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi4ELb0EEngEv", metadata !364, i32 756, metadata !625, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 756} ; [ DW_TAG_subprogram ]
!625 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !626, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!626 = metadata !{metadata !627, metadata !536}
!627 = metadata !{i32 786454, metadata !628, metadata !"minus", metadata !364, i32 194, i64 0, i64 0, i64 0, i32 0, metadata !631} ; [ DW_TAG_typedef ]
!628 = metadata !{i32 786434, metadata !363, metadata !"RType<1, false>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !629} ; [ DW_TAG_class_type ]
!629 = metadata !{metadata !630, metadata !391}
!630 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !378, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!631 = metadata !{i32 786454, metadata !632, metadata !"type", metadata !364, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !636} ; [ DW_TAG_typedef ]
!632 = metadata !{i32 786434, null, metadata !"_ap_int_factory<5, true>", metadata !364, i32 145, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !633} ; [ DW_TAG_class_type ]
!633 = metadata !{metadata !634, metadata !635}
!634 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !378, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!635 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !247, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!636 = metadata !{i32 786434, null, metadata !"ap_int<5>", metadata !617, i32 183, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !637} ; [ DW_TAG_class_type ]
!637 = metadata !{metadata !638}
!638 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !378, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!639 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi4ELb0EEntEv", metadata !364, i32 763, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 763} ; [ DW_TAG_subprogram ]
!640 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi4ELb0EEcoEv", metadata !364, i32 769, metadata !622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 769} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 786478, i32 0, metadata !363, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi4ELb0EE5rangeEii", metadata !364, i32 907, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 907} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!643 = metadata !{metadata !644, metadata !383, metadata !378, metadata !378}
!644 = metadata !{i32 786434, null, metadata !"ap_range_ref<4, false>", metadata !617, i32 189, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !645} ; [ DW_TAG_class_type ]
!645 = metadata !{metadata !619, metadata !379}
!646 = metadata !{i32 786478, i32 0, metadata !363, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi4ELb0EE5rangeEii", metadata !364, i32 914, metadata !647, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 914} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!648 = metadata !{metadata !644, metadata !536, metadata !378, metadata !378}
!649 = metadata !{i32 786478, i32 0, metadata !363, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi4ELb0EE5rangeEv", metadata !364, i32 938, metadata !650, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 938} ; [ DW_TAG_subprogram ]
!650 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !651, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!651 = metadata !{metadata !644, metadata !383}
!652 = metadata !{i32 786478, i32 0, metadata !363, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi4ELb0EE5rangeEv", metadata !364, i32 942, metadata !653, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 942} ; [ DW_TAG_subprogram ]
!653 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !654, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!654 = metadata !{metadata !644, metadata !536}
!655 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi4ELb0EEclEii", metadata !364, i32 946, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 946} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi4ELb0EEclEii", metadata !364, i32 950, metadata !647, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 950} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi4ELb0EEixEi", metadata !364, i32 988, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 988} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{metadata !660, metadata !383, metadata !378}
!660 = metadata !{i32 786434, null, metadata !"ap_bit_ref<4, false>", metadata !617, i32 192, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !645} ; [ DW_TAG_class_type ]
!661 = metadata !{i32 786478, i32 0, metadata !363, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi4ELb0EEixEi", metadata !364, i32 1004, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1004} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786478, i32 0, metadata !363, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi4ELb0EE3bitEi", metadata !364, i32 1017, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1017} ; [ DW_TAG_subprogram ]
!663 = metadata !{i32 786478, i32 0, metadata !363, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi4ELb0EE3bitEi", metadata !364, i32 1032, metadata !591, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1032} ; [ DW_TAG_subprogram ]
!664 = metadata !{i32 786478, i32 0, metadata !363, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi4ELb0EE17countLeadingZerosEv", metadata !364, i32 1055, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1055} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{metadata !378, metadata !383}
!667 = metadata !{i32 786478, i32 0, metadata !363, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0EE10and_reduceEv", metadata !364, i32 1275, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1275} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786478, i32 0, metadata !363, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0EE11nand_reduceEv", metadata !364, i32 1276, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1276} ; [ DW_TAG_subprogram ]
!669 = metadata !{i32 786478, i32 0, metadata !363, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0EE9or_reduceEv", metadata !364, i32 1277, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1277} ; [ DW_TAG_subprogram ]
!670 = metadata !{i32 786478, i32 0, metadata !363, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0EE10nor_reduceEv", metadata !364, i32 1278, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1278} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786478, i32 0, metadata !363, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0EE10xor_reduceEv", metadata !364, i32 1279, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1279} ; [ DW_TAG_subprogram ]
!672 = metadata !{i32 786478, i32 0, metadata !363, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi4ELb0EE11xnor_reduceEv", metadata !364, i32 1280, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1280} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786478, i32 0, metadata !363, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi4ELb0EE9to_stringEab", metadata !364, i32 1295, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1295} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{metadata !676, metadata !536, metadata !408, metadata !247}
!676 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ]
!677 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 272, metadata !678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 272} ; [ DW_TAG_subprogram ]
!678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!679 = metadata !{null, metadata !680}
!680 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !357} ; [ DW_TAG_pointer_type ]
!681 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 278, metadata !682, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 278} ; [ DW_TAG_subprogram ]
!682 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !683, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!683 = metadata !{null, metadata !680, metadata !684}
!684 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !685} ; [ DW_TAG_reference_type ]
!685 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !686} ; [ DW_TAG_const_type ]
!686 = metadata !{i32 786454, metadata !357, metadata !"sc_uint_base", metadata !360, i32 270, i64 0, i64 0, i64 0, i32 0, metadata !363} ; [ DW_TAG_typedef ]
!687 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 279, metadata !688, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 279} ; [ DW_TAG_subprogram ]
!688 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !689, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!689 = metadata !{null, metadata !680, metadata !690}
!690 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !691} ; [ DW_TAG_reference_type ]
!691 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !686} ; [ DW_TAG_volatile_type ]
!692 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint<33, true>", metadata !"sc_uint<33, true>", metadata !"", metadata !360, i32 284, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1148, i32 0, metadata !233, i32 284} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{null, metadata !680, metadata !695}
!695 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !696} ; [ DW_TAG_reference_type ]
!696 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_const_type ]
!697 = metadata !{i32 786434, null, metadata !"ap_int_base<33, true>", metadata !364, i32 150, i64 64, i64 64, i32 0, i32 0, null, metadata !698, i32 0, null, metadata !1031} ; [ DW_TAG_class_type ]
!698 = metadata !{metadata !699, metadata !711, metadata !715, metadata !720, metadata !726, metadata !729, metadata !732, metadata !735, metadata !738, metadata !741, metadata !744, metadata !747, metadata !750, metadata !753, metadata !756, metadata !759, metadata !762, metadata !765, metadata !768, metadata !771, metadata !774, metadata !777, metadata !781, metadata !784, metadata !787, metadata !788, metadata !792, metadata !795, metadata !798, metadata !801, metadata !804, metadata !807, metadata !810, metadata !813, metadata !816, metadata !819, metadata !822, metadata !825, metadata !828, metadata !831, metadata !839, metadata !842, metadata !845, metadata !848, metadata !851, metadata !854, metadata !857, metadata !860, metadata !863, metadata !866, metadata !869, metadata !872, metadata !875, metadata !878, metadata !881, metadata !885, metadata !886, metadata !887, metadata !888, metadata !891, metadata !892, metadata !895, metadata !898, metadata !899, metadata !902, metadata !903, metadata !904, metadata !905, metadata !906, metadata !907, metadata !908, metadata !909, metadata !910, metadata !1009, metadata !1010, metadata !1013, metadata !1025, metadata !1026, metadata !1027, metadata !1032, metadata !1035, metadata !1038, metadata !1041, metadata !1042, metadata !1043, metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1139, metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1144, metadata !1145}
!699 = metadata !{i32 786460, metadata !697, null, metadata !364, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !700} ; [ DW_TAG_inheritance ]
!700 = metadata !{i32 786434, null, metadata !"ssdm_int<33 + 1024 * 0, true>", metadata !368, i32 67, i64 64, i64 64, i32 0, i32 0, null, metadata !701, i32 0, null, metadata !708} ; [ DW_TAG_class_type ]
!701 = metadata !{metadata !702, metadata !704}
!702 = metadata !{i32 786445, metadata !700, metadata !"V", metadata !368, i32 67, i64 33, i64 64, i64 0, i32 0, metadata !703} ; [ DW_TAG_member ]
!703 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!704 = metadata !{i32 786478, i32 0, metadata !700, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !368, i32 67, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 67} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{null, metadata !707}
!707 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !700} ; [ DW_TAG_pointer_type ]
!708 = metadata !{metadata !709, metadata !710}
!709 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !378, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!710 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !247, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!711 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 206, metadata !712, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 206} ; [ DW_TAG_subprogram ]
!712 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!713 = metadata !{null, metadata !714}
!714 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !697} ; [ DW_TAG_pointer_type ]
!715 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"", metadata !364, i32 216, metadata !716, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !718, i32 0, metadata !233, i32 216} ; [ DW_TAG_subprogram ]
!716 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !717, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!717 = metadata !{null, metadata !714, metadata !695}
!718 = metadata !{metadata !719, metadata !635}
!719 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !378, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!720 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"", metadata !364, i32 222, metadata !721, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !718, i32 0, metadata !233, i32 222} ; [ DW_TAG_subprogram ]
!721 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !722, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!722 = metadata !{null, metadata !714, metadata !723}
!723 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !724} ; [ DW_TAG_reference_type ]
!724 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !725} ; [ DW_TAG_const_type ]
!725 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_volatile_type ]
!726 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 239, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 239} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{null, metadata !714, metadata !263}
!729 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 240, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 240} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{null, metadata !714, metadata !277}
!732 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 241, metadata !733, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 241} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!734 = metadata !{null, metadata !714, metadata !407}
!735 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 242, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 242} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{null, metadata !714, metadata !412}
!738 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 243, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 243} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!740 = metadata !{null, metadata !714, metadata !417}
!741 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 244, metadata !742, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 244} ; [ DW_TAG_subprogram ]
!742 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !743, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!743 = metadata !{null, metadata !714, metadata !422}
!744 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 245, metadata !745, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 245} ; [ DW_TAG_subprogram ]
!745 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!746 = metadata !{null, metadata !714, metadata !427}
!747 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 246, metadata !748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 246} ; [ DW_TAG_subprogram ]
!748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!749 = metadata !{null, metadata !714, metadata !431}
!750 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 247, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 247} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !752, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!752 = metadata !{null, metadata !714, metadata !436}
!753 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 248, metadata !754, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 248} ; [ DW_TAG_subprogram ]
!754 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !755, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!755 = metadata !{null, metadata !714, metadata !441}
!756 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 249, metadata !757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 249} ; [ DW_TAG_subprogram ]
!757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!758 = metadata !{null, metadata !714, metadata !446}
!759 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 250, metadata !760, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 250} ; [ DW_TAG_subprogram ]
!760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!761 = metadata !{null, metadata !714, metadata !452}
!762 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 255, metadata !763, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 255} ; [ DW_TAG_subprogram ]
!763 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!764 = metadata !{null, metadata !714, metadata !458}
!765 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 261, metadata !766, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 261} ; [ DW_TAG_subprogram ]
!766 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !767, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!767 = metadata !{null, metadata !714, metadata !463}
!768 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 309, metadata !769, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 309} ; [ DW_TAG_subprogram ]
!769 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !770, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!770 = metadata !{null, metadata !714, metadata !467}
!771 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 393, metadata !772, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 393} ; [ DW_TAG_subprogram ]
!772 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !773, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!773 = metadata !{null, metadata !714, metadata !276}
!774 = metadata !{i32 786478, i32 0, metadata !697, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 399, metadata !775, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 399} ; [ DW_TAG_subprogram ]
!775 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!776 = metadata !{null, metadata !714, metadata !276, metadata !408}
!777 = metadata !{i32 786478, i32 0, metadata !697, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi33ELb1EE4readEv", metadata !364, i32 421, metadata !778, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 421} ; [ DW_TAG_subprogram ]
!778 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !779, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!779 = metadata !{metadata !697, metadata !780}
!780 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !725} ; [ DW_TAG_pointer_type ]
!781 = metadata !{i32 786478, i32 0, metadata !697, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi33ELb1EE5writeERKS0_", metadata !364, i32 428, metadata !782, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 428} ; [ DW_TAG_subprogram ]
!782 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !783, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!783 = metadata !{null, metadata !780, metadata !695}
!784 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1EEaSERVKS0_", metadata !364, i32 440, metadata !785, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 440} ; [ DW_TAG_subprogram ]
!785 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !786, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!786 = metadata !{null, metadata !780, metadata !723}
!787 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi33ELb1EEaSERKS0_", metadata !364, i32 450, metadata !782, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 450} ; [ DW_TAG_subprogram ]
!788 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSERVKS0_", metadata !364, i32 467, metadata !789, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 467} ; [ DW_TAG_subprogram ]
!789 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !790, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!790 = metadata !{metadata !791, metadata !714, metadata !723}
!791 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_reference_type ]
!792 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSERKS0_", metadata !364, i32 472, metadata !793, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 472} ; [ DW_TAG_subprogram ]
!793 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !794, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!794 = metadata !{metadata !791, metadata !714, metadata !695}
!795 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEb", metadata !364, i32 484, metadata !796, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 484} ; [ DW_TAG_subprogram ]
!796 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !797, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!797 = metadata !{metadata !791, metadata !714, metadata !247}
!798 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEc", metadata !364, i32 485, metadata !799, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 485} ; [ DW_TAG_subprogram ]
!799 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !800, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!800 = metadata !{metadata !791, metadata !714, metadata !278}
!801 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEa", metadata !364, i32 486, metadata !802, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 486} ; [ DW_TAG_subprogram ]
!802 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !803, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!803 = metadata !{metadata !791, metadata !714, metadata !408}
!804 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEh", metadata !364, i32 487, metadata !805, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 487} ; [ DW_TAG_subprogram ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!806 = metadata !{metadata !791, metadata !714, metadata !413}
!807 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEs", metadata !364, i32 488, metadata !808, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 488} ; [ DW_TAG_subprogram ]
!808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!809 = metadata !{metadata !791, metadata !714, metadata !418}
!810 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEt", metadata !364, i32 489, metadata !811, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 489} ; [ DW_TAG_subprogram ]
!811 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !812, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!812 = metadata !{metadata !791, metadata !714, metadata !423}
!813 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEi", metadata !364, i32 490, metadata !814, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 490} ; [ DW_TAG_subprogram ]
!814 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !815, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!815 = metadata !{metadata !791, metadata !714, metadata !378}
!816 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEj", metadata !364, i32 491, metadata !817, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 491} ; [ DW_TAG_subprogram ]
!817 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !818, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!818 = metadata !{metadata !791, metadata !714, metadata !432}
!819 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEl", metadata !364, i32 492, metadata !820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 492} ; [ DW_TAG_subprogram ]
!820 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !821, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!821 = metadata !{metadata !791, metadata !714, metadata !437}
!822 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEm", metadata !364, i32 493, metadata !823, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 493} ; [ DW_TAG_subprogram ]
!823 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !824, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!824 = metadata !{metadata !791, metadata !714, metadata !442}
!825 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEx", metadata !364, i32 494, metadata !826, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 494} ; [ DW_TAG_subprogram ]
!826 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !827, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!827 = metadata !{metadata !791, metadata !714, metadata !447}
!828 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi33ELb1EEaSEy", metadata !364, i32 495, metadata !829, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 495} ; [ DW_TAG_subprogram ]
!829 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !830, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!830 = metadata !{metadata !791, metadata !714, metadata !453}
!831 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi33ELb1EEcvxEv", metadata !364, i32 546, metadata !832, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 546} ; [ DW_TAG_subprogram ]
!832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!833 = metadata !{metadata !834, metadata !838}
!834 = metadata !{i32 786454, metadata !697, metadata !"RetType", metadata !364, i32 160, i64 0, i64 0, i64 0, i32 0, metadata !835} ; [ DW_TAG_typedef ]
!835 = metadata !{i32 786454, metadata !836, metadata !"Type", metadata !364, i32 88, i64 0, i64 0, i64 0, i32 0, metadata !447} ; [ DW_TAG_typedef ]
!836 = metadata !{i32 786434, null, metadata !"retval<8, true>", metadata !364, i32 87, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !837} ; [ DW_TAG_class_type ]
!837 = metadata !{metadata !535, metadata !710}
!838 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !696} ; [ DW_TAG_pointer_type ]
!839 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi33ELb1EE7to_boolEv", metadata !364, i32 551, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 551} ; [ DW_TAG_subprogram ]
!840 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !841, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!841 = metadata !{metadata !247, metadata !838}
!842 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi33ELb1EE7to_charEv", metadata !364, i32 552, metadata !843, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 552} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !844, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!844 = metadata !{metadata !278, metadata !838}
!845 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_schar", metadata !"to_schar", metadata !"_ZNK11ap_int_baseILi33ELb1EE8to_scharEv", metadata !364, i32 553, metadata !846, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 553} ; [ DW_TAG_subprogram ]
!846 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !847, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!847 = metadata !{metadata !408, metadata !838}
!848 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi33ELb1EE8to_ucharEv", metadata !364, i32 554, metadata !849, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 554} ; [ DW_TAG_subprogram ]
!849 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !850, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!850 = metadata !{metadata !413, metadata !838}
!851 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi33ELb1EE8to_shortEv", metadata !364, i32 555, metadata !852, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 555} ; [ DW_TAG_subprogram ]
!852 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !853, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!853 = metadata !{metadata !418, metadata !838}
!854 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi33ELb1EE9to_ushortEv", metadata !364, i32 556, metadata !855, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 556} ; [ DW_TAG_subprogram ]
!855 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !856, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!856 = metadata !{metadata !423, metadata !838}
!857 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi33ELb1EE6to_intEv", metadata !364, i32 557, metadata !858, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 557} ; [ DW_TAG_subprogram ]
!858 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !859, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!859 = metadata !{metadata !378, metadata !838}
!860 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi33ELb1EE7to_uintEv", metadata !364, i32 558, metadata !861, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 558} ; [ DW_TAG_subprogram ]
!861 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !862, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!862 = metadata !{metadata !432, metadata !838}
!863 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi33ELb1EE7to_longEv", metadata !364, i32 559, metadata !864, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 559} ; [ DW_TAG_subprogram ]
!864 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !865, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!865 = metadata !{metadata !437, metadata !838}
!866 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi33ELb1EE8to_ulongEv", metadata !364, i32 560, metadata !867, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 560} ; [ DW_TAG_subprogram ]
!867 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !868, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!868 = metadata !{metadata !442, metadata !838}
!869 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi33ELb1EE8to_int64Ev", metadata !364, i32 561, metadata !870, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 561} ; [ DW_TAG_subprogram ]
!870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!871 = metadata !{metadata !447, metadata !838}
!872 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi33ELb1EE9to_uint64Ev", metadata !364, i32 562, metadata !873, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 562} ; [ DW_TAG_subprogram ]
!873 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !874, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!874 = metadata !{metadata !453, metadata !838}
!875 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_float", metadata !"to_float", metadata !"_ZNK11ap_int_baseILi33ELb1EE8to_floatEv", metadata !364, i32 563, metadata !876, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 563} ; [ DW_TAG_subprogram ]
!876 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !877, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!877 = metadata !{metadata !463, metadata !838}
!878 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi33ELb1EE9to_doubleEv", metadata !364, i32 564, metadata !879, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 564} ; [ DW_TAG_subprogram ]
!879 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !880, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!880 = metadata !{metadata !467, metadata !838}
!881 = metadata !{i32 786478, i32 0, metadata !697, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi33ELb1EE6lengthEv", metadata !364, i32 588, metadata !882, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 588} ; [ DW_TAG_subprogram ]
!882 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !883, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!883 = metadata !{metadata !378, metadata !884}
!884 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !724} ; [ DW_TAG_pointer_type ]
!885 = metadata !{i32 786478, i32 0, metadata !697, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi33ELb1EE6iszeroEv", metadata !364, i32 591, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 591} ; [ DW_TAG_subprogram ]
!886 = metadata !{i32 786478, i32 0, metadata !697, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi33ELb1EE7is_zeroEv", metadata !364, i32 594, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 594} ; [ DW_TAG_subprogram ]
!887 = metadata !{i32 786478, i32 0, metadata !697, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi33ELb1EE4signEv", metadata !364, i32 597, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 597} ; [ DW_TAG_subprogram ]
!888 = metadata !{i32 786478, i32 0, metadata !697, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi33ELb1EE5clearEi", metadata !364, i32 606, metadata !889, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 606} ; [ DW_TAG_subprogram ]
!889 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !890, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!890 = metadata !{null, metadata !714, metadata !378}
!891 = metadata !{i32 786478, i32 0, metadata !697, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi33ELb1EE6invertEi", metadata !364, i32 612, metadata !889, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 612} ; [ DW_TAG_subprogram ]
!892 = metadata !{i32 786478, i32 0, metadata !697, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi33ELb1EE4testEi", metadata !364, i32 621, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 621} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !894, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!894 = metadata !{metadata !247, metadata !838, metadata !378}
!895 = metadata !{i32 786478, i32 0, metadata !697, metadata !"get", metadata !"get", metadata !"_ZN11ap_int_baseILi33ELb1EE3getEv", metadata !364, i32 627, metadata !896, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 627} ; [ DW_TAG_subprogram ]
!896 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !897, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!897 = metadata !{metadata !791, metadata !714}
!898 = metadata !{i32 786478, i32 0, metadata !697, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1EE3setEi", metadata !364, i32 630, metadata !889, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 630} ; [ DW_TAG_subprogram ]
!899 = metadata !{i32 786478, i32 0, metadata !697, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi33ELb1EE3setEib", metadata !364, i32 636, metadata !900, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 636} ; [ DW_TAG_subprogram ]
!900 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !901, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!901 = metadata !{null, metadata !714, metadata !378, metadata !247}
!902 = metadata !{i32 786478, i32 0, metadata !697, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi33ELb1EE7lrotateEi", metadata !364, i32 643, metadata !814, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 643} ; [ DW_TAG_subprogram ]
!903 = metadata !{i32 786478, i32 0, metadata !697, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi33ELb1EE7rrotateEi", metadata !364, i32 658, metadata !814, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 658} ; [ DW_TAG_subprogram ]
!904 = metadata !{i32 786478, i32 0, metadata !697, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi33ELb1EE7reverseEv", metadata !364, i32 673, metadata !896, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 673} ; [ DW_TAG_subprogram ]
!905 = metadata !{i32 786478, i32 0, metadata !697, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi33ELb1EE7set_bitEib", metadata !364, i32 679, metadata !900, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 679} ; [ DW_TAG_subprogram ]
!906 = metadata !{i32 786478, i32 0, metadata !697, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi33ELb1EE7get_bitEi", metadata !364, i32 684, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 684} ; [ DW_TAG_subprogram ]
!907 = metadata !{i32 786478, i32 0, metadata !697, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi33ELb1EE5b_notEv", metadata !364, i32 689, metadata !712, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 689} ; [ DW_TAG_subprogram ]
!908 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1EEppEv", metadata !364, i32 727, metadata !896, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 727} ; [ DW_TAG_subprogram ]
!909 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1EEmmEv", metadata !364, i32 731, metadata !896, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 731} ; [ DW_TAG_subprogram ]
!910 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi33ELb1EEppEi", metadata !364, i32 739, metadata !911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 739} ; [ DW_TAG_subprogram ]
!911 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !912, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!912 = metadata !{metadata !913, metadata !714, metadata !378}
!913 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_const_type ]
!914 = metadata !{i32 786454, metadata !915, metadata !"arg1", metadata !364, i32 198, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ]
!915 = metadata !{i32 786434, metadata !697, metadata !"RType<33, true>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !718} ; [ DW_TAG_class_type ]
!916 = metadata !{i32 786454, metadata !917, metadata !"type", metadata !364, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !918} ; [ DW_TAG_typedef ]
!917 = metadata !{i32 786434, null, metadata !"_ap_int_factory<33, true>", metadata !364, i32 145, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !718} ; [ DW_TAG_class_type ]
!918 = metadata !{i32 786434, null, metadata !"ap_int<33>", metadata !919, i32 62, i64 64, i64 64, i32 0, i32 0, null, metadata !920, i32 0, null, metadata !1007} ; [ DW_TAG_class_type ]
!919 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_int.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!920 = metadata !{metadata !921, metadata !922, metadata !926, metadata !932, metadata !938, metadata !941, metadata !944, metadata !947, metadata !950, metadata !953, metadata !956, metadata !959, metadata !962, metadata !965, metadata !968, metadata !971, metadata !974, metadata !977, metadata !980, metadata !983, metadata !986, metadata !989, metadata !992, metadata !996, metadata !999, metadata !1003, metadata !1006}
!921 = metadata !{i32 786460, metadata !918, null, metadata !919, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_inheritance ]
!922 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 65, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 65} ; [ DW_TAG_subprogram ]
!923 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !924, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!924 = metadata !{null, metadata !925}
!925 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !918} ; [ DW_TAG_pointer_type ]
!926 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int<33>", metadata !"ap_int<33>", metadata !"", metadata !919, i32 67, metadata !927, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !931, i32 0, metadata !233, i32 67} ; [ DW_TAG_subprogram ]
!927 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !928, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!928 = metadata !{null, metadata !925, metadata !929}
!929 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !930} ; [ DW_TAG_reference_type ]
!930 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !918} ; [ DW_TAG_const_type ]
!931 = metadata !{metadata !719}
!932 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int<33>", metadata !"ap_int<33>", metadata !"", metadata !919, i32 72, metadata !933, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !931, i32 0, metadata !233, i32 72} ; [ DW_TAG_subprogram ]
!933 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !934, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!934 = metadata !{null, metadata !925, metadata !935}
!935 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !936} ; [ DW_TAG_reference_type ]
!936 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_const_type ]
!937 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !918} ; [ DW_TAG_volatile_type ]
!938 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int<33, true>", metadata !"ap_int<33, true>", metadata !"", metadata !919, i32 121, metadata !939, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !718, i32 0, metadata !233, i32 121} ; [ DW_TAG_subprogram ]
!939 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !940, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!940 = metadata !{null, metadata !925, metadata !695}
!941 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 145, metadata !942, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 145} ; [ DW_TAG_subprogram ]
!942 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !943, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!943 = metadata !{null, metadata !925, metadata !247}
!944 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 146, metadata !945, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 146} ; [ DW_TAG_subprogram ]
!945 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !946, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!946 = metadata !{null, metadata !925, metadata !278}
!947 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 147, metadata !948, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 147} ; [ DW_TAG_subprogram ]
!948 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !949, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!949 = metadata !{null, metadata !925, metadata !408}
!950 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 148, metadata !951, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 148} ; [ DW_TAG_subprogram ]
!951 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !952, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!952 = metadata !{null, metadata !925, metadata !413}
!953 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 149, metadata !954, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 149} ; [ DW_TAG_subprogram ]
!954 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !955, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!955 = metadata !{null, metadata !925, metadata !418}
!956 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 150, metadata !957, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 150} ; [ DW_TAG_subprogram ]
!957 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !958, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!958 = metadata !{null, metadata !925, metadata !423}
!959 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 151, metadata !960, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 151} ; [ DW_TAG_subprogram ]
!960 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !961, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!961 = metadata !{null, metadata !925, metadata !378}
!962 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 152, metadata !963, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 152} ; [ DW_TAG_subprogram ]
!963 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !964, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!964 = metadata !{null, metadata !925, metadata !432}
!965 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 153, metadata !966, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 153} ; [ DW_TAG_subprogram ]
!966 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !967, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!967 = metadata !{null, metadata !925, metadata !437}
!968 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 154, metadata !969, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 154} ; [ DW_TAG_subprogram ]
!969 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !970, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!970 = metadata !{null, metadata !925, metadata !442}
!971 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 155, metadata !972, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 155} ; [ DW_TAG_subprogram ]
!972 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !973, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!973 = metadata !{null, metadata !925, metadata !447}
!974 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 156, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 156} ; [ DW_TAG_subprogram ]
!975 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!976 = metadata !{null, metadata !925, metadata !453}
!977 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 158, metadata !978, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 158} ; [ DW_TAG_subprogram ]
!978 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !979, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!979 = metadata !{null, metadata !925, metadata !467}
!980 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 159, metadata !981, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 159} ; [ DW_TAG_subprogram ]
!981 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !982, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!982 = metadata !{null, metadata !925, metadata !463}
!983 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 160, metadata !984, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 160} ; [ DW_TAG_subprogram ]
!984 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !985, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!985 = metadata !{null, metadata !925, metadata !458}
!986 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 163, metadata !987, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 163} ; [ DW_TAG_subprogram ]
!987 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !988, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!988 = metadata !{null, metadata !925, metadata !276}
!989 = metadata !{i32 786478, i32 0, metadata !918, metadata !"ap_int", metadata !"ap_int", metadata !"", metadata !919, i32 165, metadata !990, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 165} ; [ DW_TAG_subprogram ]
!990 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !991, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!991 = metadata !{null, metadata !925, metadata !276, metadata !408}
!992 = metadata !{i32 786478, i32 0, metadata !918, metadata !"operator=", metadata !"operator=", metadata !"_ZN6ap_intILi33EEaSERKS0_", metadata !919, i32 170, metadata !993, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 170} ; [ DW_TAG_subprogram ]
!993 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !994, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!994 = metadata !{metadata !995, metadata !925, metadata !929}
!995 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !918} ; [ DW_TAG_reference_type ]
!996 = metadata !{i32 786478, i32 0, metadata !918, metadata !"operator=", metadata !"operator=", metadata !"_ZN6ap_intILi33EEaSERVKS0_", metadata !919, i32 176, metadata !997, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 176} ; [ DW_TAG_subprogram ]
!997 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !998, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!998 = metadata !{metadata !995, metadata !925, metadata !935}
!999 = metadata !{i32 786478, i32 0, metadata !918, metadata !"operator=", metadata !"operator=", metadata !"_ZNV6ap_intILi33EEaSERKS0_", metadata !919, i32 182, metadata !1000, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 182} ; [ DW_TAG_subprogram ]
!1000 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1001, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1001 = metadata !{null, metadata !1002, metadata !929}
!1002 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !937} ; [ DW_TAG_pointer_type ]
!1003 = metadata !{i32 786478, i32 0, metadata !918, metadata !"operator=", metadata !"operator=", metadata !"_ZNV6ap_intILi33EEaSERVKS0_", metadata !919, i32 184, metadata !1004, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 184} ; [ DW_TAG_subprogram ]
!1004 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1005, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1005 = metadata !{null, metadata !1002, metadata !935}
!1006 = metadata !{i32 786478, i32 0, metadata !918, metadata !"~ap_int", metadata !"~ap_int", metadata !"", metadata !919, i32 62, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !233, i32 62} ; [ DW_TAG_subprogram ]
!1007 = metadata !{metadata !1008}
!1008 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !378, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1009 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi33ELb1EEmmEi", metadata !364, i32 744, metadata !911, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 744} ; [ DW_TAG_subprogram ]
!1010 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi33ELb1EEpsEv", metadata !364, i32 753, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 753} ; [ DW_TAG_subprogram ]
!1011 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1012, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1012 = metadata !{metadata !914, metadata !838}
!1013 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi33ELb1EEngEv", metadata !364, i32 756, metadata !1014, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 756} ; [ DW_TAG_subprogram ]
!1014 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1015, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1015 = metadata !{metadata !1016, metadata !838}
!1016 = metadata !{i32 786454, metadata !1017, metadata !"minus", metadata !364, i32 194, i64 0, i64 0, i64 0, i32 0, metadata !1018} ; [ DW_TAG_typedef ]
!1017 = metadata !{i32 786434, metadata !697, metadata !"RType<1, false>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !629} ; [ DW_TAG_class_type ]
!1018 = metadata !{i32 786454, metadata !1019, metadata !"type", metadata !364, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !1022} ; [ DW_TAG_typedef ]
!1019 = metadata !{i32 786434, null, metadata !"_ap_int_factory<34, true>", metadata !364, i32 145, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !1020} ; [ DW_TAG_class_type ]
!1020 = metadata !{metadata !1021, metadata !635}
!1021 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !378, i64 34, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1022 = metadata !{i32 786434, null, metadata !"ap_int<34>", metadata !617, i32 183, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1023} ; [ DW_TAG_class_type ]
!1023 = metadata !{metadata !1024}
!1024 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !378, i64 34, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1025 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi33ELb1EEntEv", metadata !364, i32 763, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 763} ; [ DW_TAG_subprogram ]
!1026 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi33ELb1EEcoEv", metadata !364, i32 769, metadata !1011, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 769} ; [ DW_TAG_subprogram ]
!1027 = metadata !{i32 786478, i32 0, metadata !697, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi33ELb1EE5rangeEii", metadata !364, i32 907, metadata !1028, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 907} ; [ DW_TAG_subprogram ]
!1028 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1029, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1029 = metadata !{metadata !1030, metadata !714, metadata !378, metadata !378}
!1030 = metadata !{i32 786434, null, metadata !"ap_range_ref<33, true>", metadata !617, i32 189, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1031} ; [ DW_TAG_class_type ]
!1031 = metadata !{metadata !1008, metadata !710}
!1032 = metadata !{i32 786478, i32 0, metadata !697, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi33ELb1EE5rangeEii", metadata !364, i32 914, metadata !1033, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 914} ; [ DW_TAG_subprogram ]
!1033 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1034, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1034 = metadata !{metadata !1030, metadata !838, metadata !378, metadata !378}
!1035 = metadata !{i32 786478, i32 0, metadata !697, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi33ELb1EE5rangeEv", metadata !364, i32 938, metadata !1036, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 938} ; [ DW_TAG_subprogram ]
!1036 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1037, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1037 = metadata !{metadata !1030, metadata !714}
!1038 = metadata !{i32 786478, i32 0, metadata !697, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi33ELb1EE5rangeEv", metadata !364, i32 942, metadata !1039, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 942} ; [ DW_TAG_subprogram ]
!1039 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1040, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1040 = metadata !{metadata !1030, metadata !838}
!1041 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi33ELb1EEclEii", metadata !364, i32 946, metadata !1028, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 946} ; [ DW_TAG_subprogram ]
!1042 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi33ELb1EEclEii", metadata !364, i32 950, metadata !1033, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 950} ; [ DW_TAG_subprogram ]
!1043 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi33ELb1EEixEi", metadata !364, i32 988, metadata !1044, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 988} ; [ DW_TAG_subprogram ]
!1044 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1045, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1045 = metadata !{metadata !1046, metadata !714, metadata !378}
!1046 = metadata !{i32 786434, null, metadata !"ap_bit_ref<33, true>", metadata !1047, i32 772, i64 128, i64 64, i32 0, i32 0, null, metadata !1048, i32 0, null, metadata !1031} ; [ DW_TAG_class_type ]
!1047 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_int_ref.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!1048 = metadata !{metadata !1049, metadata !1052, metadata !1053, metadata !1059, metadata !1063, metadata !1068, metadata !1072, metadata !1073, metadata !1077, metadata !1080, metadata !1083, metadata !1086, metadata !1089, metadata !1092, metadata !1095, metadata !1098, metadata !1101, metadata !1104, metadata !1107, metadata !1110, metadata !1113, metadata !1116, metadata !1119, metadata !1122, metadata !1123, metadata !1126, metadata !1127, metadata !1130}
!1049 = metadata !{i32 786445, metadata !1046, metadata !"d_bv", metadata !1047, i32 777, i64 64, i64 64, i64 0, i32 0, metadata !1050} ; [ DW_TAG_member ]
!1050 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1051} ; [ DW_TAG_reference_type ]
!1051 = metadata !{i32 786454, metadata !1046, metadata !"ref_type", metadata !1047, i32 776, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_typedef ]
!1052 = metadata !{i32 786445, metadata !1046, metadata !"d_index", metadata !1047, i32 778, i64 32, i64 32, i64 64, i32 0, metadata !378} ; [ DW_TAG_member ]
!1053 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !1047, i32 782, metadata !1054, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 782} ; [ DW_TAG_subprogram ]
!1054 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1055, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1055 = metadata !{null, metadata !1056, metadata !1057}
!1056 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1046} ; [ DW_TAG_pointer_type ]
!1057 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1058} ; [ DW_TAG_reference_type ]
!1058 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1046} ; [ DW_TAG_const_type ]
!1059 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !1047, i32 785, metadata !1060, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 785} ; [ DW_TAG_subprogram ]
!1060 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1061, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1061 = metadata !{null, metadata !1056, metadata !1062, metadata !378}
!1062 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1051} ; [ DW_TAG_pointer_type ]
!1063 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !1047, i32 787, metadata !1064, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 787} ; [ DW_TAG_subprogram ]
!1064 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1065, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1065 = metadata !{null, metadata !1056, metadata !1066, metadata !378}
!1066 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1067} ; [ DW_TAG_pointer_type ]
!1067 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1051} ; [ DW_TAG_const_type ]
!1068 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi33ELb1EEcvbEv", metadata !1047, i32 790, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 790} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1070 = metadata !{metadata !247, metadata !1071}
!1071 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1058} ; [ DW_TAG_pointer_type ]
!1072 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi33ELb1EE7to_boolEv", metadata !1047, i32 791, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 791} ; [ DW_TAG_subprogram ]
!1073 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEb", metadata !1047, i32 809, metadata !1074, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 809} ; [ DW_TAG_subprogram ]
!1074 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1075, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1075 = metadata !{metadata !1076, metadata !1056, metadata !247}
!1076 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1046} ; [ DW_TAG_reference_type ]
!1077 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEc", metadata !1047, i32 810, metadata !1078, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 810} ; [ DW_TAG_subprogram ]
!1078 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1079, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1079 = metadata !{metadata !1076, metadata !1056, metadata !278}
!1080 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEa", metadata !1047, i32 811, metadata !1081, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 811} ; [ DW_TAG_subprogram ]
!1081 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1082, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1082 = metadata !{metadata !1076, metadata !1056, metadata !408}
!1083 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEh", metadata !1047, i32 812, metadata !1084, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 812} ; [ DW_TAG_subprogram ]
!1084 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1085, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1085 = metadata !{metadata !1076, metadata !1056, metadata !413}
!1086 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEs", metadata !1047, i32 813, metadata !1087, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 813} ; [ DW_TAG_subprogram ]
!1087 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1088 = metadata !{metadata !1076, metadata !1056, metadata !418}
!1089 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEt", metadata !1047, i32 814, metadata !1090, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 814} ; [ DW_TAG_subprogram ]
!1090 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1091, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1091 = metadata !{metadata !1076, metadata !1056, metadata !423}
!1092 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEi", metadata !1047, i32 815, metadata !1093, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 815} ; [ DW_TAG_subprogram ]
!1093 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1094, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1094 = metadata !{metadata !1076, metadata !1056, metadata !378}
!1095 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEj", metadata !1047, i32 816, metadata !1096, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 816} ; [ DW_TAG_subprogram ]
!1096 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1097, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1097 = metadata !{metadata !1076, metadata !1056, metadata !432}
!1098 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEl", metadata !1047, i32 817, metadata !1099, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 817} ; [ DW_TAG_subprogram ]
!1099 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1100 = metadata !{metadata !1076, metadata !1056, metadata !437}
!1101 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEm", metadata !1047, i32 818, metadata !1102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 818} ; [ DW_TAG_subprogram ]
!1102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1103 = metadata !{metadata !1076, metadata !1056, metadata !442}
!1104 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEx", metadata !1047, i32 819, metadata !1105, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 819} ; [ DW_TAG_subprogram ]
!1105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1106 = metadata !{metadata !1076, metadata !1056, metadata !447}
!1107 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEy", metadata !1047, i32 820, metadata !1108, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 820} ; [ DW_TAG_subprogram ]
!1108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1109 = metadata !{metadata !1076, metadata !1056, metadata !453}
!1110 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEDh", metadata !1047, i32 831, metadata !1111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 831} ; [ DW_TAG_subprogram ]
!1111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1112 = metadata !{metadata !1076, metadata !1056, metadata !458}
!1113 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEf", metadata !1047, i32 832, metadata !1114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 832} ; [ DW_TAG_subprogram ]
!1114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1115 = metadata !{metadata !1076, metadata !1056, metadata !463}
!1116 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSEd", metadata !1047, i32 833, metadata !1117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 833} ; [ DW_TAG_subprogram ]
!1117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1118 = metadata !{metadata !1076, metadata !1056, metadata !467}
!1119 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi33ELb1EEaSERKS0_", metadata !1047, i32 850, metadata !1120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 850} ; [ DW_TAG_subprogram ]
!1120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1121 = metadata !{metadata !1076, metadata !1056, metadata !1057}
!1122 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi33ELb1EE3getEv", metadata !1047, i32 970, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 970} ; [ DW_TAG_subprogram ]
!1123 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi33ELb1EE3getEv", metadata !1047, i32 972, metadata !1124, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 972} ; [ DW_TAG_subprogram ]
!1124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1125 = metadata !{metadata !247, metadata !1056}
!1126 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi33ELb1EEcoEv", metadata !1047, i32 979, metadata !1069, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 979} ; [ DW_TAG_subprogram ]
!1127 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi33ELb1EE6lengthEv", metadata !1047, i32 984, metadata !1128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 984} ; [ DW_TAG_subprogram ]
!1128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1129 = metadata !{metadata !378, metadata !1071}
!1130 = metadata !{i32 786478, i32 0, metadata !1046, metadata !"to_string", metadata !"to_string", metadata !"_ZNK10ap_bit_refILi33ELb1EE9to_stringEv", metadata !1047, i32 990, metadata !1131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 990} ; [ DW_TAG_subprogram ]
!1131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1132 = metadata !{metadata !676, metadata !1071}
!1133 = metadata !{i32 786478, i32 0, metadata !697, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi33ELb1EEixEi", metadata !364, i32 1004, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1004} ; [ DW_TAG_subprogram ]
!1134 = metadata !{i32 786478, i32 0, metadata !697, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi33ELb1EE3bitEi", metadata !364, i32 1017, metadata !1044, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1017} ; [ DW_TAG_subprogram ]
!1135 = metadata !{i32 786478, i32 0, metadata !697, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi33ELb1EE3bitEi", metadata !364, i32 1032, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1032} ; [ DW_TAG_subprogram ]
!1136 = metadata !{i32 786478, i32 0, metadata !697, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi33ELb1EE17countLeadingZerosEv", metadata !364, i32 1055, metadata !1137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1055} ; [ DW_TAG_subprogram ]
!1137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1138 = metadata !{metadata !378, metadata !714}
!1139 = metadata !{i32 786478, i32 0, metadata !697, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1EE10and_reduceEv", metadata !364, i32 1275, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1275} ; [ DW_TAG_subprogram ]
!1140 = metadata !{i32 786478, i32 0, metadata !697, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1EE11nand_reduceEv", metadata !364, i32 1276, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1276} ; [ DW_TAG_subprogram ]
!1141 = metadata !{i32 786478, i32 0, metadata !697, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1EE9or_reduceEv", metadata !364, i32 1277, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1277} ; [ DW_TAG_subprogram ]
!1142 = metadata !{i32 786478, i32 0, metadata !697, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1EE10nor_reduceEv", metadata !364, i32 1278, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1278} ; [ DW_TAG_subprogram ]
!1143 = metadata !{i32 786478, i32 0, metadata !697, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1EE10xor_reduceEv", metadata !364, i32 1279, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1279} ; [ DW_TAG_subprogram ]
!1144 = metadata !{i32 786478, i32 0, metadata !697, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi33ELb1EE11xnor_reduceEv", metadata !364, i32 1280, metadata !840, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1280} ; [ DW_TAG_subprogram ]
!1145 = metadata !{i32 786478, i32 0, metadata !697, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi33ELb1EE9to_stringEab", metadata !364, i32 1295, metadata !1146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1295} ; [ DW_TAG_subprogram ]
!1146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1147 = metadata !{metadata !676, metadata !838, metadata !408, metadata !247}
!1148 = metadata !{metadata !1149, metadata !1150}
!1149 = metadata !{i32 786480, null, metadata !"_SC_W2", metadata !378, i64 33, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1150 = metadata !{i32 786480, null, metadata !"_SC_S2", metadata !247, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1151 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint<4, false>", metadata !"sc_uint<4, false>", metadata !"", metadata !360, i32 284, metadata !1152, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1154, i32 0, metadata !233, i32 284} ; [ DW_TAG_subprogram ]
!1152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1153 = metadata !{null, metadata !680, metadata !387}
!1154 = metadata !{metadata !1155, metadata !1156}
!1155 = metadata !{i32 786480, null, metadata !"_SC_W2", metadata !378, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1156 = metadata !{i32 786480, null, metadata !"_SC_S2", metadata !247, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1157 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint<false>", metadata !"sc_uint<false>", metadata !"", metadata !360, i32 287, metadata !1158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1160, i32 0, metadata !233, i32 287} ; [ DW_TAG_subprogram ]
!1158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1159 = metadata !{null, metadata !680, metadata !488}
!1160 = metadata !{metadata !1156}
!1161 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint<4>", metadata !"sc_uint<4>", metadata !"", metadata !360, i32 309, metadata !1162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1166, i32 0, metadata !233, i32 309} ; [ DW_TAG_subprogram ]
!1162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1163 = metadata !{null, metadata !680, metadata !1164}
!1164 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1165} ; [ DW_TAG_reference_type ]
!1165 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_const_type ]
!1166 = metadata !{metadata !1155}
!1167 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 338, metadata !1168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 338} ; [ DW_TAG_subprogram ]
!1168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1169 = metadata !{null, metadata !680, metadata !247}
!1170 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 339, metadata !1171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 339} ; [ DW_TAG_subprogram ]
!1171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1172 = metadata !{null, metadata !680, metadata !408}
!1173 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 340, metadata !1174, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 340} ; [ DW_TAG_subprogram ]
!1174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1175 = metadata !{null, metadata !680, metadata !413}
!1176 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 341, metadata !1177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 341} ; [ DW_TAG_subprogram ]
!1177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1178 = metadata !{null, metadata !680, metadata !418}
!1179 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 342, metadata !1180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 342} ; [ DW_TAG_subprogram ]
!1180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1181 = metadata !{null, metadata !680, metadata !423}
!1182 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 343, metadata !1183, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 343} ; [ DW_TAG_subprogram ]
!1183 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1184, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1184 = metadata !{null, metadata !680, metadata !378}
!1185 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 344, metadata !1186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 344} ; [ DW_TAG_subprogram ]
!1186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1187 = metadata !{null, metadata !680, metadata !432}
!1188 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 345, metadata !1189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 345} ; [ DW_TAG_subprogram ]
!1189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1190 = metadata !{null, metadata !680, metadata !437}
!1191 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 346, metadata !1192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 346} ; [ DW_TAG_subprogram ]
!1192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1193 = metadata !{null, metadata !680, metadata !442}
!1194 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 347, metadata !1195, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 347} ; [ DW_TAG_subprogram ]
!1195 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1196 = metadata !{null, metadata !680, metadata !447}
!1197 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 348, metadata !1198, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 348} ; [ DW_TAG_subprogram ]
!1198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1199 = metadata !{null, metadata !680, metadata !453}
!1200 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 349, metadata !1201, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 349} ; [ DW_TAG_subprogram ]
!1201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1202 = metadata !{null, metadata !680, metadata !467}
!1203 = metadata !{i32 786478, i32 0, metadata !357, metadata !"sc_uint", metadata !"sc_uint", metadata !"", metadata !360, i32 350, metadata !1204, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 350} ; [ DW_TAG_subprogram ]
!1204 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1205, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1205 = metadata !{null, metadata !680, metadata !276}
!1206 = metadata !{i32 786478, i32 0, metadata !357, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7_ap_sc_5sc_dt7sc_uintILi4EEaSERKS2_", metadata !360, i32 364, metadata !1207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 364} ; [ DW_TAG_subprogram ]
!1207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1208 = metadata !{null, metadata !1209, metadata !1164}
!1209 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !356} ; [ DW_TAG_pointer_type ]
!1210 = metadata !{i32 786478, i32 0, metadata !357, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7_ap_sc_5sc_dt7sc_uintILi4EEaSERVKS2_", metadata !360, i32 367, metadata !1211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 367} ; [ DW_TAG_subprogram ]
!1211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1212 = metadata !{null, metadata !1209, metadata !1213}
!1213 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1214} ; [ DW_TAG_reference_type ]
!1214 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_const_type ]
!1215 = metadata !{i32 786478, i32 0, metadata !357, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt7sc_uintILi4EEaSERVKS2_", metadata !360, i32 373, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 373} ; [ DW_TAG_subprogram ]
!1216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1217 = metadata !{metadata !1218, metadata !680, metadata !1213}
!1218 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_reference_type ]
!1219 = metadata !{i32 786478, i32 0, metadata !357, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt7sc_uintILi4EEaSERKS2_", metadata !360, i32 377, metadata !1220, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 377} ; [ DW_TAG_subprogram ]
!1220 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1221 = metadata !{metadata !1218, metadata !680, metadata !1164}
!1222 = metadata !{i32 786478, i32 0, metadata !357, metadata !"~sc_uint", metadata !"~sc_uint", metadata !"", metadata !360, i32 269, metadata !678, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !233, i32 269} ; [ DW_TAG_subprogram ]
!1223 = metadata !{metadata !1224}
!1224 = metadata !{i32 786480, null, metadata !"_SC_W", metadata !378, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1225 = metadata !{i32 786478, i32 0, metadata !352, metadata !"sc_signal_in_if", metadata !"sc_signal_in_if", metadata !"", metadata !220, i32 176, metadata !1226, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 176} ; [ DW_TAG_subprogram ]
!1226 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1227, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1227 = metadata !{null, metadata !1228}
!1228 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !352} ; [ DW_TAG_pointer_type ]
!1229 = metadata !{i32 786478, i32 0, metadata !352, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt7sc_uintILi4EEEE4readEv", metadata !220, i32 180, metadata !1230, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 180} ; [ DW_TAG_subprogram ]
!1230 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1231 = metadata !{metadata !357, metadata !1228}
!1232 = metadata !{i32 786478, i32 0, metadata !352, metadata !"read", metadata !"read", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt7sc_uintILi4EEEE4readEv", metadata !220, i32 181, metadata !1233, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 181} ; [ DW_TAG_subprogram ]
!1233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1234 = metadata !{metadata !357, metadata !1235}
!1235 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1236} ; [ DW_TAG_pointer_type ]
!1236 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !352} ; [ DW_TAG_const_type ]
!1237 = metadata !{i32 786478, i32 0, metadata !352, metadata !"operator sc_uint", metadata !"operator sc_uint", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt7sc_uintILi4EEEEcvKS4_Ev", metadata !220, i32 187, metadata !1238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 187} ; [ DW_TAG_subprogram ]
!1238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1239 = metadata !{metadata !1165, metadata !1228}
!1240 = metadata !{i32 786478, i32 0, metadata !352, metadata !"operator sc_uint", metadata !"operator sc_uint", metadata !"_ZNK7_ap_sc_7sc_core15sc_signal_in_ifINS_5sc_dt7sc_uintILi4EEEEcvKS4_Ev", metadata !220, i32 188, metadata !1241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 188} ; [ DW_TAG_subprogram ]
!1241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1242 = metadata !{metadata !1165, metadata !1235}
!1243 = metadata !{metadata !1244}
!1244 = metadata !{i32 786479, null, metadata !"T", metadata !357, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1245 = metadata !{i32 786478, i32 0, metadata !349, metadata !"sc_signal_inout_if", metadata !"sc_signal_inout_if", metadata !"", metadata !220, i32 197, metadata !1246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 197} ; [ DW_TAG_subprogram ]
!1246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1247 = metadata !{null, metadata !1248}
!1248 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !349} ; [ DW_TAG_pointer_type ]
!1249 = metadata !{i32 786478, i32 0, metadata !349, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_7sc_core18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEaSERKS5_", metadata !220, i32 199, metadata !1250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 199} ; [ DW_TAG_subprogram ]
!1250 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1251, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1251 = metadata !{metadata !1252, metadata !1248, metadata !1253}
!1252 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_reference_type ]
!1253 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1254} ; [ DW_TAG_reference_type ]
!1254 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_const_type ]
!1255 = metadata !{i32 786478, i32 0, metadata !349, metadata !"operator=<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !"operator=<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !"_ZN7_ap_sc_7sc_core18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEaSIS5_EERS5_RKT_", metadata !220, i32 211, metadata !1250, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1256, i32 0, metadata !233, i32 211} ; [ DW_TAG_subprogram ]
!1256 = metadata !{metadata !1257}
!1257 = metadata !{i32 786479, null, metadata !"_T2", metadata !349, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1258 = metadata !{i32 786478, i32 0, metadata !345, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !220, i32 272, metadata !1259, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 272} ; [ DW_TAG_subprogram ]
!1259 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1260, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1260 = metadata !{null, metadata !1261}
!1261 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !345} ; [ DW_TAG_pointer_type ]
!1262 = metadata !{i32 786478, i32 0, metadata !345, metadata !"sc_port_b", metadata !"sc_port_b", metadata !"", metadata !220, i32 273, metadata !1263, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !233, i32 273} ; [ DW_TAG_subprogram ]
!1263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1264 = metadata !{null, metadata !1261, metadata !276}
!1265 = metadata !{i32 786478, i32 0, metadata !345, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEE4bindERS6_", metadata !220, i32 277, metadata !1266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 277} ; [ DW_TAG_subprogram ]
!1266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1267 = metadata !{null, metadata !1261, metadata !1252}
!1268 = metadata !{i32 786478, i32 0, metadata !345, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEEclERS6_", metadata !220, i32 280, metadata !1266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 280} ; [ DW_TAG_subprogram ]
!1269 = metadata !{i32 786478, i32 0, metadata !345, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEE4bindERNS0_15sc_prim_channelE", metadata !220, i32 281, metadata !1270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 281} ; [ DW_TAG_subprogram ]
!1270 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1271 = metadata !{null, metadata !1261, metadata !287}
!1272 = metadata !{i32 786478, i32 0, metadata !345, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEEclERNS0_15sc_prim_channelE", metadata !220, i32 284, metadata !1270, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 284} ; [ DW_TAG_subprogram ]
!1273 = metadata !{i32 786478, i32 0, metadata !345, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEE4bindERS7_", metadata !220, i32 285, metadata !1274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 285} ; [ DW_TAG_subprogram ]
!1274 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1275, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1275 = metadata !{null, metadata !1261, metadata !1276}
!1276 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !345} ; [ DW_TAG_reference_type ]
!1277 = metadata !{i32 786478, i32 0, metadata !345, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEEclERS7_", metadata !220, i32 286, metadata !1274, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 286} ; [ DW_TAG_subprogram ]
!1278 = metadata !{i32 786478, i32 0, metadata !345, metadata !"operator->", metadata !"operator->", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEEptEv", metadata !220, i32 288, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 288} ; [ DW_TAG_subprogram ]
!1279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1280 = metadata !{metadata !1281, metadata !1261}
!1281 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !349} ; [ DW_TAG_pointer_type ]
!1282 = metadata !{metadata !1283}
!1283 = metadata !{i32 786479, null, metadata !"IF", metadata !349, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1284 = metadata !{i32 786478, i32 0, metadata !342, metadata !"sc_inout", metadata !"sc_inout", metadata !"", metadata !220, i32 413, metadata !1285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 413} ; [ DW_TAG_subprogram ]
!1285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1286 = metadata !{null, metadata !1287}
!1287 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !342} ; [ DW_TAG_pointer_type ]
!1288 = metadata !{i32 786478, i32 0, metadata !342, metadata !"sc_inout", metadata !"sc_inout", metadata !"", metadata !220, i32 414, metadata !1289, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !233, i32 414} ; [ DW_TAG_subprogram ]
!1289 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1290, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1290 = metadata !{null, metadata !1287, metadata !276}
!1291 = metadata !{i32 786478, i32 0, metadata !342, metadata !"write", metadata !"write", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt7sc_uintILi4EEEE5writeERKS4_", metadata !220, i32 417, metadata !1292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 417} ; [ DW_TAG_subprogram ]
!1292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1293 = metadata !{null, metadata !1287, metadata !1164}
!1294 = metadata !{i32 786478, i32 0, metadata !342, metadata !"operator=<_ap_sc_::sc_core::sc_inout<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !"operator=<_ap_sc_::sc_core::sc_inout<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt7sc_uintILi4EEEEaSIS5_EEvRKT_", metadata !220, i32 419, metadata !1295, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1299, i32 0, metadata !233, i32 419} ; [ DW_TAG_subprogram ]
!1295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1296 = metadata !{null, metadata !1287, metadata !1297}
!1297 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1298} ; [ DW_TAG_reference_type ]
!1298 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_const_type ]
!1299 = metadata !{metadata !1300}
!1300 = metadata !{i32 786479, null, metadata !"_T2", metadata !342, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1301 = metadata !{i32 786478, i32 0, metadata !342, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt7sc_uintILi4EEEE4readEv", metadata !220, i32 421, metadata !1302, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 421} ; [ DW_TAG_subprogram ]
!1302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1303 = metadata !{metadata !1304, metadata !1287}
!1304 = metadata !{i32 786454, metadata !342, metadata !"data_type", metadata !220, i32 411, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_typedef ]
!1305 = metadata !{i32 786478, i32 0, metadata !342, metadata !"operator const struct _ap_sc_::sc_dt::sc_uint<4> &", metadata !"operator const struct _ap_sc_::sc_dt::sc_uint<4> &", metadata !"_ZNK7_ap_sc_7sc_core8sc_inoutINS_5sc_dt7sc_uintILi4EEEEcvRKS4_Ev", metadata !220, i32 422, metadata !1306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 422} ; [ DW_TAG_subprogram ]
!1306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1307 = metadata !{metadata !1308, metadata !1310}
!1308 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1309} ; [ DW_TAG_reference_type ]
!1309 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1304} ; [ DW_TAG_const_type ]
!1310 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1298} ; [ DW_TAG_pointer_type ]
!1311 = metadata !{i32 786478, i32 0, metadata !342, metadata !"operator sc_uint", metadata !"operator sc_uint", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt7sc_uintILi4EEEEcvKS4_Ev", metadata !220, i32 425, metadata !1312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 425} ; [ DW_TAG_subprogram ]
!1312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1313 = metadata !{metadata !1309, metadata !1287}
!1314 = metadata !{metadata !1315}
!1315 = metadata !{i32 786479, null, metadata !"_T", metadata !357, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1316 = metadata !{i32 786478, i32 0, metadata !339, metadata !"sc_out", metadata !"sc_out", metadata !"", metadata !220, i32 433, metadata !1317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 433} ; [ DW_TAG_subprogram ]
!1317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1318 = metadata !{null, metadata !1319}
!1319 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !339} ; [ DW_TAG_pointer_type ]
!1320 = metadata !{i32 786478, i32 0, metadata !339, metadata !"sc_out", metadata !"sc_out", metadata !"", metadata !220, i32 434, metadata !1321, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !233, i32 434} ; [ DW_TAG_subprogram ]
!1321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1322 = metadata !{null, metadata !1319, metadata !276}
!1323 = metadata !{i32 786478, i32 0, metadata !339, metadata !"operator=<_ap_sc_::sc_core::sc_out<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !"operator=<_ap_sc_::sc_core::sc_out<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !"_ZN7_ap_sc_7sc_core6sc_outINS_5sc_dt7sc_uintILi4EEEEaSIS5_EEvRKT_", metadata !220, i32 436, metadata !1324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1328, i32 0, metadata !233, i32 436} ; [ DW_TAG_subprogram ]
!1324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1325 = metadata !{null, metadata !1319, metadata !1326}
!1326 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1327} ; [ DW_TAG_reference_type ]
!1327 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !339} ; [ DW_TAG_const_type ]
!1328 = metadata !{metadata !1329}
!1329 = metadata !{i32 786479, null, metadata !"_T2", metadata !339, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1330 = metadata !{i32 786445, metadata !214, metadata !"count", metadata !210, i32 11, i64 8, i64 8, i64 32, i32 0, metadata !357} ; [ DW_TAG_member ]
!1331 = metadata !{i32 786478, i32 0, metadata !214, metadata !"increment", metadata !"increment", metadata !"_ZN13first_counter9incrementEv", metadata !210, i32 12, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 12} ; [ DW_TAG_subprogram ]
!1332 = metadata !{i32 786478, i32 0, metadata !214, metadata !"print", metadata !"print", metadata !"_ZN13first_counter5printEv", metadata !210, i32 30, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 30} ; [ DW_TAG_subprogram ]
!1333 = metadata !{i32 786478, i32 0, metadata !214, metadata !"first_counter", metadata !"first_counter", metadata !"", metadata !210, i32 38, metadata !1334, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 38} ; [ DW_TAG_subprogram ]
!1334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1335 = metadata !{null, metadata !213, metadata !1336}
!1336 = metadata !{i32 786434, metadata !218, metadata !"sc_module_name", metadata !220, i32 581, i64 8, i64 8, i32 0, i32 0, null, metadata !1337, i32 0, null, null} ; [ DW_TAG_class_type ]
!1337 = metadata !{metadata !1338, metadata !1342, metadata !1347}
!1338 = metadata !{i32 786478, i32 0, metadata !1336, metadata !"sc_module_name", metadata !"sc_module_name", metadata !"", metadata !220, i32 584, metadata !1339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 584} ; [ DW_TAG_subprogram ]
!1339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1340 = metadata !{null, metadata !1341, metadata !276}
!1341 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1336} ; [ DW_TAG_pointer_type ]
!1342 = metadata !{i32 786478, i32 0, metadata !1336, metadata !"sc_module_name", metadata !"sc_module_name", metadata !"", metadata !220, i32 585, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 585} ; [ DW_TAG_subprogram ]
!1343 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1344 = metadata !{null, metadata !1341, metadata !1345}
!1345 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1346} ; [ DW_TAG_reference_type ]
!1346 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1336} ; [ DW_TAG_const_type ]
!1347 = metadata !{i32 786478, i32 0, metadata !1336, metadata !"~sc_module_name", metadata !"~sc_module_name", metadata !"", metadata !220, i32 581, metadata !1348, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !233, i32 581} ; [ DW_TAG_subprogram ]
!1348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1349 = metadata !{null, metadata !1341}
!1350 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ]
!1351 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1352} ; [ DW_TAG_pointer_type ]
!1352 = metadata !{i32 786438, null, metadata !"first_counter", metadata !210, i32 6, i64 8, i64 8, i32 0, i32 0, null, metadata !1353, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1353 = metadata !{metadata !1354}
!1354 = metadata !{i32 786438, metadata !218, metadata !"sc_in<bool>", metadata !220, i32 357, i64 8, i64 8, i32 0, i32 0, null, metadata !1355, i32 0, null, metadata !267} ; [ DW_TAG_class_field_type ]
!1355 = metadata !{metadata !1356}
!1356 = metadata !{i32 786438, metadata !218, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >", metadata !220, i32 268, i64 8, i64 8, i32 0, i32 0, null, metadata !1357, i32 0, null, metadata !300} ; [ DW_TAG_class_field_type ]
!1357 = metadata !{metadata !1358}
!1358 = metadata !{i32 786438, metadata !218, metadata !"sc_signal_in_if<bool>", metadata !220, i32 172, i64 8, i64 8, i32 0, i32 0, null, metadata !1359, i32 0, null, metadata !267} ; [ DW_TAG_class_field_type ]
!1359 = metadata !{metadata !245}
!1360 = metadata !{i32 12, i32 8, metadata !209, null}
!1361 = metadata !{i32 790531, metadata !208, metadata !"first_counter.reset.m_if.Val", null, i32 12, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1362 = metadata !{i32 790531, metadata !208, metadata !"first_counter.enable.m_if.Val", null, i32 12, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1363 = metadata !{i32 790531, metadata !208, metadata !"first_counter.out_counter.m_if.Val.V", null, i32 12, metadata !1364, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1364 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1365} ; [ DW_TAG_pointer_type ]
!1365 = metadata !{i32 786438, null, metadata !"first_counter", metadata !210, i32 6, i64 4, i64 8, i32 0, i32 0, null, metadata !1366, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1366 = metadata !{metadata !1367}
!1367 = metadata !{i32 786438, metadata !218, metadata !"sc_out<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 430, i64 4, i64 8, i32 0, i32 0, null, metadata !1368, i32 0, null, metadata !1314} ; [ DW_TAG_class_field_type ]
!1368 = metadata !{metadata !1369}
!1369 = metadata !{i32 786438, metadata !218, metadata !"sc_inout<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 409, i64 4, i64 8, i32 0, i32 0, null, metadata !1370, i32 0, null, metadata !1314} ; [ DW_TAG_class_field_type ]
!1370 = metadata !{metadata !1371}
!1371 = metadata !{i32 786438, metadata !218, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >", metadata !220, i32 268, i64 4, i64 8, i32 0, i32 0, null, metadata !1372, i32 0, null, metadata !1282} ; [ DW_TAG_class_field_type ]
!1372 = metadata !{metadata !1373}
!1373 = metadata !{i32 786438, metadata !218, metadata !"sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 193, i64 4, i64 8, i32 0, i32 0, null, metadata !1374, i32 0, null, metadata !1243} ; [ DW_TAG_class_field_type ]
!1374 = metadata !{metadata !1375}
!1375 = metadata !{i32 786438, metadata !218, metadata !"sc_signal_in_if<_ap_sc_::sc_dt::sc_uint<4> >", metadata !220, i32 172, i64 4, i64 8, i32 0, i32 0, null, metadata !1376, i32 0, null, metadata !1243} ; [ DW_TAG_class_field_type ]
!1376 = metadata !{metadata !1377}
!1377 = metadata !{i32 786438, metadata !358, metadata !"sc_uint<4>", metadata !360, i32 269, i64 4, i64 8, i32 0, i32 0, null, metadata !1378, i32 0, null, metadata !1223} ; [ DW_TAG_class_field_type ]
!1378 = metadata !{metadata !1379}
!1379 = metadata !{i32 786438, null, metadata !"ap_int_base<4, false>", metadata !364, i32 150, i64 4, i64 8, i32 0, i32 0, null, metadata !1380, i32 0, null, metadata !645} ; [ DW_TAG_class_field_type ]
!1380 = metadata !{metadata !1381}
!1381 = metadata !{i32 786438, null, metadata !"ssdm_int<4 + 1024 * 0, false>", metadata !368, i32 10, i64 4, i64 8, i32 0, i32 0, null, metadata !1382, i32 0, null, metadata !376} ; [ DW_TAG_class_field_type ]
!1382 = metadata !{metadata !370}
!1383 = metadata !{i32 790531, metadata !208, metadata !"first_counter.count.V", null, i32 12, metadata !1384, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1384 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1385} ; [ DW_TAG_pointer_type ]
!1385 = metadata !{i32 786438, null, metadata !"first_counter", metadata !210, i32 6, i64 4, i64 8, i32 0, i32 0, null, metadata !1376, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1386 = metadata !{i32 13, i32 46, metadata !1387, null}
!1387 = metadata !{i32 786443, metadata !209, i32 13, i32 1, metadata !210, i32 22} ; [ DW_TAG_lexical_block ]
!1388 = metadata !{i32 14, i32 4, metadata !1387, null}
!1389 = metadata !{i32 15, i32 4, metadata !1387, null}
!1390 = metadata !{i32 16, i32 4, metadata !1387, null}
!1391 = metadata !{i32 17, i32 4, metadata !1387, null}
!1392 = metadata !{i32 786688, metadata !1387, metadata !"_ssdm_reset_v", metadata !210, i32 17, metadata !378, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1393 = metadata !{i32 23, i32 46, metadata !1387, null}
!1394 = metadata !{i32 23, i32 76, metadata !1387, null}
!1395 = metadata !{i32 808, i32 19, metadata !1396, metadata !1401}
!1396 = metadata !{i32 786443, metadata !1397, i32 808, i32 17, metadata !220, i32 45} ; [ DW_TAG_lexical_block ]
!1397 = metadata !{i32 786443, metadata !1398, i32 807, i32 58, metadata !220, i32 44} ; [ DW_TAG_lexical_block ]
!1398 = metadata !{i32 786478, i32 0, metadata !218, metadata !"wait", metadata !"wait", metadata !"_ZN7_ap_sc_7sc_core4waitEi", metadata !220, i32 807, metadata !1399, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !233, i32 807} ; [ DW_TAG_subprogram ]
!1399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1400 = metadata !{null, metadata !378}
!1401 = metadata !{i32 18, i32 4, metadata !1402, null}
!1402 = metadata !{i32 786443, metadata !1387, i32 16, i32 1, metadata !210, i32 23} ; [ DW_TAG_lexical_block ]
!1403 = metadata !{i32 786689, metadata !1404, metadata !"P", metadata !1405, i32 16777382, metadata !1408, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1404 = metadata !{i32 786478, i32 0, metadata !1405, metadata !"_ssdm_op_READ<bool>", metadata !"_ssdm_op_READ<bool>", metadata !"_Z13_ssdm_op_READIbET_RVS0_", metadata !1405, i32 166, metadata !1406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1409, null, metadata !233, i32 166} ; [ DW_TAG_subprogram ]
!1405 = metadata !{i32 786473, metadata !"/home/shubham/Xilinx2018.3/Vivado/2018.3/common/technology/autopilot/ap_sysc/ap_sc_extras.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!1406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1407 = metadata !{metadata !247, metadata !1408}
!1408 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_reference_type ]
!1409 = metadata !{metadata !1410}
!1410 = metadata !{i32 786479, null, metadata !"T1", metadata !247, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1411 = metadata !{i32 166, i32 90, metadata !1404, metadata !1412}
!1412 = metadata !{i32 180, i32 66, metadata !1413, metadata !1415}
!1413 = metadata !{i32 786443, metadata !1414, i32 180, i32 56, metadata !220, i32 42} ; [ DW_TAG_lexical_block ]
!1414 = metadata !{i32 786478, i32 0, metadata !218, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core15sc_signal_in_ifIbE4readEv", metadata !220, i32 180, metadata !253, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !252, metadata !233, i32 180} ; [ DW_TAG_subprogram ]
!1415 = metadata !{i32 372, i32 68, metadata !1416, metadata !1418}
!1416 = metadata !{i32 786443, metadata !1417, i32 372, i32 59, metadata !220, i32 41} ; [ DW_TAG_lexical_block ]
!1417 = metadata !{i32 786478, i32 0, metadata !218, metadata !"read", metadata !"read", metadata !"_ZN7_ap_sc_7sc_core5sc_inIbE4readEv", metadata !220, i32 372, metadata !319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !318, metadata !233, i32 372} ; [ DW_TAG_subprogram ]
!1418 = metadata !{i32 24, i32 7, metadata !1402, null}
!1419 = metadata !{i32 166, i32 95, metadata !1420, metadata !1412}
!1420 = metadata !{i32 786443, metadata !1404, i32 166, i32 93, metadata !1405, i32 43} ; [ DW_TAG_lexical_block ]
!1421 = metadata !{i32 786688, metadata !1413, metadata !"tmp", metadata !220, i32 180, metadata !247, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1422 = metadata !{i32 217, i32 5, metadata !1423, metadata !1427}
!1423 = metadata !{i32 786443, metadata !1424, i32 216, i32 92, metadata !364, i32 37} ; [ DW_TAG_lexical_block ]
!1424 = metadata !{i32 786478, i32 0, null, metadata !"ap_int_base<4, false>", metadata !"ap_int_base<4, false>", metadata !"_ZN11ap_int_baseILi33ELb1EEC2ILi4ELb0EEERKS_IXT_EXT0_EE", metadata !364, i32 216, metadata !1425, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !389, null, metadata !233, i32 216} ; [ DW_TAG_subprogram ]
!1425 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1426, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1426 = metadata !{null, metadata !714, metadata !387}
!1427 = metadata !{i32 218, i32 3, metadata !1428, metadata !1429}
!1428 = metadata !{i32 786478, i32 0, null, metadata !"ap_int_base<4, false>", metadata !"ap_int_base<4, false>", metadata !"_ZN11ap_int_baseILi33ELb1EEC1ILi4ELb0EEERKS_IXT_EXT0_EE", metadata !364, i32 216, metadata !1425, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !389, null, metadata !233, i32 216} ; [ DW_TAG_subprogram ]
!1429 = metadata !{i32 1355, i32 0, metadata !1430, metadata !1706}
!1430 = metadata !{i32 786443, metadata !1431, i32 1355, i32 258, metadata !364, i32 32} ; [ DW_TAG_lexical_block ]
!1431 = metadata !{i32 786478, i32 0, metadata !364, metadata !"operator+<4, false, 32, true>", metadata !"operator+<4, false, 32, true>", metadata !"_ZplILi4ELb0ELi32ELb1EEN11ap_int_baseIXT_EXT0_EE5RTypeIXT1_EXT2_EE4plusERKS1_RKS0_IXT1_EXT2_EE", metadata !364, i32 1355, metadata !1432, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1705, null, metadata !233, i32 1355} ; [ DW_TAG_subprogram ]
!1432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1433 = metadata !{metadata !1434, metadata !387, metadata !1438}
!1434 = metadata !{i32 786454, metadata !1435, metadata !"plus", metadata !364, i32 193, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ]
!1435 = metadata !{i32 786434, metadata !363, metadata !"RType<32, true>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !1436} ; [ DW_TAG_class_type ]
!1436 = metadata !{metadata !1437, metadata !635}
!1437 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !378, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1438 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1439} ; [ DW_TAG_reference_type ]
!1439 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1440} ; [ DW_TAG_const_type ]
!1440 = metadata !{i32 786434, null, metadata !"ap_int_base<32, true>", metadata !364, i32 150, i64 32, i64 32, i32 0, i32 0, null, metadata !1441, i32 0, null, metadata !1673} ; [ DW_TAG_class_type ]
!1441 = metadata !{metadata !1442, metadata !1453, metadata !1457, metadata !1460, metadata !1466, metadata !1469, metadata !1472, metadata !1475, metadata !1478, metadata !1481, metadata !1484, metadata !1487, metadata !1490, metadata !1493, metadata !1496, metadata !1499, metadata !1502, metadata !1505, metadata !1508, metadata !1511, metadata !1514, metadata !1517, metadata !1521, metadata !1524, metadata !1527, metadata !1528, metadata !1532, metadata !1535, metadata !1538, metadata !1541, metadata !1544, metadata !1547, metadata !1550, metadata !1553, metadata !1556, metadata !1559, metadata !1562, metadata !1565, metadata !1568, metadata !1571, metadata !1576, metadata !1579, metadata !1582, metadata !1585, metadata !1588, metadata !1591, metadata !1594, metadata !1597, metadata !1600, metadata !1603, metadata !1606, metadata !1609, metadata !1612, metadata !1615, metadata !1618, metadata !1622, metadata !1623, metadata !1624, metadata !1625, metadata !1628, metadata !1629, metadata !1632, metadata !1635, metadata !1636, metadata !1639, metadata !1640, metadata !1641, metadata !1642, metadata !1643, metadata !1644, metadata !1645, metadata !1646, metadata !1647, metadata !1658, metadata !1659, metadata !1662, metadata !1667, metadata !1668, metadata !1669, metadata !1674, metadata !1677, metadata !1680, metadata !1683, metadata !1684, metadata !1685, metadata !1689, metadata !1690, metadata !1691, metadata !1692, metadata !1695, metadata !1696, metadata !1697, metadata !1698, metadata !1699, metadata !1700, metadata !1701, metadata !1704}
!1442 = metadata !{i32 786460, metadata !1440, null, metadata !364, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1443} ; [ DW_TAG_inheritance ]
!1443 = metadata !{i32 786434, null, metadata !"ssdm_int<32 + 1024 * 0, true>", metadata !368, i32 65, i64 32, i64 32, i32 0, i32 0, null, metadata !1444, i32 0, null, metadata !1451} ; [ DW_TAG_class_type ]
!1444 = metadata !{metadata !1445, metadata !1447}
!1445 = metadata !{i32 786445, metadata !1443, metadata !"V", metadata !368, i32 65, i64 32, i64 32, i64 0, i32 0, metadata !1446} ; [ DW_TAG_member ]
!1446 = metadata !{i32 786468, null, metadata !"int32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!1447 = metadata !{i32 786478, i32 0, metadata !1443, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !368, i32 65, metadata !1448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 65} ; [ DW_TAG_subprogram ]
!1448 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1449 = metadata !{null, metadata !1450}
!1450 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1443} ; [ DW_TAG_pointer_type ]
!1451 = metadata !{metadata !1452, metadata !710}
!1452 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !378, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1453 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 206, metadata !1454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 206} ; [ DW_TAG_subprogram ]
!1454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1455 = metadata !{null, metadata !1456}
!1456 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1440} ; [ DW_TAG_pointer_type ]
!1457 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base<32, true>", metadata !"ap_int_base<32, true>", metadata !"", metadata !364, i32 216, metadata !1458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1436, i32 0, metadata !233, i32 216} ; [ DW_TAG_subprogram ]
!1458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1459 = metadata !{null, metadata !1456, metadata !1438}
!1460 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base<32, true>", metadata !"ap_int_base<32, true>", metadata !"", metadata !364, i32 222, metadata !1461, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1436, i32 0, metadata !233, i32 222} ; [ DW_TAG_subprogram ]
!1461 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1462, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1462 = metadata !{null, metadata !1456, metadata !1463}
!1463 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1464} ; [ DW_TAG_reference_type ]
!1464 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1465} ; [ DW_TAG_const_type ]
!1465 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1440} ; [ DW_TAG_volatile_type ]
!1466 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 239, metadata !1467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 239} ; [ DW_TAG_subprogram ]
!1467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1468 = metadata !{null, metadata !1456, metadata !263}
!1469 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 240, metadata !1470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 240} ; [ DW_TAG_subprogram ]
!1470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1471 = metadata !{null, metadata !1456, metadata !277}
!1472 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 241, metadata !1473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 241} ; [ DW_TAG_subprogram ]
!1473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1474 = metadata !{null, metadata !1456, metadata !407}
!1475 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 242, metadata !1476, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 242} ; [ DW_TAG_subprogram ]
!1476 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1477, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1477 = metadata !{null, metadata !1456, metadata !412}
!1478 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 243, metadata !1479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 243} ; [ DW_TAG_subprogram ]
!1479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1480 = metadata !{null, metadata !1456, metadata !417}
!1481 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 244, metadata !1482, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 244} ; [ DW_TAG_subprogram ]
!1482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1483 = metadata !{null, metadata !1456, metadata !422}
!1484 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 245, metadata !1485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 245} ; [ DW_TAG_subprogram ]
!1485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1486 = metadata !{null, metadata !1456, metadata !427}
!1487 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 246, metadata !1488, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 246} ; [ DW_TAG_subprogram ]
!1488 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1489, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1489 = metadata !{null, metadata !1456, metadata !431}
!1490 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 247, metadata !1491, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 247} ; [ DW_TAG_subprogram ]
!1491 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1492, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1492 = metadata !{null, metadata !1456, metadata !436}
!1493 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 248, metadata !1494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 248} ; [ DW_TAG_subprogram ]
!1494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1495 = metadata !{null, metadata !1456, metadata !441}
!1496 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 249, metadata !1497, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 249} ; [ DW_TAG_subprogram ]
!1497 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1498 = metadata !{null, metadata !1456, metadata !446}
!1499 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 250, metadata !1500, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 250} ; [ DW_TAG_subprogram ]
!1500 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1501, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1501 = metadata !{null, metadata !1456, metadata !452}
!1502 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 255, metadata !1503, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 255} ; [ DW_TAG_subprogram ]
!1503 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1504, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1504 = metadata !{null, metadata !1456, metadata !458}
!1505 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 261, metadata !1506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 261} ; [ DW_TAG_subprogram ]
!1506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1507 = metadata !{null, metadata !1456, metadata !463}
!1508 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 309, metadata !1509, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 309} ; [ DW_TAG_subprogram ]
!1509 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1510, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1510 = metadata !{null, metadata !1456, metadata !467}
!1511 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 393, metadata !1512, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 393} ; [ DW_TAG_subprogram ]
!1512 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1513, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1513 = metadata !{null, metadata !1456, metadata !276}
!1514 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !364, i32 399, metadata !1515, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 399} ; [ DW_TAG_subprogram ]
!1515 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1516, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1516 = metadata !{null, metadata !1456, metadata !276, metadata !408}
!1517 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi32ELb1EE4readEv", metadata !364, i32 421, metadata !1518, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 421} ; [ DW_TAG_subprogram ]
!1518 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1519, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1519 = metadata !{metadata !1440, metadata !1520}
!1520 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1465} ; [ DW_TAG_pointer_type ]
!1521 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi32ELb1EE5writeERKS0_", metadata !364, i32 428, metadata !1522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 428} ; [ DW_TAG_subprogram ]
!1522 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1523, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1523 = metadata !{null, metadata !1520, metadata !1438}
!1524 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb1EEaSERVKS0_", metadata !364, i32 440, metadata !1525, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 440} ; [ DW_TAG_subprogram ]
!1525 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1526, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1526 = metadata !{null, metadata !1520, metadata !1463}
!1527 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi32ELb1EEaSERKS0_", metadata !364, i32 450, metadata !1522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 450} ; [ DW_TAG_subprogram ]
!1528 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSERVKS0_", metadata !364, i32 467, metadata !1529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 467} ; [ DW_TAG_subprogram ]
!1529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1530 = metadata !{metadata !1531, metadata !1456, metadata !1463}
!1531 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1440} ; [ DW_TAG_reference_type ]
!1532 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSERKS0_", metadata !364, i32 472, metadata !1533, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 472} ; [ DW_TAG_subprogram ]
!1533 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1534, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1534 = metadata !{metadata !1531, metadata !1456, metadata !1438}
!1535 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEb", metadata !364, i32 484, metadata !1536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 484} ; [ DW_TAG_subprogram ]
!1536 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1537, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1537 = metadata !{metadata !1531, metadata !1456, metadata !247}
!1538 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEc", metadata !364, i32 485, metadata !1539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 485} ; [ DW_TAG_subprogram ]
!1539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1540 = metadata !{metadata !1531, metadata !1456, metadata !278}
!1541 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEa", metadata !364, i32 486, metadata !1542, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 486} ; [ DW_TAG_subprogram ]
!1542 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1543, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1543 = metadata !{metadata !1531, metadata !1456, metadata !408}
!1544 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEh", metadata !364, i32 487, metadata !1545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 487} ; [ DW_TAG_subprogram ]
!1545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1546 = metadata !{metadata !1531, metadata !1456, metadata !413}
!1547 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEs", metadata !364, i32 488, metadata !1548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 488} ; [ DW_TAG_subprogram ]
!1548 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1549 = metadata !{metadata !1531, metadata !1456, metadata !418}
!1550 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEt", metadata !364, i32 489, metadata !1551, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 489} ; [ DW_TAG_subprogram ]
!1551 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1552, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1552 = metadata !{metadata !1531, metadata !1456, metadata !423}
!1553 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEi", metadata !364, i32 490, metadata !1554, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 490} ; [ DW_TAG_subprogram ]
!1554 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1555, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1555 = metadata !{metadata !1531, metadata !1456, metadata !378}
!1556 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEj", metadata !364, i32 491, metadata !1557, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 491} ; [ DW_TAG_subprogram ]
!1557 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1558 = metadata !{metadata !1531, metadata !1456, metadata !432}
!1559 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEl", metadata !364, i32 492, metadata !1560, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 492} ; [ DW_TAG_subprogram ]
!1560 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1561, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1561 = metadata !{metadata !1531, metadata !1456, metadata !437}
!1562 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEm", metadata !364, i32 493, metadata !1563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 493} ; [ DW_TAG_subprogram ]
!1563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1564 = metadata !{metadata !1531, metadata !1456, metadata !442}
!1565 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEx", metadata !364, i32 494, metadata !1566, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 494} ; [ DW_TAG_subprogram ]
!1566 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1567, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1567 = metadata !{metadata !1531, metadata !1456, metadata !447}
!1568 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi32ELb1EEaSEy", metadata !364, i32 495, metadata !1569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 495} ; [ DW_TAG_subprogram ]
!1569 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1570, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1570 = metadata !{metadata !1531, metadata !1456, metadata !453}
!1571 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi32ELb1EEcvxEv", metadata !364, i32 546, metadata !1572, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 546} ; [ DW_TAG_subprogram ]
!1572 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1573, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1573 = metadata !{metadata !1574, metadata !1575}
!1574 = metadata !{i32 786454, metadata !1440, metadata !"RetType", metadata !364, i32 160, i64 0, i64 0, i64 0, i32 0, metadata !835} ; [ DW_TAG_typedef ]
!1575 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1439} ; [ DW_TAG_pointer_type ]
!1576 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi32ELb1EE7to_boolEv", metadata !364, i32 551, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 551} ; [ DW_TAG_subprogram ]
!1577 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1578, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1578 = metadata !{metadata !247, metadata !1575}
!1579 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi32ELb1EE7to_charEv", metadata !364, i32 552, metadata !1580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 552} ; [ DW_TAG_subprogram ]
!1580 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1581 = metadata !{metadata !278, metadata !1575}
!1582 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_schar", metadata !"to_schar", metadata !"_ZNK11ap_int_baseILi32ELb1EE8to_scharEv", metadata !364, i32 553, metadata !1583, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 553} ; [ DW_TAG_subprogram ]
!1583 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1584, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1584 = metadata !{metadata !408, metadata !1575}
!1585 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi32ELb1EE8to_ucharEv", metadata !364, i32 554, metadata !1586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 554} ; [ DW_TAG_subprogram ]
!1586 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1587, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1587 = metadata !{metadata !413, metadata !1575}
!1588 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi32ELb1EE8to_shortEv", metadata !364, i32 555, metadata !1589, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 555} ; [ DW_TAG_subprogram ]
!1589 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1590, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1590 = metadata !{metadata !418, metadata !1575}
!1591 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi32ELb1EE9to_ushortEv", metadata !364, i32 556, metadata !1592, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 556} ; [ DW_TAG_subprogram ]
!1592 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1593, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1593 = metadata !{metadata !423, metadata !1575}
!1594 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi32ELb1EE6to_intEv", metadata !364, i32 557, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 557} ; [ DW_TAG_subprogram ]
!1595 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1596, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1596 = metadata !{metadata !378, metadata !1575}
!1597 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi32ELb1EE7to_uintEv", metadata !364, i32 558, metadata !1598, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 558} ; [ DW_TAG_subprogram ]
!1598 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1599, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1599 = metadata !{metadata !432, metadata !1575}
!1600 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi32ELb1EE7to_longEv", metadata !364, i32 559, metadata !1601, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 559} ; [ DW_TAG_subprogram ]
!1601 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1602, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1602 = metadata !{metadata !437, metadata !1575}
!1603 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi32ELb1EE8to_ulongEv", metadata !364, i32 560, metadata !1604, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 560} ; [ DW_TAG_subprogram ]
!1604 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1605, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1605 = metadata !{metadata !442, metadata !1575}
!1606 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi32ELb1EE8to_int64Ev", metadata !364, i32 561, metadata !1607, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 561} ; [ DW_TAG_subprogram ]
!1607 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1608 = metadata !{metadata !447, metadata !1575}
!1609 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi32ELb1EE9to_uint64Ev", metadata !364, i32 562, metadata !1610, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 562} ; [ DW_TAG_subprogram ]
!1610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1611 = metadata !{metadata !453, metadata !1575}
!1612 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_float", metadata !"to_float", metadata !"_ZNK11ap_int_baseILi32ELb1EE8to_floatEv", metadata !364, i32 563, metadata !1613, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 563} ; [ DW_TAG_subprogram ]
!1613 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1614, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1614 = metadata !{metadata !463, metadata !1575}
!1615 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi32ELb1EE9to_doubleEv", metadata !364, i32 564, metadata !1616, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 564} ; [ DW_TAG_subprogram ]
!1616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1617 = metadata !{metadata !467, metadata !1575}
!1618 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi32ELb1EE6lengthEv", metadata !364, i32 588, metadata !1619, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 588} ; [ DW_TAG_subprogram ]
!1619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1620 = metadata !{metadata !378, metadata !1621}
!1621 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1464} ; [ DW_TAG_pointer_type ]
!1622 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi32ELb1EE6iszeroEv", metadata !364, i32 591, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 591} ; [ DW_TAG_subprogram ]
!1623 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi32ELb1EE7is_zeroEv", metadata !364, i32 594, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 594} ; [ DW_TAG_subprogram ]
!1624 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi32ELb1EE4signEv", metadata !364, i32 597, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 597} ; [ DW_TAG_subprogram ]
!1625 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi32ELb1EE5clearEi", metadata !364, i32 606, metadata !1626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 606} ; [ DW_TAG_subprogram ]
!1626 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1627, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1627 = metadata !{null, metadata !1456, metadata !378}
!1628 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi32ELb1EE6invertEi", metadata !364, i32 612, metadata !1626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 612} ; [ DW_TAG_subprogram ]
!1629 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi32ELb1EE4testEi", metadata !364, i32 621, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 621} ; [ DW_TAG_subprogram ]
!1630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1631 = metadata !{metadata !247, metadata !1575, metadata !378}
!1632 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"get", metadata !"get", metadata !"_ZN11ap_int_baseILi32ELb1EE3getEv", metadata !364, i32 627, metadata !1633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 627} ; [ DW_TAG_subprogram ]
!1633 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1634, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1634 = metadata !{metadata !1531, metadata !1456}
!1635 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb1EE3setEi", metadata !364, i32 630, metadata !1626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 630} ; [ DW_TAG_subprogram ]
!1636 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi32ELb1EE3setEib", metadata !364, i32 636, metadata !1637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 636} ; [ DW_TAG_subprogram ]
!1637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1638 = metadata !{null, metadata !1456, metadata !378, metadata !247}
!1639 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi32ELb1EE7lrotateEi", metadata !364, i32 643, metadata !1554, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 643} ; [ DW_TAG_subprogram ]
!1640 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi32ELb1EE7rrotateEi", metadata !364, i32 658, metadata !1554, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 658} ; [ DW_TAG_subprogram ]
!1641 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi32ELb1EE7reverseEv", metadata !364, i32 673, metadata !1633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 673} ; [ DW_TAG_subprogram ]
!1642 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi32ELb1EE7set_bitEib", metadata !364, i32 679, metadata !1637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 679} ; [ DW_TAG_subprogram ]
!1643 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi32ELb1EE7get_bitEi", metadata !364, i32 684, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 684} ; [ DW_TAG_subprogram ]
!1644 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi32ELb1EE5b_notEv", metadata !364, i32 689, metadata !1454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 689} ; [ DW_TAG_subprogram ]
!1645 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb1EEppEv", metadata !364, i32 727, metadata !1633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 727} ; [ DW_TAG_subprogram ]
!1646 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb1EEmmEv", metadata !364, i32 731, metadata !1633, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 731} ; [ DW_TAG_subprogram ]
!1647 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi32ELb1EEppEi", metadata !364, i32 739, metadata !1648, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 739} ; [ DW_TAG_subprogram ]
!1648 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1649, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1649 = metadata !{metadata !1650, metadata !1456, metadata !378}
!1650 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1651} ; [ DW_TAG_const_type ]
!1651 = metadata !{i32 786454, metadata !1652, metadata !"arg1", metadata !364, i32 198, i64 0, i64 0, i64 0, i32 0, metadata !1653} ; [ DW_TAG_typedef ]
!1652 = metadata !{i32 786434, metadata !1440, metadata !"RType<32, true>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !1436} ; [ DW_TAG_class_type ]
!1653 = metadata !{i32 786454, metadata !1654, metadata !"type", metadata !364, i32 145, i64 0, i64 0, i64 0, i32 0, metadata !1655} ; [ DW_TAG_typedef ]
!1654 = metadata !{i32 786434, null, metadata !"_ap_int_factory<32, true>", metadata !364, i32 145, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !1436} ; [ DW_TAG_class_type ]
!1655 = metadata !{i32 786434, null, metadata !"ap_int<32>", metadata !617, i32 183, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1656} ; [ DW_TAG_class_type ]
!1656 = metadata !{metadata !1657}
!1657 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !378, i64 32, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1658 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi32ELb1EEmmEi", metadata !364, i32 744, metadata !1648, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 744} ; [ DW_TAG_subprogram ]
!1659 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi32ELb1EEpsEv", metadata !364, i32 753, metadata !1660, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 753} ; [ DW_TAG_subprogram ]
!1660 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1661 = metadata !{metadata !1651, metadata !1575}
!1662 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi32ELb1EEngEv", metadata !364, i32 756, metadata !1663, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 756} ; [ DW_TAG_subprogram ]
!1663 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1664, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1664 = metadata !{metadata !1665, metadata !1575}
!1665 = metadata !{i32 786454, metadata !1666, metadata !"minus", metadata !364, i32 194, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ]
!1666 = metadata !{i32 786434, metadata !1440, metadata !"RType<1, false>", metadata !364, i32 165, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !629} ; [ DW_TAG_class_type ]
!1667 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi32ELb1EEntEv", metadata !364, i32 763, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 763} ; [ DW_TAG_subprogram ]
!1668 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator~", metadata !"operator~", metadata !"_ZNK11ap_int_baseILi32ELb1EEcoEv", metadata !364, i32 769, metadata !1660, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 769} ; [ DW_TAG_subprogram ]
!1669 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi32ELb1EE5rangeEii", metadata !364, i32 907, metadata !1670, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 907} ; [ DW_TAG_subprogram ]
!1670 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1671, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1671 = metadata !{metadata !1672, metadata !1456, metadata !378, metadata !378}
!1672 = metadata !{i32 786434, null, metadata !"ap_range_ref<32, true>", metadata !617, i32 189, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1673} ; [ DW_TAG_class_type ]
!1673 = metadata !{metadata !1657, metadata !710}
!1674 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi32ELb1EE5rangeEii", metadata !364, i32 914, metadata !1675, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 914} ; [ DW_TAG_subprogram ]
!1675 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1676, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1676 = metadata !{metadata !1672, metadata !1575, metadata !378, metadata !378}
!1677 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi32ELb1EE5rangeEv", metadata !364, i32 938, metadata !1678, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 938} ; [ DW_TAG_subprogram ]
!1678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1679 = metadata !{metadata !1672, metadata !1456}
!1680 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi32ELb1EE5rangeEv", metadata !364, i32 942, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 942} ; [ DW_TAG_subprogram ]
!1681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1682 = metadata !{metadata !1672, metadata !1575}
!1683 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi32ELb1EEclEii", metadata !364, i32 946, metadata !1670, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 946} ; [ DW_TAG_subprogram ]
!1684 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi32ELb1EEclEii", metadata !364, i32 950, metadata !1675, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 950} ; [ DW_TAG_subprogram ]
!1685 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi32ELb1EEixEi", metadata !364, i32 988, metadata !1686, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 988} ; [ DW_TAG_subprogram ]
!1686 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1687, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1687 = metadata !{metadata !1688, metadata !1456, metadata !378}
!1688 = metadata !{i32 786434, null, metadata !"ap_bit_ref<32, true>", metadata !617, i32 192, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !1673} ; [ DW_TAG_class_type ]
!1689 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi32ELb1EEixEi", metadata !364, i32 1004, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1004} ; [ DW_TAG_subprogram ]
!1690 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi32ELb1EE3bitEi", metadata !364, i32 1017, metadata !1686, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1017} ; [ DW_TAG_subprogram ]
!1691 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi32ELb1EE3bitEi", metadata !364, i32 1032, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1032} ; [ DW_TAG_subprogram ]
!1692 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi32ELb1EE17countLeadingZerosEv", metadata !364, i32 1055, metadata !1693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1055} ; [ DW_TAG_subprogram ]
!1693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1694 = metadata !{metadata !378, metadata !1456}
!1695 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1EE10and_reduceEv", metadata !364, i32 1275, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1275} ; [ DW_TAG_subprogram ]
!1696 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1EE11nand_reduceEv", metadata !364, i32 1276, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1276} ; [ DW_TAG_subprogram ]
!1697 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1EE9or_reduceEv", metadata !364, i32 1277, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1277} ; [ DW_TAG_subprogram ]
!1698 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1EE10nor_reduceEv", metadata !364, i32 1278, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1278} ; [ DW_TAG_subprogram ]
!1699 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1EE10xor_reduceEv", metadata !364, i32 1279, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1279} ; [ DW_TAG_subprogram ]
!1700 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi32ELb1EE11xnor_reduceEv", metadata !364, i32 1280, metadata !1577, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1280} ; [ DW_TAG_subprogram ]
!1701 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi32ELb1EE9to_stringEab", metadata !364, i32 1295, metadata !1702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 1295} ; [ DW_TAG_subprogram ]
!1702 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1703, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1703 = metadata !{metadata !676, metadata !1575, metadata !408, metadata !247}
!1704 = metadata !{i32 786478, i32 0, metadata !1440, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !364, i32 150, metadata !1454, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !233, i32 150} ; [ DW_TAG_subprogram ]
!1705 = metadata !{metadata !619, metadata !379, metadata !1437, metadata !635}
!1706 = metadata !{i32 1562, i32 216, metadata !1707, metadata !1711}
!1707 = metadata !{i32 786443, metadata !1708, i32 1562, i32 207, metadata !364, i32 29} ; [ DW_TAG_lexical_block ]
!1708 = metadata !{i32 786478, i32 0, metadata !364, metadata !"operator+<4, false>", metadata !"operator+<4, false>", metadata !"_ZplILi4ELb0EEN11ap_int_baseIXT_EXT0_EE5RTypeIXL3$_032EEXLb1EEE4plusERKS1_i", metadata !364, i32 1562, metadata !1709, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !645, null, metadata !233, i32 1562} ; [ DW_TAG_subprogram ]
!1709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1710 = metadata !{metadata !1434, metadata !387, metadata !378}
!1711 = metadata !{i32 25, i32 11, metadata !1712, null}
!1712 = metadata !{i32 786443, metadata !1402, i32 24, i32 24, metadata !210, i32 24} ; [ DW_TAG_lexical_block ]
!1713 = metadata !{i32 217, i32 5, metadata !1714, metadata !1718}
!1714 = metadata !{i32 786443, metadata !1715, i32 216, i32 92, metadata !364, i32 39} ; [ DW_TAG_lexical_block ]
!1715 = metadata !{i32 786478, i32 0, null, metadata !"ap_int_base<33, true>", metadata !"ap_int_base<33, true>", metadata !"_ZN11ap_int_baseILi4ELb0EEC2ILi33ELb1EEERKS_IXT_EXT0_EE", metadata !364, i32 216, metadata !1716, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !718, null, metadata !233, i32 216} ; [ DW_TAG_subprogram ]
!1716 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1717, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1717 = metadata !{null, metadata !383, metadata !695}
!1718 = metadata !{i32 284, i32 113, metadata !1719, metadata !1720}
!1719 = metadata !{i32 786478, i32 0, metadata !358, metadata !"sc_uint<33, true>", metadata !"sc_uint<33, true>", metadata !"_ZN7_ap_sc_5sc_dt7sc_uintILi4EEC2ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE", metadata !360, i32 284, metadata !693, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1148, metadata !692, metadata !233, i32 284} ; [ DW_TAG_subprogram ]
!1720 = metadata !{i32 284, i32 115, metadata !1721, metadata !1711}
!1721 = metadata !{i32 786478, i32 0, metadata !358, metadata !"sc_uint<33, true>", metadata !"sc_uint<33, true>", metadata !"_ZN7_ap_sc_5sc_dt7sc_uintILi4EEC1ILi33ELb1EEERK11ap_int_baseIXT_EXT0_EE", metadata !360, i32 284, metadata !693, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1148, metadata !692, metadata !233, i32 284} ; [ DW_TAG_subprogram ]
!1722 = metadata !{i32 378, i32 13, metadata !1723, metadata !1711}
!1723 = metadata !{i32 786443, metadata !1724, i32 377, i32 88, metadata !360, i32 40} ; [ DW_TAG_lexical_block ]
!1724 = metadata !{i32 786478, i32 0, metadata !358, metadata !"operator=", metadata !"operator=", metadata !"_ZN7_ap_sc_5sc_dt7sc_uintILi4EEaSERKS2_", metadata !360, i32 377, metadata !1220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1219, metadata !233, i32 377} ; [ DW_TAG_subprogram ]
!1725 = metadata !{i32 790529, metadata !1726, metadata !"v.V", null, i32 206, metadata !1377, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1726 = metadata !{i32 786688, metadata !1727, metadata !"v", metadata !220, i32 206, metadata !357, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1727 = metadata !{i32 786443, metadata !1728, i32 205, i32 73, metadata !220, i32 26} ; [ DW_TAG_lexical_block ]
!1728 = metadata !{i32 786478, i32 0, metadata !218, metadata !"write<_ap_sc_::sc_dt::sc_uint<4> >", metadata !"write<_ap_sc_::sc_dt::sc_uint<4> >", metadata !"_ZN7_ap_sc_7sc_core18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEE5writeIS4_EEvRKT_", metadata !220, i32 205, metadata !1729, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1731, null, metadata !233, i32 205} ; [ DW_TAG_subprogram ]
!1729 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1730, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1730 = metadata !{null, metadata !1248, metadata !1164}
!1731 = metadata !{metadata !1732}
!1732 = metadata !{i32 786479, null, metadata !"_T2", metadata !357, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1733 = metadata !{i32 206, i32 21, metadata !1727, metadata !1734}
!1734 = metadata !{i32 417, i32 73, metadata !1735, metadata !1737}
!1735 = metadata !{i32 786443, metadata !1736, i32 417, i32 71, metadata !220, i32 25} ; [ DW_TAG_lexical_block ]
!1736 = metadata !{i32 786478, i32 0, metadata !218, metadata !"write", metadata !"write", metadata !"_ZN7_ap_sc_7sc_core8sc_inoutINS_5sc_dt7sc_uintILi4EEEE5writeERKS4_", metadata !220, i32 417, metadata !1292, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1291, metadata !233, i32 417} ; [ DW_TAG_subprogram ]
!1737 = metadata !{i32 26, i32 5, metadata !1712, null}
!1738 = metadata !{i32 365, i32 13, metadata !1739, metadata !1741}
!1739 = metadata !{i32 786443, metadata !1740, i32 364, i32 93, metadata !360, i32 28} ; [ DW_TAG_lexical_block ]
!1740 = metadata !{i32 786478, i32 0, metadata !358, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7_ap_sc_5sc_dt7sc_uintILi4EEaSERKS2_", metadata !360, i32 364, metadata !1207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1206, metadata !233, i32 364} ; [ DW_TAG_subprogram ]
!1741 = metadata !{i32 108, i32 100, metadata !1742, metadata !1750}
!1742 = metadata !{i32 786443, metadata !1743, i32 108, i32 98, metadata !1405, i32 27} ; [ DW_TAG_lexical_block ]
!1743 = metadata !{i32 786478, i32 0, metadata !220, metadata !"_ssdm_op_WRITE<4, _ap_sc_::sc_dt::sc_uint<4> >", metadata !"_ssdm_op_WRITE<4, _ap_sc_::sc_dt::sc_uint<4> >", metadata !"_Z14_ssdm_op_WRITEILi4EN7_ap_sc_5sc_dt7sc_uintILi4EEEEvRVNS2_IXT_EEERKT0_", metadata !220, i32 114, metadata !1744, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !1747, null, metadata !233, i32 108} ; [ DW_TAG_subprogram ]
!1744 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1745, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1745 = metadata !{null, metadata !1746, metadata !1164}
!1746 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_reference_type ]
!1747 = metadata !{metadata !1748, metadata !1749}
!1748 = metadata !{i32 786480, null, metadata !"W", metadata !378, i64 4, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1749 = metadata !{i32 786479, null, metadata !"T2", metadata !357, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!1750 = metadata !{i32 207, i32 13, metadata !1727, metadata !1734}
!1751 = metadata !{i32 27, i32 4, metadata !1712, null}
!1752 = metadata !{i32 28, i32 3, metadata !1402, null}
!1753 = metadata !{i32 790531, metadata !1754, metadata !"first_counter.clock.m_if.Val", null, i32 38, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1754 = metadata !{i32 786689, metadata !1755, metadata !"this", metadata !210, i32 16777254, metadata !1350, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1755 = metadata !{i32 786478, i32 0, null, metadata !"first_counter", metadata !"first_counter", metadata !"_ZN13first_counterC2EN7_ap_sc_7sc_core14sc_module_nameE", metadata !210, i32 38, metadata !1334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1333, metadata !233, i32 39} ; [ DW_TAG_subprogram ]
!1756 = metadata !{i32 38, i32 3, metadata !1755, null}
!1757 = metadata !{i32 790531, metadata !1754, metadata !"first_counter.reset.m_if.Val", null, i32 38, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1758 = metadata !{i32 790531, metadata !1754, metadata !"first_counter.enable.m_if.Val", null, i32 38, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1759 = metadata !{i32 790531, metadata !1754, metadata !"first_counter.out_counter.m_if.Val.V", null, i32 38, metadata !1364, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1760 = metadata !{i32 790531, metadata !1754, metadata !"first_counter.count.V", null, i32 38, metadata !1384, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1761 = metadata !{i32 40, i32 5, metadata !1762, null}
!1762 = metadata !{i32 786443, metadata !1755, i32 39, i32 2, metadata !210, i32 21} ; [ DW_TAG_lexical_block ]
!1763 = metadata !{i32 41, i32 5, metadata !1762, null}
!1764 = metadata !{i32 42, i32 5, metadata !1762, null}
!1765 = metadata !{i32 43, i32 5, metadata !1762, null}
!1766 = metadata !{i32 44, i32 5, metadata !1762, null}
!1767 = metadata !{i32 45, i32 5, metadata !1762, null}
!1768 = metadata !{i32 46, i32 5, metadata !1762, null}
!1769 = metadata !{i32 47, i32 5, metadata !1762, null}
!1770 = metadata !{i32 49, i32 1, metadata !1762, null}
!1771 = metadata !{metadata !1772}
!1772 = metadata !{i32 0, i32 0, metadata !1773}
!1773 = metadata !{metadata !1774}
!1774 = metadata !{metadata !"custom2.clock1.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1775 = metadata !{metadata !1776}
!1776 = metadata !{i32 0, i32 0, metadata !1777}
!1777 = metadata !{metadata !1778}
!1778 = metadata !{metadata !"custom2.clock2.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1779 = metadata !{metadata !1780}
!1780 = metadata !{i32 0, i32 0, metadata !1781}
!1781 = metadata !{metadata !1782}
!1782 = metadata !{metadata !"custom2.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1783 = metadata !{metadata !1784}
!1784 = metadata !{i32 0, i32 0, metadata !1785}
!1785 = metadata !{metadata !1786}
!1786 = metadata !{metadata !"custom2.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1787 = metadata !{metadata !1788}
!1788 = metadata !{i32 0, i32 3, metadata !1789}
!1789 = metadata !{metadata !1790}
!1790 = metadata !{metadata !"custom2.out_counter1.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1791 = metadata !{metadata !1792}
!1792 = metadata !{i32 0, i32 3, metadata !1793}
!1793 = metadata !{metadata !1794}
!1794 = metadata !{metadata !"custom2.out_counter2.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1795 = metadata !{metadata !1796}
!1796 = metadata !{i32 0, i32 3, metadata !1797}
!1797 = metadata !{metadata !1798}
!1798 = metadata !{metadata !"custom2.count1.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1799 = metadata !{metadata !1800}
!1800 = metadata !{i32 0, i32 3, metadata !1801}
!1801 = metadata !{metadata !1802}
!1802 = metadata !{metadata !"custom2.count2.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1803 = metadata !{metadata !1804}
!1804 = metadata !{i32 0, i32 0, metadata !1805}
!1805 = metadata !{metadata !1806}
!1806 = metadata !{metadata !"custom2.first.clock.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1807 = metadata !{metadata !1808}
!1808 = metadata !{i32 0, i32 0, metadata !1809}
!1809 = metadata !{metadata !1810}
!1810 = metadata !{metadata !"custom2.first.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1811 = metadata !{metadata !1812}
!1812 = metadata !{i32 0, i32 0, metadata !1813}
!1813 = metadata !{metadata !1814}
!1814 = metadata !{metadata !"custom2.first.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1815 = metadata !{metadata !1816}
!1816 = metadata !{i32 0, i32 3, metadata !1817}
!1817 = metadata !{metadata !1818}
!1818 = metadata !{metadata !"custom2.first.out_counter.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1819 = metadata !{metadata !1820}
!1820 = metadata !{i32 0, i32 3, metadata !1821}
!1821 = metadata !{metadata !1822}
!1822 = metadata !{metadata !"custom2.first.count.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1823 = metadata !{metadata !1824}
!1824 = metadata !{i32 0, i32 0, metadata !1825}
!1825 = metadata !{metadata !1826}
!1826 = metadata !{metadata !"custom2.second.clock.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1827 = metadata !{metadata !1828}
!1828 = metadata !{i32 0, i32 0, metadata !1829}
!1829 = metadata !{metadata !1830}
!1830 = metadata !{metadata !"custom2.second.reset.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1831 = metadata !{metadata !1832}
!1832 = metadata !{i32 0, i32 0, metadata !1833}
!1833 = metadata !{metadata !1834}
!1834 = metadata !{metadata !"custom2.second.enable.m_if.Val", metadata !65, metadata !"bool", i32 0, i32 0}
!1835 = metadata !{metadata !1836}
!1836 = metadata !{i32 0, i32 3, metadata !1837}
!1837 = metadata !{metadata !1838}
!1838 = metadata !{metadata !"custom2.second.out_counter.m_if.Val.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1839 = metadata !{metadata !1840}
!1840 = metadata !{i32 0, i32 3, metadata !1841}
!1841 = metadata !{metadata !1842}
!1842 = metadata !{metadata !"custom2.second.count.V", metadata !65, metadata !"uint4", i32 0, i32 3}
!1843 = metadata !{i32 790531, metadata !1844, metadata !"custom2.clock1.m_if.Val", null, i32 19, metadata !1864, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1844 = metadata !{i32 786689, metadata !1845, metadata !"this", metadata !1846, i32 16777235, metadata !1863, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1845 = metadata !{i32 786478, i32 0, null, metadata !"custom2", metadata !"custom2", metadata !"_ZN7custom2C2EN7_ap_sc_7sc_core14sc_module_nameE", metadata !1846, i32 19, metadata !1847, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1862, metadata !233, i32 22} ; [ DW_TAG_subprogram ]
!1846 = metadata !{i32 786473, metadata !"/home/shubham/HLS_Exercises/CustomClocks2/Custom2.h", metadata !"/home/shubham/HLS_Exercises", null} ; [ DW_TAG_file_type ]
!1847 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1848, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1848 = metadata !{null, metadata !1849, metadata !1336}
!1849 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1850} ; [ DW_TAG_pointer_type ]
!1850 = metadata !{i32 786434, null, metadata !"custom2", metadata !1846, i32 8, i64 144, i64 8, i32 0, i32 0, null, metadata !1851, i32 0, null, null} ; [ DW_TAG_class_type ]
!1851 = metadata !{metadata !1852, metadata !1853, metadata !1854, metadata !1855, metadata !1856, metadata !1857, metadata !1858, metadata !1859, metadata !1860, metadata !1861, metadata !1862}
!1852 = metadata !{i32 786445, metadata !1850, metadata !"clock1", metadata !1846, i32 9, i64 8, i64 8, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ]
!1853 = metadata !{i32 786445, metadata !1850, metadata !"clock2", metadata !1846, i32 10, i64 8, i64 8, i64 8, i32 0, metadata !221} ; [ DW_TAG_member ]
!1854 = metadata !{i32 786445, metadata !1850, metadata !"reset", metadata !1846, i32 11, i64 8, i64 8, i64 16, i32 0, metadata !221} ; [ DW_TAG_member ]
!1855 = metadata !{i32 786445, metadata !1850, metadata !"enable", metadata !1846, i32 12, i64 8, i64 8, i64 24, i32 0, metadata !221} ; [ DW_TAG_member ]
!1856 = metadata !{i32 786445, metadata !1850, metadata !"out_counter1", metadata !1846, i32 13, i64 8, i64 8, i64 32, i32 0, metadata !339} ; [ DW_TAG_member ]
!1857 = metadata !{i32 786445, metadata !1850, metadata !"out_counter2", metadata !1846, i32 14, i64 8, i64 8, i64 40, i32 0, metadata !339} ; [ DW_TAG_member ]
!1858 = metadata !{i32 786445, metadata !1850, metadata !"count1", metadata !1846, i32 15, i64 8, i64 8, i64 48, i32 0, metadata !357} ; [ DW_TAG_member ]
!1859 = metadata !{i32 786445, metadata !1850, metadata !"count2", metadata !1846, i32 16, i64 8, i64 8, i64 56, i32 0, metadata !357} ; [ DW_TAG_member ]
!1860 = metadata !{i32 786445, metadata !1850, metadata !"first", metadata !1846, i32 17, i64 40, i64 8, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ]
!1861 = metadata !{i32 786445, metadata !1850, metadata !"second", metadata !1846, i32 18, i64 40, i64 8, i64 104, i32 0, metadata !214} ; [ DW_TAG_member ]
!1862 = metadata !{i32 786478, i32 0, metadata !1850, metadata !"custom2", metadata !"custom2", metadata !"", metadata !1846, i32 19, metadata !1847, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !233, i32 19} ; [ DW_TAG_subprogram ]
!1863 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1850} ; [ DW_TAG_pointer_type ]
!1864 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1865} ; [ DW_TAG_pointer_type ]
!1865 = metadata !{i32 786438, null, metadata !"custom2", metadata !1846, i32 8, i64 8, i64 8, i32 0, i32 0, null, metadata !1353, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1866 = metadata !{i32 19, i32 3, metadata !1845, null}
!1867 = metadata !{i32 790531, metadata !1844, metadata !"custom2.clock2.m_if.Val", null, i32 19, metadata !1864, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1868 = metadata !{i32 790531, metadata !1844, metadata !"custom2.reset.m_if.Val", null, i32 19, metadata !1864, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1869 = metadata !{i32 790531, metadata !1844, metadata !"custom2.enable.m_if.Val", null, i32 19, metadata !1864, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1870 = metadata !{i32 790531, metadata !1844, metadata !"custom2.out_counter1.m_if.Val.V", null, i32 19, metadata !1871, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1871 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1872} ; [ DW_TAG_pointer_type ]
!1872 = metadata !{i32 786438, null, metadata !"custom2", metadata !1846, i32 8, i64 4, i64 8, i32 0, i32 0, null, metadata !1366, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1873 = metadata !{i32 790531, metadata !1844, metadata !"custom2.out_counter2.m_if.Val.V", null, i32 19, metadata !1871, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1874 = metadata !{i32 790531, metadata !1844, metadata !"custom2.count1.V", null, i32 19, metadata !1875, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1875 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1876} ; [ DW_TAG_pointer_type ]
!1876 = metadata !{i32 786438, null, metadata !"custom2", metadata !1846, i32 8, i64 4, i64 8, i32 0, i32 0, null, metadata !1376, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1877 = metadata !{i32 790531, metadata !1844, metadata !"custom2.count2.V", null, i32 19, metadata !1875, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1878 = metadata !{i32 790531, metadata !1844, metadata !"custom2.first.clock.m_if.Val", null, i32 19, metadata !1879, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1879 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1880} ; [ DW_TAG_pointer_type ]
!1880 = metadata !{i32 786438, null, metadata !"custom2", metadata !1846, i32 8, i64 8, i64 8, i32 0, i32 0, null, metadata !1881, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1881 = metadata !{metadata !1352}
!1882 = metadata !{i32 790531, metadata !1844, metadata !"custom2.first.reset.m_if.Val", null, i32 19, metadata !1879, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1883 = metadata !{i32 790531, metadata !1844, metadata !"custom2.first.enable.m_if.Val", null, i32 19, metadata !1879, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1884 = metadata !{i32 790531, metadata !1844, metadata !"custom2.first.out_counter.m_if.Val.V", null, i32 19, metadata !1885, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1885 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1886} ; [ DW_TAG_pointer_type ]
!1886 = metadata !{i32 786438, null, metadata !"custom2", metadata !1846, i32 8, i64 4, i64 8, i32 0, i32 0, null, metadata !1887, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1887 = metadata !{metadata !1365}
!1888 = metadata !{i32 790531, metadata !1844, metadata !"custom2.first.count.V", null, i32 19, metadata !1889, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1889 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1890} ; [ DW_TAG_pointer_type ]
!1890 = metadata !{i32 786438, null, metadata !"custom2", metadata !1846, i32 8, i64 4, i64 8, i32 0, i32 0, null, metadata !1891, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!1891 = metadata !{metadata !1385}
!1892 = metadata !{i32 790531, metadata !1844, metadata !"custom2.second.clock.m_if.Val", null, i32 19, metadata !1879, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1893 = metadata !{i32 790531, metadata !1844, metadata !"custom2.second.reset.m_if.Val", null, i32 19, metadata !1879, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1894 = metadata !{i32 790531, metadata !1844, metadata !"custom2.second.enable.m_if.Val", null, i32 19, metadata !1879, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1895 = metadata !{i32 790531, metadata !1844, metadata !"custom2.second.out_counter.m_if.Val.V", null, i32 19, metadata !1885, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1896 = metadata !{i32 790531, metadata !1844, metadata !"custom2.second.count.V", null, i32 19, metadata !1889, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1897 = metadata !{i32 790531, metadata !1898, metadata !"first_counter.clock.m_if.Val", null, i32 38, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1898 = metadata !{i32 786689, metadata !1899, metadata !"this", metadata !210, i32 16777254, metadata !1350, i32 64, metadata !1900} ; [ DW_TAG_arg_variable ]
!1899 = metadata !{i32 786478, i32 0, null, metadata !"first_counter", metadata !"first_counter", metadata !"_ZN13first_counterC1EN7_ap_sc_7sc_core14sc_module_nameE", metadata !210, i32 38, metadata !1334, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1333, metadata !233, i32 39} ; [ DW_TAG_subprogram ]
!1900 = metadata !{i32 22, i32 2, metadata !1845, null}
!1901 = metadata !{i32 38, i32 3, metadata !1899, metadata !1900}
!1902 = metadata !{i32 790531, metadata !1898, metadata !"first_counter.reset.m_if.Val", null, i32 38, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1903 = metadata !{i32 790531, metadata !1898, metadata !"first_counter.enable.m_if.Val", null, i32 38, metadata !1351, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1904 = metadata !{i32 790531, metadata !1898, metadata !"first_counter.out_counter.m_if.Val.V", null, i32 38, metadata !1364, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1905 = metadata !{i32 790531, metadata !1898, metadata !"first_counter.count.V", null, i32 38, metadata !1384, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1906 = metadata !{i32 49, i32 1, metadata !1899, metadata !1900}
!1907 = metadata !{i32 23, i32 5, metadata !1908, null}
!1908 = metadata !{i32 786443, metadata !1845, i32 22, i32 2, metadata !1846, i32 0} ; [ DW_TAG_lexical_block ]
!1909 = metadata !{i32 24, i32 5, metadata !1908, null}
!1910 = metadata !{i32 25, i32 5, metadata !1908, null}
!1911 = metadata !{i32 26, i32 5, metadata !1908, null}
!1912 = metadata !{i32 27, i32 5, metadata !1908, null}
!1913 = metadata !{i32 28, i32 5, metadata !1908, null}
!1914 = metadata !{i32 29, i32 5, metadata !1908, null}
!1915 = metadata !{i32 790531, metadata !1916, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >.m_if.Val", null, i32 286, metadata !1919, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1916 = metadata !{i32 786689, metadata !1917, metadata !"this", metadata !220, i32 16777502, metadata !1918, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1917 = metadata !{i32 786478, i32 0, metadata !218, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEEclERS4_", metadata !220, i32 286, metadata !292, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !295, metadata !233, i32 286} ; [ DW_TAG_subprogram ]
!1918 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ]
!1919 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1356} ; [ DW_TAG_pointer_type ]
!1920 = metadata !{i32 286, i32 52, metadata !1917, metadata !1921}
!1921 = metadata !{i32 30, i32 3, metadata !1908, null}
!1922 = metadata !{i32 790531, metadata !1923, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >.m_if.Val", null, i32 285, metadata !1919, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1923 = metadata !{i32 786689, metadata !1924, metadata !"this", metadata !220, i32 16777501, metadata !1918, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1924 = metadata !{i32 786478, i32 0, metadata !218, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERS4_", metadata !220, i32 285, metadata !292, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !291, metadata !233, i32 285} ; [ DW_TAG_subprogram ]
!1925 = metadata !{i32 285, i32 52, metadata !1924, metadata !1926}
!1926 = metadata !{i32 286, i32 89, metadata !1927, metadata !1921}
!1927 = metadata !{i32 786443, metadata !1917, i32 286, i32 87, metadata !220, i32 4} ; [ DW_TAG_lexical_block ]
!1928 = metadata !{i32 790531, metadata !1929, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_in_if<bool> >.m_if.Val", null, i32 277, metadata !1919, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1929 = metadata !{i32 786689, metadata !1930, metadata !"this", metadata !220, i32 16777493, metadata !1918, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1930 = metadata !{i32 786478, i32 0, metadata !218, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_15sc_signal_in_ifIbEEE4bindERS3_", metadata !220, i32 277, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !279, metadata !233, i32 277} ; [ DW_TAG_subprogram ]
!1931 = metadata !{i32 277, i32 52, metadata !1930, metadata !1932}
!1932 = metadata !{i32 285, i32 82, metadata !1933, metadata !1926}
!1933 = metadata !{i32 786443, metadata !1924, i32 285, i32 80, metadata !220, i32 5} ; [ DW_TAG_lexical_block ]
!1934 = metadata !{i32 790531, metadata !1935, metadata !"interface_.Val", null, i32 277, metadata !1936, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1935 = metadata !{i32 786689, metadata !1930, metadata !"interface_", metadata !220, i32 33554709, metadata !282, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1936 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1358} ; [ DW_TAG_pointer_type ]
!1937 = metadata !{i32 277, i32 62, metadata !1930, metadata !1932}
!1938 = metadata !{i32 278, i32 13, metadata !1939, metadata !1932}
!1939 = metadata !{i32 786443, metadata !1930, i32 277, i32 75, metadata !220, i32 6} ; [ DW_TAG_lexical_block ]
!1940 = metadata !{i32 286, i32 52, metadata !1917, metadata !1941}
!1941 = metadata !{i32 31, i32 3, metadata !1908, null}
!1942 = metadata !{i32 285, i32 52, metadata !1924, metadata !1943}
!1943 = metadata !{i32 286, i32 89, metadata !1927, metadata !1941}
!1944 = metadata !{i32 277, i32 52, metadata !1930, metadata !1945}
!1945 = metadata !{i32 285, i32 82, metadata !1933, metadata !1943}
!1946 = metadata !{i32 277, i32 62, metadata !1930, metadata !1945}
!1947 = metadata !{i32 278, i32 13, metadata !1939, metadata !1945}
!1948 = metadata !{i32 286, i32 52, metadata !1917, metadata !1949}
!1949 = metadata !{i32 32, i32 3, metadata !1908, null}
!1950 = metadata !{i32 285, i32 52, metadata !1924, metadata !1951}
!1951 = metadata !{i32 286, i32 89, metadata !1927, metadata !1949}
!1952 = metadata !{i32 277, i32 52, metadata !1930, metadata !1953}
!1953 = metadata !{i32 285, i32 82, metadata !1933, metadata !1951}
!1954 = metadata !{i32 277, i32 62, metadata !1930, metadata !1953}
!1955 = metadata !{i32 278, i32 13, metadata !1939, metadata !1953}
!1956 = metadata !{i32 790531, metadata !1957, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >.m_if.Val.V", null, i32 286, metadata !1960, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1957 = metadata !{i32 786689, metadata !1958, metadata !"this", metadata !220, i32 16777502, metadata !1959, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1958 = metadata !{i32 786478, i32 0, metadata !218, metadata !"operator()", metadata !"operator()", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEEclERS7_", metadata !220, i32 286, metadata !1274, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1277, metadata !233, i32 286} ; [ DW_TAG_subprogram ]
!1959 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !345} ; [ DW_TAG_pointer_type ]
!1960 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1371} ; [ DW_TAG_pointer_type ]
!1961 = metadata !{i32 286, i32 52, metadata !1958, metadata !1962}
!1962 = metadata !{i32 33, i32 3, metadata !1908, null}
!1963 = metadata !{i32 790531, metadata !1964, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >.m_if.Val.V", null, i32 285, metadata !1960, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1964 = metadata !{i32 786689, metadata !1965, metadata !"this", metadata !220, i32 16777501, metadata !1959, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1965 = metadata !{i32 786478, i32 0, metadata !218, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEE4bindERS7_", metadata !220, i32 285, metadata !1274, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1273, metadata !233, i32 285} ; [ DW_TAG_subprogram ]
!1966 = metadata !{i32 285, i32 52, metadata !1965, metadata !1967}
!1967 = metadata !{i32 286, i32 89, metadata !1968, metadata !1962}
!1968 = metadata !{i32 786443, metadata !1958, i32 286, i32 87, metadata !220, i32 1} ; [ DW_TAG_lexical_block ]
!1969 = metadata !{i32 790531, metadata !1970, metadata !"sc_port_b<_ap_sc_::sc_core::sc_signal_inout_if<_ap_sc_::sc_dt::sc_uint<4> > >.m_if.Val.V", null, i32 277, metadata !1960, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1970 = metadata !{i32 786689, metadata !1971, metadata !"this", metadata !220, i32 16777493, metadata !1959, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1971 = metadata !{i32 786478, i32 0, metadata !218, metadata !"bind", metadata !"bind", metadata !"_ZN7_ap_sc_7sc_core9sc_port_bINS0_18sc_signal_inout_ifINS_5sc_dt7sc_uintILi4EEEEEE4bindERS6_", metadata !220, i32 277, metadata !1266, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1265, metadata !233, i32 277} ; [ DW_TAG_subprogram ]
!1972 = metadata !{i32 277, i32 52, metadata !1971, metadata !1973}
!1973 = metadata !{i32 285, i32 82, metadata !1974, metadata !1967}
!1974 = metadata !{i32 786443, metadata !1965, i32 285, i32 80, metadata !220, i32 2} ; [ DW_TAG_lexical_block ]
!1975 = metadata !{i32 790531, metadata !1976, metadata !"interface_.Val.V", null, i32 277, metadata !1977, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1976 = metadata !{i32 786689, metadata !1971, metadata !"interface_", metadata !220, i32 33554709, metadata !1252, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1977 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1373} ; [ DW_TAG_pointer_type ]
!1978 = metadata !{i32 277, i32 62, metadata !1971, metadata !1973}
!1979 = metadata !{i32 278, i32 13, metadata !1980, metadata !1973}
!1980 = metadata !{i32 786443, metadata !1971, i32 277, i32 75, metadata !220, i32 3} ; [ DW_TAG_lexical_block ]
!1981 = metadata !{i32 286, i32 52, metadata !1917, metadata !1982}
!1982 = metadata !{i32 34, i32 3, metadata !1908, null}
!1983 = metadata !{i32 285, i32 52, metadata !1924, metadata !1984}
!1984 = metadata !{i32 286, i32 89, metadata !1927, metadata !1982}
!1985 = metadata !{i32 277, i32 52, metadata !1930, metadata !1986}
!1986 = metadata !{i32 285, i32 82, metadata !1933, metadata !1984}
!1987 = metadata !{i32 277, i32 62, metadata !1930, metadata !1986}
!1988 = metadata !{i32 278, i32 13, metadata !1939, metadata !1986}
!1989 = metadata !{i32 286, i32 52, metadata !1917, metadata !1990}
!1990 = metadata !{i32 35, i32 3, metadata !1908, null}
!1991 = metadata !{i32 285, i32 52, metadata !1924, metadata !1992}
!1992 = metadata !{i32 286, i32 89, metadata !1927, metadata !1990}
!1993 = metadata !{i32 277, i32 52, metadata !1930, metadata !1994}
!1994 = metadata !{i32 285, i32 82, metadata !1933, metadata !1992}
!1995 = metadata !{i32 278, i32 13, metadata !1939, metadata !1994}
!1996 = metadata !{i32 286, i32 52, metadata !1917, metadata !1997}
!1997 = metadata !{i32 36, i32 3, metadata !1908, null}
!1998 = metadata !{i32 285, i32 52, metadata !1924, metadata !1999}
!1999 = metadata !{i32 286, i32 89, metadata !1927, metadata !1997}
!2000 = metadata !{i32 277, i32 52, metadata !1930, metadata !2001}
!2001 = metadata !{i32 285, i32 82, metadata !1933, metadata !1999}
!2002 = metadata !{i32 278, i32 13, metadata !1939, metadata !2001}
!2003 = metadata !{i32 286, i32 52, metadata !1958, metadata !2004}
!2004 = metadata !{i32 37, i32 3, metadata !1908, null}
!2005 = metadata !{i32 285, i32 52, metadata !1965, metadata !2006}
!2006 = metadata !{i32 286, i32 89, metadata !1968, metadata !2004}
!2007 = metadata !{i32 277, i32 52, metadata !1971, metadata !2008}
!2008 = metadata !{i32 285, i32 82, metadata !1974, metadata !2006}
!2009 = metadata !{i32 277, i32 62, metadata !1971, metadata !2008}
!2010 = metadata !{i32 278, i32 13, metadata !1980, metadata !2008}
!2011 = metadata !{i32 41, i32 1, metadata !1908, null}
