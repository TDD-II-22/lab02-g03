# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/TDD/lab02-g03/Ejercicios/Proyectos/Ejercicio7/Ej7_tecl2/vivado_project.cache/wt [current_project]
set_property parent.project_path C:/TDD/lab02-g03/Ejercicios/Proyectos/Ejercicio7/Ej7_tecl2/vivado_project.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/TDD/lab02-g03/Ejercicios/Proyectos/Ejercicio7/Ej7_tecl2/vivado_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/teclado/key_detector.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/teclado/module_2bit_counter.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/teclado/module_DFF.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_alu.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/package.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_barrido.sv
  C:/TDD/lab02-g03/Ejercicios/Compartido/module_clock_divider.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_control.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_control7seg_calcu.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/teclado/module_debounce.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/teclado/module_key_encoding.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_leds_rgb.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_memoria.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_mode_calcu.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_mode_swept.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/module_mux.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio4/module_register_pp.sv
  C:/TDD/lab02-g03/Ejercicios/Compartido/module_seg7_control.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/teclado/top_module_teclado.sv
  C:/TDD/lab02-g03/Ejercicios/Ejercicio7/top_maquina_estado_calcu_con_teclado2.sv
}
read_ip -quiet C:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.xci
set_property used_in_implementation false [get_files -all c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK_board.xdc]
set_property used_in_implementation false [get_files -all c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK.xdc]
set_property used_in_implementation false [get_files -all c:/TDD/lab02-g03/Ejercicios/Compartido/xci/WCLK/WCLK_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_calculadora__con_teclado.xdc
set_property used_in_implementation false [get_files C:/TDD/lab02-g03/Ejercicios/Constraints/contraints_calculadora__con_teclado.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top_maquina_estado_calcu_con_teclado2 -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_maquina_estado_calcu_con_teclado2.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_maquina_estado_calcu_con_teclado2_utilization_synth.rpt -pb top_maquina_estado_calcu_con_teclado2_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
