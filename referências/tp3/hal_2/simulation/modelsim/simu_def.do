vsim -Lf altera_mf_ver hal_2
add wave -position insertpoint  \
sim:/hal_2/clk \
sim:/hal_2/rst \
sim:/hal_2/CP \
sim:/hal_2/RI \
sim:/hal_2/ula_s \
sim:/hal_2/esc_cond_cp_w \
sim:/hal_2/esc_cp_w \
sim:/hal_2/ula_op_w \
sim:/hal_2/ula_a_w \
sim:/hal_2/ula_b_w \
sim:/hal_2/esc_ir_w \
sim:/hal_2/fonte_cp_w \
sim:/hal_2/esc_reg_w \
sim:/hal_2/r_w \
sim:/hal_2/A_w \
sim:/hal_2/B_w \
sim:/hal_2/A \
sim:/hal_2/B \
sim:/hal_2/data_a \
sim:/hal_2/data_b \
sim:/hal_2/zero_w \
sim:/hal_2/cp_clk \
sim:/hal_2/alu_out \
sim:/hal_2/ri_w \
sim:/hal_2/cp_w \
sim:/hal_2/gnd
force -freeze sim:/hal_2/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/hal_2/rst 1 0
force -freeze sim:/hal_2/rst 0 1
