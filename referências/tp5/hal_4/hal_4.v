/*********************************************************
	OBSERVAÇAO:

Devido ao alto numero de ciclos de clock necessarios para
o debouncing do push button, a declaraçao do modulo
referente ele deve ser comentado ao se fazer a simulaçao,
conforme descrito logo ao final deste modulo.
*********************************************************/

module hal_4 (
	input clk,
	input rst,
	input key0,
	input key3,
	input [3:0]sw3_0,
	input [3:0]sw7_4,    // reg p/ hex5_4
	input [3:0]sw11_8,    // reg p/ hex7_6
	input [3:0]sw15_12,
	output [6:0]hex7,
	output [6:0]hex6,
	output [6:0]hex5,
	output [6:0]hex4,
	output [6:0]hex3,
	output [6:0]hex2,
	output [6:0]hex1,
	output [6:0]hex0,
	output reg [15:0]PC
);

/*********************************************************
	Declaraçao de sinais
*********************************************************/

	wire gnd = 0;

	//sinais decodificaçao
	wire [11:0]ID_j_addr = {sw11_8, sw7_4, sw3_0};
	wire [15:0]ID_new_pc;
	wire [1:0]ID_ctl_pc; //ctl mux
	wire ID_fwd_branch_cmp; //ctl mux
	wire ID_branch_cmp_resul;
	wire [15:0]ID_pc_incr;
	wire [3:0]ID_addr_a;
	wire [15:0]ID_rb_a; //valores que saem do banco de registradores
	wire [15:0]ID_rb_b;
	wire ID_fwd_a; //ctl mux
	wire ID_fwd_b; //ctl mux
	wire [1:0]ID_fwd_branch_a; //ctl mux
	wire [1:0]ID_fwd_branch_b; //ctl mux
	wire [15:0]ID_reg_a_aft_fwd; //valor dps do encaminhamento normal (EX para ID)
	wire [15:0]ID_reg_b_aft_fwd;

	wire ID_branch;
	wire ID_mul;
	wire ID_alu_b;
	wire [1:0]ID_source_wb;
	wire ID_r_w;
	wire [15:0]ID_reg_a;
	wire [15:0]ID_reg_b;
	wire [15:0]ID_immed = {12'd0, sw7_4};
	wire [3:0]ID_opcode = sw15_12;
	wire [3:0]ID_s2 = sw3_0;
	wire [3:0]ID_s3 = sw7_4;
	wire [3:0]ID_s4 = sw11_8;
	
	//sinais execuçao
	wire EX_fwd_a; //ctl mux
	wire EX_fwd_b; //ctl mux
	wire [15:0]EX_oper_a;
	wire [15:0]EX_oper_b;
	wire [15:0]EX_reg_oper_b;
	wire [31:0]EX_mult_out;
	wire [15:0]EX_alu_out;

	reg EX_mul;
	reg EX_alu_b; //ctl mux
	reg [1:0]EX_source_wb;
	reg EX_r_w;
	reg [15:0]EX_reg_a;
	reg [15:0]EX_reg_b;
	reg [15:0]EX_immed;
	reg [3:0]EX_opcode;
	reg [3:0]EX_s2;
	reg [3:0]EX_s3;
	reg [3:0]EX_s4;

	//sinais escrita banco registradores
	wire [15:0]WB_value_wb;

	reg [1:0]WB_source_wb;
	reg WB_r_w;
	reg [15:0]WB_alu_s;
	reg [15:0]WB_hi;
	reg [15:0]WB_lo;
	reg [3:0]WB_opcode;
	reg [3:0]WB_s4;
	
	//sinais de interface
	wire [7:0]hex7_6; //mostrar sw11_8 (key0)
	wire [7:0]hex5_4; //mostrar sw7_4 (key0)
	wire [15:0]hex3_0; //mostrar o q sera escrito no banco de registradores (key3)
	wire key3_f; //livre de deboucing
	reg key0_3; // 0 se key0 foi pressionado, 1 se key3 foi pressionado
	
/*********************************************************
	Decodificaçao
*********************************************************/

	control_unit ctl_unit(
		.clk(~key3_f),
		.op_code(ID_opcode),
		.alu_b(ID_alu_b), //0 reg, 1 imediato
		.mul(ID_mul),
		.source_wb(ID_source_wb), //0 alu, 1 HI, 2 LO
		.r_w(ID_r_w)
	);

    register_bank r_bank (
        .clk(~key3_f),
		  .rst(~rst),
        .addr_a(ID_addr_a), //key0 - ID_s4, key3 - ID_s2
        .addr_b(ID_s3), //key0 - ID_s3, key3 - ID_s3
        .reg_data(WB_value_wb),
        .write_reg(WB_s4),
        .r_w(WB_r_w),
        .reg_a(ID_rb_a),
        .reg_b(ID_rb_b)
    );

	//implementa forwarding de EX para ID
	assign ID_fwd_a = (ID_addr_a == WB_s4 && WB_opcode != 4'd11 && WB_opcode != 4'd12 && WB_opcode != 4'd15) ? 1'd1 : 1'd0;
	assign ID_fwd_b = (ID_s3 == WB_s4 && WB_opcode != 4'd11 && WB_opcode != 4'd12 && WB_opcode != 4'd15) ? 1'd1 : 1'd0;
	 
	mux_2 fwd_reg_a(
		.clt(ID_fwd_a),
		.sig_0(ID_rb_a),
		.sig_1(WB_value_wb),
		.out(ID_reg_a_aft_fwd)
	);
	
	mux_2 fwd_reg_b(
		.clt(ID_fwd_b),
		.sig_0(ID_rb_b),
		.sig_1(WB_value_wb),
		.out(ID_reg_b_aft_fwd)
	);

	//fowarding p/ branch (evitar stall) do valor imediatamente na saida da alu, ou nos reg HI ou LO para o ID
	assign ID_fwd_branch_a = (ID_opcode == 4'd12 && EX_opcode == 4'd13 && ID_s2 == EX_s4) ? 2'd3 :
									(ID_opcode == 4'd12 && EX_opcode == 4'd14 && ID_s2 == EX_s4) ? 2'd2:
									(ID_opcode == 4'd12 && EX_opcode != 4'd11 && EX_opcode != 4'd12 && EX_opcode != 4'd13 && EX_opcode != 4'd14 && EX_opcode != 4'd15 && ID_s2 == EX_s4) ? 2'd1:
									2'd0;
	assign ID_fwd_branch_b = (ID_opcode == 4'd12 && EX_opcode == 4'd14 && ID_s3 == EX_s4) ? 2'd3 :
									(ID_opcode == 4'd12 && EX_opcode == 4'd14 && ID_s3 == EX_s4) ? 2'd2:
									(ID_opcode == 4'd12 && EX_opcode != 4'd11 && EX_opcode != 4'd12 && EX_opcode != 4'd13 && EX_opcode != 4'd14 && EX_opcode != 4'd15 && ID_s3 == EX_s4) ? 2'd1:
									2'd0;

	mux_4 fwd_branch_s2(
		.clt(ID_fwd_branch_a),
		.sig_0(ID_reg_a_aft_fwd),
		.sig_1(EX_alu_out), //inst no EX e´ logico/aritmetica
		.sig_2(WB_lo), //se a inst no EX e´ GLO
		.sig_3(WB_hi), //inst no EX e´ GHI
		.out(ID_reg_a)
	);
	
	mux_4 fwd_branch_s3(
		.clt(ID_fwd_branch_b),
		.sig_0(ID_reg_b_aft_fwd),
		.sig_1(EX_alu_out), //inst no EX e´ logico/aritmetica
		.sig_2(WB_lo), //se a inst no EX e´ GLO
		.sig_3(WB_hi), //inst no EX e´ GHI
		.out(ID_reg_b)
	);
	
	//beq adiantado e calculo do proximo PC
	assign ID_branch_cmp_resul = (ID_reg_b == 16'd0) ? 1'd1 : 1'd0; //beq adiantado
	assign ID_pc_incr = PC + 16'd1;
	assign ID_ctl_pc = (ID_opcode == 4'd11) ? 2'd1 : //se for jump
							(ID_opcode == 4'd12 && ID_branch_cmp_resul == 1'd1) ? 2'd2 : //se for branch tomado
							2'd0;
	mux_3 mux_pc(
		.clt(ID_ctl_pc),
		.sig_0(ID_pc_incr),
		.sig_1({4'd0, ID_j_addr}),
		.sig_2(ID_reg_a),
		.out(ID_new_pc)
	);
	
	always @(negedge key3_f or negedge rst) begin //registradores ID/EX
		if(~rst) begin
			PC <= 0;
			EX_mul <= 0;
			EX_alu_b <= 0;
			EX_source_wb <= 0;
			EX_r_w <= 0;
			EX_reg_a <= 0;
			EX_reg_b <= 0;
			EX_immed <= 0;
			EX_opcode <= 0;
			EX_s2 <= 0;
			EX_s3 <= 0;
			EX_s4 <= 0;
		end else begin
			PC <= ID_new_pc;
			EX_mul <= ID_mul;
			EX_alu_b <= ID_alu_b;
			EX_source_wb <= ID_source_wb;
			EX_r_w <= ID_r_w;
			EX_reg_a <= ID_reg_a;
			EX_reg_b <= ID_reg_b;
			EX_immed <= ID_immed;
			EX_opcode <= ID_opcode;
			EX_s2 <= ID_addr_a;
			EX_s3 <= ID_s3;
			EX_s4 <= ID_s4;
		end
	end
	
/*********************************************************
	Execuçao
*********************************************************/
	
	//implementa forwarding de EX para EX
	assign EX_fwd_a = (EX_s2 == WB_s4 && WB_opcode != 4'd11 && WB_opcode != 4'd12 && WB_opcode != 4'd15) ? 1'd1 : 1'd0;
	assign EX_fwd_b = (EX_s3 == WB_s4 && WB_opcode != 4'd11 && WB_opcode != 4'd12 && WB_opcode != 4'd15) ? 1'd1 : 1'd0;
	
	mux_2 fwd_a(
		.clt(EX_fwd_a),
		.sig_0(EX_reg_a),
		.sig_1(WB_value_wb),
		.out(EX_oper_a)
	);
	
	mux_2 fwd_b(
		.clt(EX_fwd_b),
		.sig_0(EX_reg_b),
		.sig_1(WB_value_wb),
		.out(EX_reg_oper_b)
	);
	
	mux_2 mux_b(
		.clt(EX_alu_b),
		.sig_0(EX_reg_oper_b),
		.sig_1(EX_immed),
		.out(EX_oper_b)
	);

	alu alu_0 (
		.codop(EX_opcode),
		.data_a(EX_oper_a),
		.data_b(EX_oper_b),
		.out(EX_alu_out),
		.neg(gnd),
		.zero(gnd),
		.overflow(gnd)
	);
	 
	mult mult_0(
		.data_a(EX_oper_a),
		.data_b(EX_oper_b),
		.out(EX_mult_out),
		.zero(gnd),
		.neg(gnd)
	);
	
	always @(negedge key3_f or negedge rst) begin //registradores EX/WB
		if(~rst) begin
			WB_hi <= 0;
			WB_lo <= 0;
			WB_source_wb <= 0;
			WB_r_w <= 0;
			WB_alu_s <= 0;
			WB_opcode <= 0;
			WB_s4 <= 0;
		end else begin
			if(EX_mul) begin
				WB_hi <= EX_mult_out[15:8];
				WB_lo <= EX_mult_out[7:0];
			end else begin
				WB_hi <= WB_hi;
				WB_lo <= WB_lo;
			end
			WB_source_wb <= EX_source_wb;
			WB_r_w <= EX_r_w;
			WB_alu_s <= EX_alu_out;
			WB_opcode <= EX_opcode;
			WB_s4 <= EX_s4;
		end
	end

/*********************************************************
	Escrita no banco registradores
*********************************************************/

	mux_3 mux_wb(
		.clt(WB_source_wb),
		.sig_0(WB_alu_s),
		.sig_1(WB_hi),
		.sig_2(WB_lo),
		.out(WB_value_wb)
	);

/*********************************************************
	Instanciaçao I/O
*********************************************************/

	assign ID_addr_a = (key0_3) ? ID_s2 : ID_s4;

	always @(negedge key0 or negedge key3) begin //usado valor sem tratativa de debucing p/ evitar delay
		if(~key0) begin
			key0_3 = 0;
		end else if(~key3) begin
			key0_3 = 1;
		end
	end

	assign hex7_6 = (key0_3) ? 8'd0 : ID_reg_a[7:0];
	assign hex5_4 = (key0_3) ? 8'd0 : ID_reg_b[7:0];
	assign hex3_0 = (key0_3) ? WB_value_wb : 16'd0;

	//COMENTAR A LINHA ABAIXO PARA UPLOAD NA ALTERA
//	assign key3_f = key3;
	

	//COMENTAR O DEBOUCER PARA SIMULAR
	debouncer dbk3 (
		.clk(clk),
		.PB(~key3),
		.PB_state(key3_f)
	);

	bcd_7seg hex_7 (
		.hex_value(hex7_6[7:4]),
		.disp_value(hex7)
	);

	bcd_7seg hex_6 (
		.hex_value(hex7_6[3:0]),
		.disp_value(hex6)
	);

	bcd_7seg hex_5 (
		.hex_value(hex5_4[7:4]),
		.disp_value(hex5)
	);

	bcd_7seg hex_4 (
		.hex_value(hex5_4[3:0]),
		.disp_value(hex4)
	);

	bcd_7seg hex_3 (
		.hex_value(hex3_0[15:12]),
		.disp_value(hex3)
	);

	bcd_7seg hex_2 (
		.hex_value(hex3_0[11:8]),
		.disp_value(hex2)
	);

	bcd_7seg hex_1 (
		.hex_value(hex3_0[7:4]),
		.disp_value(hex1)
	);

	bcd_7seg hex_0 (
		.hex_value(hex3_0[3:0]),
		.disp_value(hex0)
	);
	
endmodule

