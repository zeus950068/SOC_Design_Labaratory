
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:052default:default2
2903.0472default:default2
5.9612default:default2
37382default:default2
52262default:defaultZ17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2X
D/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/hls_caravel_ps2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2X
D/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/hls_output_pin2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2Z
F/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/hls_read_romcode2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen27
#/tools/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
53*	vivadotcl2|
hsynth_design -top design_1_spiflash_0_0 -part xc7z020clg400-1 -incremental_mode off -mode out_of_context2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
73112default:defaultZ8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 2903.047 ; gain = 0.000 ; free physical = 2110 ; free virtual = 3598
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2)
design_1_spiflash_0_02default:default2
 2default:default2�
�/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_spiflash_0_0/synth/design_1_spiflash_0_0.v2default:default2
532default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
spiflash2default:default2
 2default:default2g
Q/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/verilog_spiflash/spiflash.v2default:default2
152default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
spiflash2default:default2
 2default:default2
02default:default2
12default:default2g
Q/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/verilog_spiflash/spiflash.v2default:default2
152default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
design_1_spiflash_0_02default:default2
 2default:default2
02default:default2
12default:default2�
�/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.gen/sources_1/bd/design_1/ip/design_1_spiflash_0_0/synth/design_1_spiflash_0_0.v2default:default2
532default:default8@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
spi_cmd_reg2default:default2
spiflash2default:default2g
Q/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/verilog_spiflash/spiflash.v2default:default2
1282default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
spi_addr_reg2default:default2
spiflash2default:default2g
Q/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vitis_prj/verilog_spiflash/spiflash.v2default:default2
602default:default8@Z8-7137h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:12 . Memory (MB): peak = 2903.047 ; gain = 0.000 ; free physical = 2120 ; free virtual = 3609
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:12 . Memory (MB): peak = 2903.047 ; gain = 0.000 ; free physical = 2112 ; free virtual = 3602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:12 . Memory (MB): peak = 2903.047 ; gain = 0.000 ; free physical = 2112 ; free virtual = 3602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2903.0472default:default2
0.0002default:default2
21122default:default2
36022default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2919.0552default:default2
0.0002default:default2
22042default:default2
36942default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.042default:default2
00:00:00.032default:default2
2919.0552default:default2
0.0002default:default2
22042default:default2
36942default:defaultZ17-722h px� 
c
!Incremental synthesis strategy %s2274*designutils2
off2default:defaultZ20-5008h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2178 ; free virtual = 3671
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2178 ; free virtual = 3671
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:20 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2178 ; free virtual = 3671
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2228 ; free virtual = 3721
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   24 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   24 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[31]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[30]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[29]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[28]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[27]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[26]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[25]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2&
romcode_Addr_A[24]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_WEN_A[3]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_WEN_A[2]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_WEN_A[1]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_WEN_A[0]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[31]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[30]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[29]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[28]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[27]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[26]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[25]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[24]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[23]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[22]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[21]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[20]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[19]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[18]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[17]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[16]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[15]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[14]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[13]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[12]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[11]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2%
romcode_Din_A[10]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[9]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[8]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[7]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[6]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[5]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[4]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[3]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[2]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[1]2default:default2
02default:defaultZ8-3917h px�
�
+design %s has port %s driven by constant %s3447*oasys2)
design_1_spiflash_0_02default:default2$
romcode_Din_A[0]2default:default2
02default:defaultZ8-3917h px�
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2201 ; free virtual = 3704
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:27 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2043 ; free virtual = 3546
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:27 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2043 ; free virtual = 3545
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:27 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 2026 ; free virtual = 3528
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |CARRY4 |    10|
2default:defaulth px� 
D
%s*synth2,
|2     |LUT1   |     2|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT2   |     1|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT3   |    26|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT4   |     5|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT5   |     4|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT6   |    21|
2default:defaulth px� 
D
%s*synth2,
|8     |FDCE   |    31|
2default:defaulth px� 
D
%s*synth2,
|9     |FDRE   |    32|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.055 ; gain = 16.008 ; free physical = 1954 ; free virtual = 3457
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:29 . Memory (MB): peak = 2919.055 ; gain = 0.000 ; free physical = 2001 ; free virtual = 3503
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 2919.062 ; gain = 16.008 ; free physical = 2001 ; free virtual = 3503
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2919.0622default:default2
0.0002default:default2
20322default:default2
35342default:defaultZ17-722h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
102default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
52default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2919.0622default:default2
0.0002default:default2
20352default:default2
35372default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
e20e4e2b2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
682default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:362default:default2
2919.0622default:default2
16.0162default:default2
22212default:default2
37232default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/design_1_spiflash_0_0_synth_1/design_1_spiflash_0_0.dcp2default:defaultZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2)
design_1_spiflash_0_02default:default2$
f3fe74e394ec8a4e2default:defaultZ2-1648h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/ubuntu/lab_6/lab-wlos_baseline/vivado/vvd_caravel_fpga/vvd_caravel_fpga.runs/design_1_spiflash_0_0_synth_1/design_1_spiflash_0_0.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file design_1_spiflash_0_0_utilization_synth.rpt -pb design_1_spiflash_0_0_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec 16 05:52:26 20232default:defaultZ17-206h px� 


End Record