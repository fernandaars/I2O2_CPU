module pipeline(
	input			 CLOCK_50, // CLOCK 
	input[3:0]	 KEY,      // KEYS
	input[17:0]	 SW,       // SWITCHES
	output[8:0]	 LEDG,     // LEDS
	output[0:6]	 HEX0,     // DISPLAY 0
	output[0:6]	 HEX1,     // DISPLAY 1
	output[0:6]	 HEX2,     // DISPLAY 2
	output[0:6]	 HEX3,     // DISPLAY 3
	output[0:6]	 HEX4,     // DISPLAY 4
	output[0:6]	 HEX5,     // DISPLAY 5
	output[0:6]	 HEX6,     // DISPLAY 6
	output[0:6]	 HEX7      // DISPLAY 7
);

	reg [31:0] clk;
	always@(posedge CLOCK_50)begin
			clk = clk + 1;
	end
	
	assign LEDG[0] = clk[25];
	integer i, COUNT;
	
	reg  [9:0] PC;						//Contador de Programa
	reg  [9:0] CICLO = 1;		   //Ciclo do processador
	reg [15:0] IRF; 					//Instrucao no estagio fetch
	reg [15:0] IRD; 					//Instrucao no estagio decode
	reg [15:0] IRE; 					//Instrucao no estagio execute
	reg [15:0] IRW; 					//Instrucao no estagio writeback
	reg [15:0] registers [15:0];	//Banco de Registradores
	reg [15:0] saida_ula; 			//Saida da ula no estagio de execute
	reg [15:0] saida_ulaW; 			//Saida da ula no estagio de writeback
	reg [15:0] R1E; 					//Primer operando a ser utilizado no estagio de execute
	reg [15:0] R2E; 					//Segundo operando a ser utilizado no estagio de execute
	
	reg [0:0] START = 1;				//Indica o estado de inicio do processador
	wire [15:0] out_mem_inst;     //Saida da memoria de instrucoes
	
	memory memoriaDeInstrucao(
		.address(PC),
		.clock(clk[25]),
		.q(out_mem_inst)
	);
	
	wire key_0;
   debouncer dbk0 (
	  .clk(CLOCK_50),
	  .PB(~KEY[0]),
	  .PB_state(key_0)
    );
	
	displayDecoder DP7_0(
		.hexValue(PC[3:0]),
		.displayValue(HEX0)
	);
	displayDecoder DP7_1(
		.hexValue(PC[9:4]),
		.displayValue(HEX1)
	);
	displayDecoder DP7_2(
		.hexValue(4'd16),
		.displayValue(HEX2)
	);
	displayDecoder DP7_3(
		.hexValue(IRE[15:12]),
		.displayValue(HEX3)
	);
	displayDecoder DP7_4(
		.hexValue(saida_ulaW[7:0]),
		.displayValue(HEX4)
	);
	displayDecoder DP7_5(
		.hexValue(saida_ulaW[15:8]),
		.displayValue(HEX5)
	);
	displayDecoder DP7_6(
		.hexValue(CICLO[3:0]),
		.displayValue(HEX6)
	);
	displayDecoder DP7_7(
		.hexValue(CICLO[7:4]),
		.displayValue(HEX7)
	);
	
	
	//.: FETCH :.
	always@(posedge clk[25])
	begin
			if(key_0 == 0)	//Reiniciando o processador
			begin
				PC <= 0;
				START <= 0;
				CICLO <= 0;
			end
			else if(key_0 == 1 && START == 0)	//Indica que o processador deve iniciar a execucao do codigo. START = 1
			begin
				START = 1;
				CICLO <= 1;
			end
			else if(key_0 == 1 && START == 1)	//Estagio de fetch
			begin
				IRF <= out_mem_inst;	//Salva a saida da memoria em IRF
				PC <= PC + 1;			//PC incrementado em 1 para ler a proxima instrucao
				IRD <= IRF;				//Salva a instrucao lida em IRD para ser utilizada no estagio de decode
				CICLO <= CICLO + 1;  //Incrementa o ciclo 
			end
	end
	
	// .: DECODE :.
	always@(posedge clk[25])
	begin
		if(START == 1 && key_0 == 1)
		begin
			R1E <= (IRE[15:12] == 4'd3 || (IRD[15:12]  >= 4'd7 && IRD[15:12] < 4'd12))? IRD[7:4] : registers[IRD[7:4]];	//Salva o valor do primeiro operando a ser utilizado no estagio de execute
			R2E <= registers[IRD[3:0]];   //Salva o valor do segundo operando a ser utilizado no estagio de execute
			IRE <= IRD;							//Salva a instrucao no estagio de decode em IRE para ser utilizada no estagio de execute
			//R1E = 4'd3;
			//R2E = 4'd2;
		end
	end
	
	// .: EXECUTE :.
	always@(posedge clk[25])
	begin
		if(START == 1 && key_0 == 1) begin
			if(IRE[15:12] != 4'd12) begin
				case (IRE[15:12])
				  4'd1 : saida_ula = R1E + R2E; // ADD
				  4'd2 : saida_ula = R1E - R2E; // SUB
				  4'd3 : saida_ula = R2E > R1E ? 16'd1 : 16'd0; // SLTI
				  4'd4 : saida_ula = R1E & R2E; // AND
				  4'd5 : saida_ula = R1E | R2E; // OR
				  4'd6 : saida_ula = R1E ^ R2E; // XOR
				  4'd7 : saida_ula = R2E & R1E; // ANDI
				  4'd8 : saida_ula = R2E | R1E; // ORI
				  4'd9 : saida_ula = R2E ^ R1E; // XORI
				  4'd10: saida_ula = R1E + R2E; // ADDI
				  4'd11: saida_ula = R2E - R1E; // SUBI
				  default: 
						saida_ula = 16'd16;
				endcase
				IRW <= IRE;						//Salva a instrucao no estagio de execute em IRW para ser utilizada no estagio de writeback
				saida_ulaW <= saida_ula;
			end
			else begin
				if(IRE[15:12] == 4'd12) begin
					COUNT <= 1;
				end
				else if (COUNT > 0) begin
					COUNT <= COUNT + 1;
				end
				if(COUNT == 4) begin
					saida_ula = R2E * R1E;
					IRW <= IRE;						//Salva a instrucao no estagio de execute em IRW para ser utilizada no estagio de writeback
					saida_ulaW <= saida_ula;
					COUNT <= 0;
				end
			end
		end
	end
	
	// .: WRITEBACK :.
	always@(posedge clk[25])
	begin
		if(START == 1 && key_0 == 1)
		begin
			registers[IRW[11:8]] <= saida_ulaW;	//Escreve no banco de registradores a saida da ula calculada no estagio de execute
		end
	end

endmodule
