

Command: %s
53*	vivadotcl2N
:link_design -top top_module_7seg_v2 -part xc7a100tcsg324-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2L
8c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.dcp2default:default2(
generate_clock_10Mhz2default:defaultZ1-454h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
112default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.12default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2T
>c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK_board.xdc2default:default2/
generate_clock_10Mhz/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2T
>c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK_board.xdc2default:default2/
generate_clock_10Mhz/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2N
8c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.xdc2default:default2/
generate_clock_10Mhz/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2N
8c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2N
8c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:112default:default2
00:00:112default:default2
1231.8872default:default2
580.9532default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2N
8c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.xdc2default:default2/
generate_clock_10Mhz/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default8Z20-179h px? 
?
No pins matched '%s'.
508*	planAhead22
generate_clock_10Mhz/clk_10Mhz2default:default2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default2
7242default:default8@Z12-508h px? 
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2*
create_generated_clock2default:default2F
2-objects [get_pins generate_clock_10Mhz/clk_10Mhz]2default:default2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default2
7242default:default8@Z12-4739h px?
?
Deriving generated clocks
2*timing2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default2
7252default:default8@Z38-2h px? 
?
No clocks matched '%s'.
627*	planAhead2
pllclk2default:default2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default2
7252default:default8@Z12-627h px? 
?
aNo clocks found. Please use 'create_clock' or 'create_generated_clock' command to create clocks.
626*	planAhead2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default2
7252default:default8@Z12-626h px? 
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2$
set_output_delay2default:default2.
-clock [get_clocks pllclk]2default:default2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default2
7252default:default8@Z12-4739h px?
?
Finished Parsing XDC File [%s]
178*designutils2T
>C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_7seg_v2.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1231.8872default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
22default:default2
22default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:182default:default2
00:00:202default:default2
1231.8872default:default2
939.1602default:defaultZ17-268h px? 


End Record