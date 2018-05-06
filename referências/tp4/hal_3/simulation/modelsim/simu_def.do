vsim work.alu work.control_unit work.hal_3 work.mult work.mux_2 work.mux_3 work.register_bank
add wave -position insertpoint  \
sim:/hal_3/clk \
sim:/hal_3/rst \
sim:/hal_3/RI \
sim:/hal_3/CP \
sim:/hal_3/ula_s \
sim:/hal_3/HI \
sim:/hal_3/LO \
sim:/hal_3/exe_w \
sim:/hal_3/mul \
sim:/hal_3/out_mult \
sim:/hal_3/z_mul \
sim:/hal_3/ula_a_w \
sim:/hal_3/ula_b_w \
sim:/hal_3/ula_op_w \
sim:/hal_3/A_w \
sim:/hal_3/B_w \
sim:/hal_3/A \
sim:/hal_3/B \
sim:/hal_3/data_a \
sim:/hal_3/data_b \
sim:/hal_3/alu_out \
sim:/hal_3/z_alu \
sim:/hal_3/fonte_wb_w \
sim:/hal_3/fonte_cp_w \
sim:/hal_3/wb_w \
sim:/hal_3/write_data \
sim:/hal_3/cp_w \
sim:/hal_3/r_w \
sim:/hal_3/zero \
sim:/hal_3/gnd
force -freeze sim:/hal_3/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/hal_3/rst 1 0
force -freeze sim:/hal_3/rst 0 1
# addi $0, 7, $0
force -freeze sim:/hal_3/RI 1001000001110000 0
run
run
#
# addi $1, 9, $1
force -freeze sim:/hal_3/RI 1001000110010001 0
run
run
#
# mult -, $1, $0
force -freeze sim:/hal_3/RI 1111000000010000 0
run
run
#
# ghi $2, -, -
force -freeze sim:/hal_3/RI 1101001000000000 0
run
run
#
# glo $3, -, -
force -freeze sim:/hal_3/RI 1110001100000000 0
run
run
#
# subi $4, 3, $4
force -freeze sim:/hal_3/RI 1010010000110100 0
run
run
#
# addi $5, 5, $5
force -freeze sim:/hal_3/RI 1001010101010101 0
run
run
#
# mult -, $5, $4
force -freeze sim:/hal_3/RI 1111000001010100 0
run
run
#
# ghi $6, -, -
force -freeze sim:/hal_3/RI 1101011000000000 0
run
run
#
# glo $7, -, -
force -freeze sim:/hal_3/RI 1110011100000000 0
run
run
#
# subi $8, 12, $8
force -freeze sim:/hal_3/RI 1010100011001000 0
run
run
#
# subi $9, 13, $9
force -freeze sim:/hal_3/RI 1010100111011001 0
run
run
#
# mult -, $9, $8
force -freeze sim:/hal_3/RI 1111000010011000 0
run
run
#
# ghi $10, -, -
force -freeze sim:/hal_3/RI 1101101000000000 0
run
run
#
# glo $11, -, -
force -freeze sim:/hal_3/RI 1110101100000000 0
run
run
