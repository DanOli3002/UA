transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/ClkDividerN.vhd}
vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/Bin7SegDecoder.vhd}
vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/FSM_Final.vhd}
vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/CounterDown4.vhd}
vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/reg.vhd}
vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/FlipFlopD.vhd}
vcom -93 -work work {C:/1.LSD/PFinal/Projeto_Final/Final.vhd}

