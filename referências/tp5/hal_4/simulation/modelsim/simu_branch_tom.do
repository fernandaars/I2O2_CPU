vsim work.alu work.bcd_7seg work.control_unit work.hal_4 work.mult work.mux_2 work.mux_3 work.register_bank
add wave -position insertpoint  \
sim:/hal_4/clk \
sim:/hal_4/rst \
sim:/hal_4/key0 \
sim:/hal_4/key3 \
sim:/hal_4/sw3_0 \
sim:/hal_4/sw7_4 \
sim:/hal_4/sw11_8 \
sim:/hal_4/sw15_12 \
sim:/hal_4/hex7 \
sim:/hal_4/hex6 \
sim:/hal_4/hex5 \
sim:/hal_4/hex4 \
sim:/hal_4/hex3 \
sim:/hal_4/hex2 \
sim:/hal_4/hex1 \
sim:/hal_4/hex0 \
sim:/hal_4/PC \
sim:/hal_4/gnd \
sim:/hal_4/ID_j_addr \
sim:/hal_4/ID_new_pc \
sim:/hal_4/ID_ctl_pc \
sim:/hal_4/ID_fwd_branch_cmp \
sim:/hal_4/ID_branch_cmp_resul \
sim:/hal_4/ID_pc_incr \
sim:/hal_4/ID_addr_a \
sim:/hal_4/ID_rb_a \
sim:/hal_4/ID_rb_b \
sim:/hal_4/ID_fwd_a \
sim:/hal_4/ID_fwd_b \
sim:/hal_4/ID_fwd_branch_a \
sim:/hal_4/ID_fwd_branch_b \
sim:/hal_4/ID_reg_a_aft_fwd \
sim:/hal_4/ID_reg_b_aft_fwd \
sim:/hal_4/ID_branch \
sim:/hal_4/ID_mul \
sim:/hal_4/ID_alu_b \
sim:/hal_4/ID_source_wb \
sim:/hal_4/ID_r_w \
sim:/hal_4/ID_reg_a \
sim:/hal_4/ID_reg_b \
sim:/hal_4/ID_immed \
sim:/hal_4/ID_opcode \
sim:/hal_4/ID_s2 \
sim:/hal_4/ID_s3 \
sim:/hal_4/ID_s4 \
sim:/hal_4/EX_fwd_a \
sim:/hal_4/EX_fwd_b \
sim:/hal_4/EX_oper_a \
sim:/hal_4/EX_oper_b \
sim:/hal_4/EX_reg_oper_b \
sim:/hal_4/EX_mult_out \
sim:/hal_4/EX_alu_out \
sim:/hal_4/EX_mul \
sim:/hal_4/EX_alu_b \
sim:/hal_4/EX_source_wb \
sim:/hal_4/EX_r_w \
sim:/hal_4/EX_reg_a \
sim:/hal_4/EX_reg_b \
sim:/hal_4/EX_immed \
sim:/hal_4/EX_opcode \
sim:/hal_4/EX_s2 \
sim:/hal_4/EX_s3 \
sim:/hal_4/EX_s4 \
sim:/hal_4/WB_value_wb \
sim:/hal_4/WB_source_wb \
sim:/hal_4/WB_r_w \
sim:/hal_4/WB_alu_s \
sim:/hal_4/WB_hi \
sim:/hal_4/WB_lo \
sim:/hal_4/WB_opcode \
sim:/hal_4/WB_s4 \
sim:/hal_4/hex7_6 \
sim:/hal_4/hex5_4 \
sim:/hal_4/hex3_0 \
sim:/hal_4/key3_f \
sim:/hal_4/key0_3
force -freeze sim:/hal_4/key3 0 0, 1 {50 ps} -r 100
force -freeze sim:/hal_4/key0 1 0
force -freeze sim:/hal_4/rst 0 0
force -freeze sim:/hal_4/rst 1 1
#
# PC = 0, 1, 2, 3, 4, 1, 5, 6, 3, 3, 7
#
# addi $11, 1, $11 //carrega endereços
force -freeze sim:/hal_4/sw15_12 1001 0
force -freeze sim:/hal_4/sw11_8 1011 0
force -freeze sim:/hal_4/sw7_4 0001 0
force -freeze sim:/hal_4/sw3_0 1011 0
run
# addi $12, 5, $12
force -freeze sim:/hal_4/sw15_12 1001 0
force -freeze sim:/hal_4/sw11_8 1100 0
force -freeze sim:/hal_4/sw7_4 0101 0
force -freeze sim:/hal_4/sw3_0 1100 0
run
# addi $14, 7, $14
force -freeze sim:/hal_4/sw15_12 1001 0
force -freeze sim:/hal_4/sw11_8 1110 0
force -freeze sim:/hal_4/sw7_4 0111 0
force -freeze sim:/hal_4/sw3_0 1110 0
run
# add $0, $0, $0
force -freeze sim:/hal_4/sw15_12 0000 0
force -freeze sim:/hal_4/sw11_8 0000 0
force -freeze sim:/hal_4/sw7_4 0000 0
force -freeze sim:/hal_4/sw3_0 0000 0
run
# bez -, $0, $11 //fwd $0 ALU->ID
force -freeze sim:/hal_4/sw15_12 1100 0
force -freeze sim:/hal_4/sw11_8 0000 0
force -freeze sim:/hal_4/sw7_4 0000 0
force -freeze sim:/hal_4/sw3_0 1011 0
run
# bez -, $0, $12 //fwd $0 EX->ID
force -freeze sim:/hal_4/sw15_12 1100 0
force -freeze sim:/hal_4/sw11_8 0000 0
force -freeze sim:/hal_4/sw7_4 0000 0
force -freeze sim:/hal_4/sw3_0 1100 0
run
# addi $13, 3, $13
force -freeze sim:/hal_4/sw15_12 1001 0
force -freeze sim:/hal_4/sw11_8 1101 0
force -freeze sim:/hal_4/sw7_4 0011 0
force -freeze sim:/hal_4/sw3_0 1101 0
run
# bez -, $0, $13 //fwd $13 ALU->ID
force -freeze sim:/hal_4/sw15_12 1100 0
force -freeze sim:/hal_4/sw11_8 0000 0
force -freeze sim:/hal_4/sw7_4 0000 0
force -freeze sim:/hal_4/sw3_0 1101 0
run
# bez -, $0, $13 //fwd $13 EX->ID
force -freeze sim:/hal_4/sw15_12 1100 0
force -freeze sim:/hal_4/sw11_8 0000 0
force -freeze sim:/hal_4/sw7_4 0000 0
force -freeze sim:/hal_4/sw3_0 1101 0
run
# bez -, $0, $14 //sem fwd
force -freeze sim:/hal_4/sw15_12 1100 0
force -freeze sim:/hal_4/sw11_8 0000 0
force -freeze sim:/hal_4/sw7_4 0000 0
force -freeze sim:/hal_4/sw3_0 1110 0
run
# add $1, $1, $1 //só para o novo PC aparecer na simulação
force -freeze sim:/hal_4/sw15_12 0000 0
force -freeze sim:/hal_4/sw11_8 0001 0
force -freeze sim:/hal_4/sw7_4 0001 0
force -freeze sim:/hal_4/sw3_0 0001 0
run
