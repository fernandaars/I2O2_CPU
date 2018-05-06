module tb_hal_1(
	input	a,
	output b
);
assign b = ~a;
	reg	clk;
	reg					key0;		// mostra registradores
	reg 				key3;	// faz operaçao
	reg		[3:0]		sw3_0;	// $s2 p/ inst
	reg		[3:0]		sw7_4;	// $s3 ou imm p/ inst | reg p/ hex5_4
	reg		[3:0]		sw11_8;	// $s4 p/ inst | reg p/ hex7_6
	reg		[3:0]		sw15_12;	// codop
	wire	[6:0]		hex7;		// msb reg sw11_8
	wire	[6:0]		hex6;		// lsb reg sw11_8
	wire	[6:0]		hex5;		// msb reg sw7_4
	wire	[6:0]		hex4;		// lsb reg sw7_4
	wire	[6:0]		hex3;		// 4 a seguir, resultado
	wire	[6:0]		hex2;
	wire	[6:0]		hex1;
	wire	[6:0]		hex0;


	hal_1 dut(
		.clk(clk),
		.key0(~key0),		// mostra registradores
		.key3(~key3),		// faz operaçao
		.sw3_0(sw3_0),	// $s2 p/ inst
		.sw7_4(sw7_4),	// $s3 ou imm p/ inst | reg p/ hex5_4
		.sw11_8(sw11_8),	// $s4 p/ inst | reg p/ hex7_6
		.sw15_12(sw15_12),	// codop
		.hex7(hex7),		// msb reg sw11_8
		.hex6(hex6),		// lsb reg sw11_8
		.hex5(hex5),		// msb reg sw7_4
		.hex4(hex4),		// lsb reg sw7_4
		.hex3(hex3),		// 4 a seguir, resultado
		.hex2(hex2),
		.hex1(hex1),
		.hex0(hex0)
	);

	always
		#5 clk = ~clk;
	
	initial begin //valores de teste
		clk = 0;
		key0 = 1'b0;
		key3 = 1'b0;

//		$monitor("opcode %d  s4 %d  s3 %d  s2 %d", sw15_12, sw11_8, sw7_4, sw3_0);
//		$monitor("hex7 %07b hex6 %07b", hex7, hex6);
//		$monitor("hex5 %07b hex4 %07b", hex5, hex4);
		$monitor("hex3 %07b hex2 %07b hex1 %07b hex0 %07b", hex3, hex2, hex1, hex0);
		
		sw15_12 = 4'b1001;
		sw11_8 = 4'b0100;
		sw7_4 = 4'b0011;
		sw3_0 = 4'b0000;
		key3 = 1'b1;
		#1
		key3 = 1'b0;
		#9
		sw15_12 = 4'b1001;
		sw11_8 = 4'b0100;
		sw7_4 = 4'b0010;
		sw3_0 = 4'b0000;
		key3 = 1'b1;
		#1
		key3 = 1'b0;
		#9
		sw15_12 = 4'b1001;
		sw11_8 = 4'b0100;
		sw7_4 = 4'b0001;
		sw3_0 = 4'b0000;
		key3 = 1'b1;
		#1
		key3 = 1'b0;
		#9		
		$finish;
	end
/*
	initial begin //mostrar os valores

		$monitor("opcode %d  s4 %d  s3 %d  s2 %d", sw15_12, sw11_8, sw7_4, sw3_0);
		$monitor("hex7 %07b hex6 %07b", hex7, hex6);
		$monitor("hex5 %07b hex4 %07b", hex5, hex4);
		$monitor("hex3 %07b hex2 %07b hex1 %07b hex0 %07b", hex3, hex2, hex1, hex0);
		$monitor("---------------------------------------------------------------\n");

		$monitor("opcode %d  s4 %d  s3 %d  s2 %d", sw15_12, sw11_8, sw7_4, sw3_0);
		$monitor("hex7 %07b hex6 %07b", hex7, hex6);
		$monitor("hex5 %07b hex4 %07b", hex5, hex4);
		$monitor("hex3 %07b hex2 %07b hex1 %07b hex0 %07b", hex3, hex2, hex1, hex0);
		$monitor("---------------------------------------------------------------\n");

		$monitor("opcode %d  s4 %d  s3 %d  s2 %d", sw15_12, sw11_8, sw7_4, sw3_0);
		$monitor("hex7 %07b hex6 %07b", hex7, hex6);
		$monitor("hex5 %07b hex4 %07b", hex5, hex4);
		$monitor("hex3 %07b hex2 %07b hex1 %07b hex0 %07b", hex3, hex2, hex1, hex0);
		$monitor("---------------------------------------------------------------\n");
	end //adicionar mais "displays" para mais testes
*/
endmodule

