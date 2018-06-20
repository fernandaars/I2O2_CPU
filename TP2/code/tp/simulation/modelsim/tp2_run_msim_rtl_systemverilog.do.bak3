transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Fernanda\ Rodrigues/Desktop/tp {C:/Users/Fernanda Rodrigues/Desktop/tp/debouncer.v}
vlog -vlog01compat -work work +incdir+C:/Users/Fernanda\ Rodrigues/Desktop/tp {C:/Users/Fernanda Rodrigues/Desktop/tp/pipeline.v}
vlog -vlog01compat -work work +incdir+C:/Users/Fernanda\ Rodrigues/Desktop/tp {C:/Users/Fernanda Rodrigues/Desktop/tp/displayDecoder.v}
vcom -93 -work work {C:/Users/Fernanda Rodrigues/Desktop/tp/memory.vhd}

