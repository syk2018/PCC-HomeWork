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
create_project -in_memory -part xc7a100tfgg484-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.cache/wt} [current_project]
set_property parent.project_path {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.xpr} [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {d:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files {{D:/Mygit/PCC-HomeWork/5. R_Instructions/config.coe}}
read_verilog -library xil_defaultlib {
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/ALU.v}
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/CPU.v}
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/Display.v}
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/Instruction_Decoder.v}
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/Instructions.v}
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/Register.v}
  {D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/new/board.v}
}
read_ip -quiet {{D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/ip/Inst_ROM/Inst_ROM.xci}}
set_property used_in_implementation false [get_files -all {{d:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/sources_1/ip/Inst_ROM/Inst_ROM_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/constrs_1/new/board.xdc}}
set_property used_in_implementation false [get_files {{D:/Mygit/PCC-HomeWork/5. R_Instructions/R_Instructions.srcs/constrs_1/new/board.xdc}}]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top board -part xc7a100tfgg484-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef board.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file board_utilization_synth.rpt -pb board_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
