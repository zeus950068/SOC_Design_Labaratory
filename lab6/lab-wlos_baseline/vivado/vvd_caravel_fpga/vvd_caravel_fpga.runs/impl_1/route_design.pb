
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 11b20dbce
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 3505.691 ; gain = 0.000 ; free physical = 2673 ; free virtual = 43722default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.1 Fix Topology Constraints | Checksum: 11b20dbce
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 3505.691 ; gain = 0.000 ; free physical = 2666 ; free virtual = 43652default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.2 Pre Route Cleanup | Checksum: 11b20dbce
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:31 ; elapsed = 00:00:26 . Memory (MB): peak = 3505.691 ; gain = 0.000 ; free physical = 2666 ; free virtual = 43652default:defaulth px� 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.3 Update Timing | Checksum: 1b20b4a1f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:37 ; elapsed = 00:00:31 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2635 ; free virtual = 43342default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=8.602  | TNS=0.000  | WHS=-0.349 | THS=-103.565|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 1af731ab5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:33 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2629 ; free virtual = 43282default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
D
/Phase 3.1 Global Routing | Checksum: 1af731ab5
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:33 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2629 ; free virtual = 43282default:defaulth px� 
B
-Phase 3 Initial Routing | Checksum: cedce0ec
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:42 ; elapsed = 00:00:34 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2628 ; free virtual = 43272default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=8.726  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
G
2Phase 4.1 Global Iteration 0 | Checksum: aabcd10c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:48 ; elapsed = 00:00:39 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2530 ; free virtual = 42982default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=8.726  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 103259a07
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:49 ; elapsed = 00:00:40 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2530 ; free virtual = 42982default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 103259a07
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:49 ; elapsed = 00:00:40 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2530 ; free virtual = 42982default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 5.1.1 Update Timing | Checksum: fe59671a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:50 ; elapsed = 00:00:41 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2528 ; free virtual = 42972default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=8.726  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
B
-Phase 5.1 Delay CleanUp | Checksum: fe59671a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:50 ; elapsed = 00:00:41 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2528 ; free virtual = 42972default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
L
7Phase 5.2 Clock Skew Optimization | Checksum: fe59671a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:50 ; elapsed = 00:00:41 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2528 ; free virtual = 42972default:defaulth px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: fe59671a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:50 ; elapsed = 00:00:41 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2528 ; free virtual = 42972default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 10f899f16
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:43 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2539 ; free virtual = 43132default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=8.726  | TNS=0.000  | WHS=0.036  | THS=0.000  |
2default:defaultZ35-416h px� 
B
-Phase 6.1 Hold Fix Iter | Checksum: f8e68e5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:43 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2531 ; free virtual = 43052default:defaulth px� 
@
+Phase 6 Post Hold Fix | Checksum: f8e68e5d
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:43 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2531 ; free virtual = 43052default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 11fe7fc5b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:43 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2531 ; free virtual = 43052default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 11fe7fc5b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:43 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2527 ; free virtual = 43012default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 1065f4a23
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:53 ; elapsed = 00:00:45 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2426 ; free virtual = 42732default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Post Routing Timing Summary %s
20*route2J
6| WNS=8.726  | TNS=0.000  | WHS=0.036  | THS=0.000  |
2default:defaultZ35-20h px� 
G
2Phase 10 Post Router Timing | Checksum: 1446a5fa9
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:59 ; elapsed = 00:00:55 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2332 ; free virtual = 42422default:defaulth px� 
F
'The design met the timing requirement.
61*routeZ35-61h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:00 ; elapsed = 00:00:55 . Memory (MB): peak = 3529.230 ; gain = 23.539 ; free physical = 2393 ; free virtual = 43032default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1692default:default2
02default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:01:062default:default2
00:00:582default:default2
3529.2302default:default2
23.5392default:default2
23932default:default2
43032default:defaultZ17-722h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:032default:default2
3560.0822default:default2
10.9732default:default2
23372default:default2
42792default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
u/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:042default:default2
00:00:062default:default2
3560.0822default:default2
30.8522default:default2
23452default:default2
42882default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
y/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/impl_1/design_1_wrapper_drc_routed.rpty/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:082default:default2
00:00:082default:default2
3560.0822default:default2
0.0002default:default2
22882default:default2
42722default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
�/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt�/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:062default:default2
00:00:062default:default2
3560.0822default:default2
0.0002default:default2
21362default:default2
42332default:defaultZ17-722h px� 
�
%s4*runtcl2�
�Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
�Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1822default:default2
12default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:052default:default2
00:00:052default:default2
3568.0942default:default2
8.0122default:default2
20522default:default2
42152default:defaultZ17-722h px� 
�
%s4*runtcl2�
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -pb design_1_wrapper_timing_summary_routed.pb -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file design_1_wrapper_bus_skew_routed.rpt -pb design_1_wrapper_bus_skew_routed.pb -rpx design_1_wrapper_bus_skew_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 


End Record