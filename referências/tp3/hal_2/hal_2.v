module hal_2 (
    input clk,
	 input rst
);

	reg [15:0]CP;
	reg [15:0]RI;
	reg [15:0]ula_s;
	
	wire esc_cond_cp_w;
	wire esc_cp_w;
	wire [3:0]ula_op_w;
	wire ula_a_w;
	wire [1:0]ula_b_w;
	wire esc_ir_w;
	wire [1:0]fonte_cp_w;
	wire esc_reg_w;
	wire r_w;
	
	wire [15:0]A_w;
	wire [15:0]B_w;
	reg [15:0]A;
	reg [15:0]B;
	wire [15:0]data_a;
	wire [15:0]data_b;
	wire zero_w;
	wire cp_clk = esc_cond_cp_w & zero_w | esc_cp_w;
	wire [15:0]alu_out;
	wire [15:0]ri_w;
	wire [15:0]cp_w;
	wire gnd = 0;

	always@(A_w)
		A = A_w;

	always@(B_w)
		B = B_w;

	always@(alu_out)
		ula_s = alu_out;

	always@(ri_w)
		RI = ri_w;

	always@(posedge clk or posedge rst) begin
		if(rst)
			CP = 0;
		else if(cp_clk)
			CP = cp_w;
		else
			CP = CP;
	end

	mux_2 mux_a(
		.clt(ula_a_w),
		.sig_0(CP),
		.sig_1(A),
		.out(data_a)
	);
	
	mux_3 mux_b(
		.clt(ula_b_w),
		.sig_0(B),
		.sig_1(16'd1),
		.sig_2({12'd0, RI[7:4]}),
		.out(data_b)
	);

	mux_3 mux_cp(
		.clt(fonte_cp_w),
		.sig_0(alu_out),
		.sig_1(ula_s),
		.sig_2({CP[15:12], RI[11:0]}),
		.out(cp_w)
	);

	control_unit ctl_unit(
		.clk(clk),
		.rst(rst),
		.zero(zero_w),
		.op_code(RI[15:12]),
		.EscCondCP(esc_cond_cp_w),
		.EscCP(esc_cp_w),
		.ULA_OP(ula_op_w),
		.ULA_A(ula_a_w),
		.ULA_B(ula_b_w),
		.EscIR(esc_ir_w),
		.FonteCP(fonte_cp_w),
		.EscReg(esc_reg_w),
		.r_w(r_w)
	);
	 
	i_mem i_m(
		.address(CP[11:0]),
		.clock(esc_ir_w),
		.q(ri_w)
	);

    register_bank r_bank (
        .clk(esc_cp_w),
		  .rst(rst),
        .addr_a(RI[3:0]),
        .addr_b(RI[7:4]),
        .reg_data(ula_s),
        .write_reg(RI[11:8]),
        .r_w(r_w),
        .reg_a(A_w),
        .reg_b(B_w)
    );

    alu alu_0 (
        .codop(ula_op_w),
        .data_a(data_a),
        .data_b(data_b),
        .out(alu_out),
        .neg(gnd),
        .zero(zero_w),
        .overflow(gnd)
    );

endmodule
