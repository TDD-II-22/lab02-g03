set_property SRC_FILE_INFO {cfile:c:/TDD/lab02-g03/Teclado/wizard_clock_10MHz/wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ/clk_wiz_10MHZ.xdc rfile:../../../wizard_clock_10MHz.srcs/sources_1/ip/clk_wiz_10MHZ/clk_wiz_10MHZ.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in100MHz]] 0.1
