
q
Command: %s
53*	vivadotcl2@
,phys_opt_design -directive AggressiveExplore2default:defaultZ4-113h px� 
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
s
)Directive used for phys_opt_design is: %s68*	vivadotcl2%
AggressiveExplore2default:defaultZ4-137h px� 
�
qDesign worst setup slack (WNS) is greater than or equal to %s ns. Skipping all physical synthesis optimizations.
151*	vivadotcl2
0.0002default:defaultZ4-383h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
1.932default:default2
1.112default:defaultZ4-1435h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
3525.7032default:default2
0.0002default:default2
40842default:default2
71172default:defaultZ17-722h px� 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px� 
�
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
7.3692default:default2
0.0002default:defaultZ32-619h px� 
T
?Phase 1 Physical Synthesis Initialization | Checksum: bc3c0341
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.8 ; elapsed = 00:00:00.47 . Memory (MB): peak = 3525.703 ; gain = 0.000 ; free physical = 4084 ; free virtual = 71172default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Hold Fix Optimization2default:defaultZ18-101h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
	Estimated2default:default2
 2default:default2
7.3692default:default2
0.0002default:default2
-0.6512default:default2
-460.3762default:defaultZ32-668h px� 
�
8Identified %s candidate %s for hold slack optimization.
45*physynth2
1582default:default2
nets2default:defaultZ32-45h px� 
�
QOptimized %s %s. Inserted %s new %s. Calibrated %s existing %s. Inserted %s %s.

218*physynth2
702default:default2
nets2default:default2
02default:default2 
ZHOLD_DELAYs2default:default2
02default:default2 
ZHOLD_DELAYs2default:default2
702default:default2
buffers2default:defaultZ32-234h px� 
�
:%s %s Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |342*physynth2
	Estimated2default:default2
 2default:default2
7.3702default:default2
0.0002default:default2
-0.2492default:default2
-171.5362default:defaultZ32-668h px� 
H
3Phase 2 Hold Fix Optimization | Checksum: bc3c0341
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 3525.703 ; gain = 0.000 ; free physical = 4083 ; free virtual = 71162default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.042default:default2
3525.7032default:default2
0.0002default:default2
40832default:default2
71162default:defaultZ17-722h px� 
�
OPost Physical Optimization Timing Summary | WNS=%s | TNS=%s | WHS=%s | THS=%s |343*physynth2
7.3702default:default2
0.0002default:default2
-0.2492default:default2
-171.5362default:defaultZ32-669h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�----------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization            |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Fanout                  |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Single Cell Placement   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Multi Cell Placement    |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Rewire                  |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Critical Cell           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  SLR Crossing            |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  DSP Register            |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  URAM Register           |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register          |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Critical Pin            |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Very High Fanout        |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Total                   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
----------------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
7
"Summary of Hold Fix Optimizations
*commonh px� 
7
"=================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�--------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization               |  WHS Gain (ns)  |  THS Gain (ns)  |  Added LUTs  |  Added FFs  |  Optimized Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
--------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT1 and ZHOLD Insertion   |          0.401  |        288.840  |          70  |          0  |              70  |           0  |           1  |  00:00:01  |
|  Total                      |          0.401  |        288.840  |          70  |          0  |              70  |           0  |           1  |  00:00:01  |
--------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
3525.7032default:default2
0.0002default:default2
40832default:default2
71162default:defaultZ17-722h px� 
J
5Ending Physical Synthesis Task | Checksum: 19f630edf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 3525.703 ; gain = 0.000 ; free physical = 4083 ; free virtual = 71162default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1312default:default2
02default:default2
32default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px� 
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
00:00:012default:default2
00:00:00.622default:default2
3525.7032default:default2
0.0002default:default2
40352default:default2
70952default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/ubuntu/final_project/Final_project_modification_after_presentation/vivado_final_new_new_new_from_lab6/vvd_caravel_fpga/vvd_caravel_fpga.runs/impl_1/design_1_wrapper_physopt.dcp2default:defaultZ17-1381h px� 


End Record