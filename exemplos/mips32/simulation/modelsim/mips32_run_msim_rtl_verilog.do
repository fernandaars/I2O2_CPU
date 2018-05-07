transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Thiago\ Rodrigues/Desktop/mips32 {C:/Users/Thiago Rodrigues/Desktop/mips32/mips32.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thiago\ Rodrigues/Desktop/mips32 {C:/Users/Thiago Rodrigues/Desktop/mips32/displayDecoder.v}
vlog -vlog01compat -work work +incdir+C:/Users/Thiago\ Rodrigues/Desktop/mips32 {C:/Users/Thiago Rodrigues/Desktop/mips32/mem_inst.v}

