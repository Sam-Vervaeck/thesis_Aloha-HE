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
set_param chipscope.maxJobs 2
set_msg_config -id {HDL-1065} -limit 10000
set_param project.vivado.isBlockSynthRun true
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.cache/wt [current_project]
set_property parent.project_path /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property ip_output_repo /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/CommonDefinitions.vh
read_verilog -library xil_defaultlib -sv {
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/BitReverse.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/CarrySaveAdder.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/ComplexMultiplier.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/DelayRegister.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/DelayRegisterReset.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/Expand.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FFTButterfly.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FFTButterflyAddStage.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FFTTwFctStorage.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FLPAdder.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FLPAdderDenormalization.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FLPAdderSigAddNormalize.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/FLPMultiplier.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/HammingWeight.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/INTTScale.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/IntMultPool.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/IntMultiplier_24x34.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/IntMultiplier_54x54.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/IntToFlP.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/FloatingPoint/IntToFlPWrapper.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/LeadingZeroCount.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/ModAdd.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/ModMul.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/ModSub.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/MontRed.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/MontRed_Stage.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/NTTButterfly.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/PWM.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/Utils/Project.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/RNS.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ModRing/RNSErrorPolys.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/RandomSampling/RandomSampling.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/SharedFFTBrams.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/RandomSampling/TriviumAdapter.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/UnifiedLoadLogic.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/UnifiedStoreLogic.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/UnifiedTransformation.sv
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/SharedArithmetics/UnifiedTwFctGen.sv
}
read_verilog -library xil_defaultlib {
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ComputeCore.v
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ISA_control.v
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/RandomSampling/Trivium64.v
  /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_Common/ComputeCoreWrapper.v
}
read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/INS_RAM/INS_RAM.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/INS_RAM/INS_RAM_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/FFTAllTwiddleROM/FFTAllTwiddleROM.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/FFTAllTwiddleROM/FFTAllTwiddleROM_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/MontRed_DSP_Mult/MontRed_DSP_Mult.xci

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/MontRed_DSP_MultAdd/MontRed_DSP_MultAdd.xci

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/DSP_A_x_B_doublebuffer/DSP_A_x_B_doublebuffer.xci

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/DSP_A_x_B_p_C/DSP_A_x_B_p_C.xci

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/DSP_A_x_B/DSP_A_x_B.xci

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/FFTTw_RNS_ROM/FFTTw_RNS_ROM.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/FFTTw_RNS_ROM/FFTTw_RNS_ROM_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/TernaryPolyBRAM/TernaryPolyBRAM.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/TernaryPolyBRAM/TernaryPolyBRAM_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/CBDPolyBRAM/CBDPolyBRAM.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/CBDPolyBRAM/CBDPolyBRAM_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/NTTPolyBank/NTTPolyBank.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/NTTPolyBank/NTTPolyBank_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/SharedFFTBramBank/SharedFFTBramBank.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/ip/SharedFFTBramBank/SharedFFTBramBank_ooc.xdc]

read_ip -quiet /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0.xci
set_property used_in_implementation false [get_files -all /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

set cached_ip [config_ip_cache -export -no_bom  -dir /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1 -new_name AlohaHE_ComputeCoreWrapper_0_0 -ip [get_ips AlohaHE_ComputeCoreWrapper_0_0]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top AlohaHE_ComputeCoreWrapper_0_0 -part xc7z020clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix AlohaHE_ComputeCoreWrapper_0_0_ AlohaHE_ComputeCoreWrapper_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AlohaHE_ComputeCoreWrapper_0_0_stub.v
 lappend ipCachedFiles AlohaHE_ComputeCoreWrapper_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl
 lappend ipCachedFiles AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.v
 lappend ipCachedFiles AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.vhdl
 lappend ipCachedFiles AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp AlohaHE_ComputeCoreWrapper_0_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips AlohaHE_ComputeCoreWrapper_0_0]
}

rename_ref -prefix_all AlohaHE_ComputeCoreWrapper_0_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef AlohaHE_ComputeCoreWrapper_0_0.dcp
create_report "AlohaHE_ComputeCoreWrapper_0_0_synth_1_synth_report_utilization_0" "report_utilization -file AlohaHE_ComputeCoreWrapper_0_0_utilization_synth.rpt -pb AlohaHE_ComputeCoreWrapper_0_0_utilization_synth.pb"

if { [catch {
  file copy -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1/AlohaHE_ComputeCoreWrapper_0_0.dcp /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1/AlohaHE_ComputeCoreWrapper_0_0.dcp /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1/AlohaHE_ComputeCoreWrapper_0_0_stub.v /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1/AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1/AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.v /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.runs/AlohaHE_ComputeCoreWrapper_0_0_synth_1/AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.vhdl /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.ip_user_files/ip/AlohaHE_ComputeCoreWrapper_0_0]} {
  catch { 
    file copy -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.v /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.ip_user_files/ip/AlohaHE_ComputeCoreWrapper_0_0
  }
}

if {[file isdir /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.ip_user_files/ip/AlohaHE_ComputeCoreWrapper_0_0]} {
  catch { 
    file copy -force /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.srcs/sources_1/bd/AlohaHE/ip/AlohaHE_ComputeCoreWrapper_0_0/AlohaHE_ComputeCoreWrapper_0_0_stub.vhdl /home/fkrieger/Desktop/Aloha-HE/Aloha-HE_ZYNQ/Aloha-HE_ZYNQ.ip_user_files/ip/AlohaHE_ComputeCoreWrapper_0_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
