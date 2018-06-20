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
	
	wire fsm0, fsm1, fsm2, fsm3;
	fsm clockGenerator(
		.clk(CLOCK_50),
		.fsm0(fsm0),
		.fsm1(fsm1),
		.fsm2(fsm2),
		.fsm3(fsm3)
	);
	
	wire FETCH_clk; // Clock for the FETCH  
	wire PRINT_clk; // Clock for the Print Process
	wire EXECUTE_clk; // Clock for the EXECUTE
	wire WRITEBACK_clk; // Clock for the WRITEBACK
	
	// Debouncing of the KEY[0] and KEY[3]
	wire key_0, key_3;
   debouncer dbk0 (
	  .clk(CLOCK_50),
	  .PB(~KEY[0]),
	  .PB_state(key_0)
    );
   debouncer dbk3 (
	  .clk(CLOCK_50),
	  .PB(~KEY[3]),
	  .PB_state(key_3)
    );
	 
	assign FETCH_clk = fsm0 && (~key_0 || ~key_3);
	assign PRINT_clk = fsm1 && (~key_0 || key_3);
	assign EXECUTE_clk = (~key_3);
	assign WRITEBACK_clk = fsm3 && (~key_3);
	
	// .: FETCH :.
	wire [3:0] codop;
	wire [7:0] addA;
	wire [7:0] addB_LMM;
	wire [7:0] addC;
	switchesReader switches(
		.clk(FETCH_clk),
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
		.clk(WRITEBACK_clk),
		.RWsignal(fsm3),
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
	
	wire [15:0] finalB = (codop == 4'd2 || codop >= 4'd6) ? addB_LMM : b;
	alu aluExecute(
		.clk(EXECUTE_clk),
		.codop(codop),
		.a(a),
		.b(finalB),
		.neg(neg),
		.zero(zero),
		.overflow(overflow),
		.out(out)
	);
	
	displayWriter display(
		.clk(PRINT_clk),
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
	
	assign LEDG[0] = FETCH_clk;
	assign LEDG[1] = PRINT_clk;
	assign LEDG[2] = EXECUTE_clk;
	assign LEDG[3] = WRITEBACK_clk;
	
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
