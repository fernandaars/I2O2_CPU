// .: Main Module - TP1 :.

module tp1(
	input CLOCK_50,
	input[3:0] KEY,
	input[17:0] SW,
	output[6:0] HEX0,
	output[6:0] HEX1,
	output[6:0] HEX2,
	output[6:0] HEX3,
	output[6:0] HEX4,
	output[6:0] HEX5,
	output[6:0] HEX6,
	output[6:0] HEX7,
	output[8:0] LEDG
);

	wire [31:0] fsm0;
	wire [31:0] fsm1;
	wire [31:0] fsm2;
	wire [31:0] fsm3;
	fsm clockGenerator(
		.clk(CLOCK_50),
		.KEY(KEY),
		.fsm0(fsm0),
		.fsm1(fsm1),
		.fsm2(fsm2),
		.fsm3(fsm3)
	);
	
	// .: FETCH :.
	wire [3:0] codop;
	wire [7:0] addA;
	wire [7:0] addB_LMM;
	wire [7:0] addC;
	switchesReader switches(
		.clk(fsm0),
		.KEY(KEY),
		.SW(SW),
		.codop(codop),
		.addA(addA),
		.addB_LMM(addB_LMM),
		.addC(addC)
	);
	
	// .: DECODE and WRITEBACK:.
	wire [15:0] a;
	wire [15:0] b;
	registerFile regFile(
		.clk0(fsm1),
		.clk1(fsm3),
		.RWsignal(fsm3),
		.codop(codop),
		.addrARead(addA),
		.addrBRead(addB_LMM),
		.addrCWrite(addC),
		.data(out),
		.a(a),
		.b(b)
	);
	
	// .: EXECUTE :.
	wire neg;
   wire zero;
   wire overflow;
	wire [15:0] out;
	alu aluExecute(
		.clk(fsm2),
		.codop(codop),
		.a(a),
		.b(b),
		.neg(neg),
		.zero(zero),
		.overflow(overflow),
		.out(out)
	);
	
	displayWriter display(
		.clk(fsm2),
		.reg0(a),
		.reg1(b),
		.reg2(out),
		.HEX0(HEX0),
		.HEX1(HEX1),
		.HEX2(HEX2),
		.HEX3(HEX3),
		.HEX4(HEX4),
		.HEX5(HEX5),
		.HEX6(HEX6),
		.HEX7(HEX7)
	);
//
//	reg [31:0] clk;
//	assign LEDG[0] = clk[25];
//	assign LEDG[1] = clk[23];
//		
//	always@(posedge CLOCK_50)
//	begin
//		clk = clk + 1;
//	end
endmodule 
