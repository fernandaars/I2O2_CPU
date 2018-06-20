// .: Main Module - TP1 :.

module tp2(
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

	integer i;
	reg [9:0] PC;						//Contador de Programa
	reg [9:0] CICLO = 1021;			//Ciclo do processador
	reg [15:0] IRF; 					//Instrucao no estagio fetch
	reg [15:0] IRD; 					//Instrucao no estagio decode
	reg [15:0] IRE; 					//Instrucao no estagio execute
	reg [15:0] IRW; 					//Instrucao no estagio writeback
	reg [15:0] registers [15:0];	//Banco de Registradores
	reg [15:0] saida_ula; 			//Saida da ula no estagio de execute
	reg [15:0] saida_ulaW; 			//Saida da ula no estagio de writeback
	reg [15:0] R1E; 					//Primer operando a ser utilizado no estagio de execute
	reg [15:0] R2E; 					//Segundo operando a ser utilizado no estagio de execute

	reg [0:0] START = 0;				//Indica o estado de inicio do processador

	wire fsm0, fsm1, fsm2, fsm3;
	fsm clockGenerator(
		.clk(clk[25]),
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
	wire [3:0] codop = outMEM[15:12];
	wire [7:0] addC = outMEM[11:8];
	wire [7:0] addB_LMM = outMEM[7:4];
	wire [7:0] addA = outMEM[3:0];
	wire [15:0] outMEM;
	
	mem_inst mem(
		.address(PC),
		.clock(clk[25]),
		.q(outMEM)
	);
	
//	switchesReader switches(
//		.clk(FETCH_clk),
//		.KEY(KEY),
//		.SW(SW),
//		.codop(codop),
//		.addA(addA),
//		.addB_LMM(addB_LMM),
//		.addC(addC)
//	);
	
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
	
	wire [15:0] outALU;
	wire [15:0] outMUX;
	
	wire [15:0] finalB = (codop == 4'd2 || codop >= 4'd6) ? addB_LMM : b;
	alu aluExecute(
		.clk(EXECUTE_clk),
		.codop(codop),
		.a(a),
		.b(finalB),
		.neg(neg),
		.zero(zero),
		.overflow(overflow),
		.out(outALU)
	);
	
	mux muxExecute(
		.clk(EXECUTE_clk),
		.codop(codop),
		.a(a),
		.b(finalB),
		.neg(neg),
		.zero(zero),
		.overflow(overflow),
		.out(outMUX)
	);
	
	wire [15:0] out = (codop == 4'd11)? outMUX : outALU;
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
	reg [31:0] clk;
//	assign LEDG[0] = clk[25];
//	assign LEDG[1] = clk[23];
//		
	always@(posedge CLOCK_50)
	begin
		clk = clk + 1;
	end
endmodule 

//module pipeline(
//	input				CLOCK_50,// clock da placa
//	input[3:0]		KEY, // Keys
//	input[17:0]		SW,  // Sw
//	output[8:0]		LEDG,
//	output[0:6]		HEX0, // Display de 7 segmentos 0
//	output[0:6]		HEX1, // Display de 7 segmentos 1
//	output[0:6]		HEX2, // Display de 7 segmentos 2
//	output[0:6]		HEX3, // Display de 7 segmentos 3
//	output[0:6]		HEX4  // Display de 7 segmentos 4
//);
//
//
//reg [31:0] clk;
//integer i;
//
//
//reg [9:0] PC;						//Contador de Programa
//reg [9:0] CICLO = 1021;			//Ciclo do processador
//reg [15:0] IRF; 					//Instrucao no estagio fetch
//reg [15:0] IRD; 					//Instrucao no estagio decode
//reg [15:0] IRE; 					//Instrucao no estagio execute
//reg [15:0] IRW; 					//Instrucao no estagio writeback
//reg [15:0] registers [15:0];	//Banco de Registradores
//reg [15:0] saida_ula; 			//Saida da ula no estagio de execute
//reg [15:0] saida_ulaW; 			//Saida da ula no estagio de writeback
//reg [15:0] R1E; 					//Primer operando a ser utilizado no estagio de execute
//reg [15:0] R2E; 					//Segundo operando a ser utilizado no estagio de execute
//
//reg [0:0] START = 0;				//Indica o estado de inicio do processador
//
//wire [15:0] out_mem_inst;     //Saida da memoria de instrucoes
//
//mem_inst mem_i(.address(PC),.clock(clk[25]),.q(out_mem_inst));	//Instancia do modulo da memoria de instrucoes. A saida da memoria e salva em out_mem_inst sempre que PC mudar
//
////displayDecoder DP7_0(.entrada(CICLO[7:0]),.saida(HEX0)); Testar na placa
////displayDecoder DP7_1(.entrada(registers[IRW[3:0]][7:0]),.saida(HEX1)); Testar na placa
//
//assign LEDG[0] = clk[25];
//
//always@(posedge CLOCK_50)begin
//		clk = clk + 1;
//end
//
//
//always@(posedge clk[25]) //Fetch
//begin
//		
//		if(KEY[0] == 0)	//Reiniciando o processador
//		begin
//			PC <= 1023;
//			//Inicializacao do banco de registradores
//			for(i = 0; i < 16; i = i + 1)
//			begin
//				registers[i] = 16'b0000000000000000;
//			end
//			registers[1] = 16'b0000000000000001;
//			registers[2] = 16'b0000000000000010;
//		end
//		else if(KEY[0] == 1 && START == 0)	//Indica que o processador deve iniciar a execucao do codigo. START = 1
//		begin
//			START = 1;
//			CICLO <= 1021;
//		end
//		else if(KEY[0] == 1 && START == 1)	//Estagio de fetch
//		begin
//			IRF <= out_mem_inst;	//Salva a saida da memoria em IRF
//			PC <= PC + 1;			//PC incrementado em 1 para ler a proxima instrucao
//			
//			IRD <= IRF;				//Salva a instrucao lida em IRD para ser utilizada no estagio de decode
//			CICLO <= CICLO + 1;  //Incrementa o ciclo 
//		end
//end
//
//
//
//always@(posedge clk[25]) //Decode
//begin
//	if(START == 1 && KEY[0] == 1)
//	begin
//		R1E <= registers[IRD[11:8]];	//Salva o valor do primeiro operando a ser utilizado no estagio de execute
//		R2E <= registers[IRD[7:4]];   //Salva o valor do segundo operando a ser utilizado no estagio de execute
//		
//		IRE <= IRD;							//Salva a instrucao no estagio de decode em IRE para ser utilizada no estagio de execute
//	end
//end
//
//always@(posedge clk[25]) //Execute
//begin
//	if(START == 1 && KEY[0] == 1)
//	begin
//		if(IRE[15:12] == 4'b0001)		//Adicao = 4'b0001
//		begin
//			saida_ula <= R1E + R2E;
//		end
//		else if(IRE[15:12] == 4'b0010) //Subtracao = 4'b0010
//		begin
//			saida_ula <= R1E - R2E;
//		end
//		IRW <= IRE;						//Salva a instrucao no estagio de execute em IRW para ser utilizada no estagio de writeback
//		saida_ulaW <= saida_ula;   
//	end
//end
//
//always@(posedge clk[25]) //Writeback
//begin
//	if(START == 1 && KEY[0] == 1)
//	begin
//		registers[IRW[3:0]] <= saida_ula;	//Escreve no banco de registradores a saida da ula calculada no estagio de execute
//	end
//end
//
//endmodule

