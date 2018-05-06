transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/james/Documents/UFMG/oc2/TP2/tb_hal_1 {/home/james/Documents/UFMG/oc2/TP2/tb_hal_1/tb_hal_1.v}
vlog -vlog01compat -work work +incdir+/home/james/Documents/UFMG/oc2/TP2/tb_hal_1 {/home/james/Documents/UFMG/oc2/TP2/tb_hal_1/register_bank.v}
vlog -vlog01compat -work work +incdir+/home/james/Documents/UFMG/oc2/TP2/tb_hal_1 {/home/james/Documents/UFMG/oc2/TP2/tb_hal_1/alu.v}
vlog -vlog01compat -work work +incdir+/home/james/Documents/UFMG/oc2/TP2/tb_hal_1 {/home/james/Documents/UFMG/oc2/TP2/tb_hal_1/hal_1.v}

