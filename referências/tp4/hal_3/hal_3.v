module hal_3 (
    input clk,
	 input rst,
	 input [15:0]RI,
	 output reg [15:0]CP
);

	reg [15:0]ula_s;
	reg [15:0]HI;
	reg [15:0]LO;
	
	wire exe_w;
	wire mul;
	wire [31:0]out_mult;
	wire z_mul;
	wire ula_a_w;
	wire [1:0]ula_b_w;
	wire [3:0]ula_op_w;	
	wire [15:0]A_w;
	wire [15:0]B_w;
	reg [15:0]A;
	reg [15:0]B;
	wire [15:0]data_a;
	wire [15:0]data_b;
	wire [15:0]alu_out;
	wire z_alu;
	wire [1:0]fonte_wb_w;	
	wire [1:0]fonte_cp_w;
	wire wb_w;
	wire [15:0]write_data;
	wire [15:0]cp_w;
	wire r_w;
	wire zero = z_alu & z_mul;
	wire gnd = 0;

	always@(A_w)
		A = A_w;

	always@(B_w)
		B = B_w;

	always@(alu_out)
		ula_s = alu_out;

	always@(posedge clk or posedge rst) begin
		if(rst)
			CP = 0;
		else if(wb_w)
			CP = cp_w;
		else
			CP = CP;
	end

	always@(posedge exe_w) begin
		if(mul) begin
			LO = out_mult[15:0];
			HI = out_mult[31:16];
		end
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
	
	mux_3 mux_wb(
		.clt(fonte_wb_w),
		.sig_0(ula_s),
		.sig_1(HI),
		.sig_2(LO),
		.out(write_data)
	);
	
	control_unit ctl_unit(
		.clk(clk),
		.rst(rst),
		.zero(zero),
		.op_code(RI[15:12]),
		.exe(exe_w),
		.wb(wb_w),
		.ula_op(ula_op_w),
		.ula_a(ula_a_w),
		.ula_b(ula_b_w),
		.fonte_cp(fonte_cp_w),
		.fonte_wb(fonte_wb_w),
		.mul(mul),
		.r_w(r_w)
	);
	
    register_bank r_bank (
        .clk(wb_w),
		  .rst(rst),
        .addr_a(RI[3:0]),
        .addr_b(RI[7:4]),
        .reg_data(write_data),
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
        .zero(z_alu),
        .overflow(gnd)
    );
	 
	mult mult_0(
		.data_a(data_a),
		.data_b(data_b),
		.out(out_mult),
		.zero(z_mul),
		.neg(gnd),
		.overflow(gnd)
	);
	
endmodule

