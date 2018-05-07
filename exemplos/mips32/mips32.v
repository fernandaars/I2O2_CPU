

module mips32(

	//input[17:0]		SW, // Switches
	input				CLOCK_50,// clock da placa
	input[3:0]		KEY, // Keys
	output[8:0]		LEDG,
	output[0:6]		HEX0, // Display de 7 segmentos 0
	output[0:6]		HEX1 // Display de 7 segmentos 1

);




//reg [2:0] in_DP7_0;
//reg [2:0] in_DP7_1;


reg [31:0] clk;
reg [2:0] FSM;
reg [31:0] FSM2;
integer i;


reg [9:0] PC;
reg [31:0] IR;
reg [31:0] registers [31:0];//banco de registradores

wire [31:0] out_mem_inst;




mem_inst mem_i(.address(PC),.clock(clk[25]),.q(out_mem_inst));

displayDecoder DP7_0(.entrada(registers[0][2:0]),.saida(HEX0));
displayDecoder DP7_1(.entrada(FSM),.saida(HEX1));




	assign LEDG[0] = clk[26];



	
	always@(posedge CLOCK_50)begin
		clk = clk + 1;
	end
		
	
	always@(posedge clk[26])begin
	
		if(KEY[0] == 0)
		begin
			FSM = 3'b0;
			FSM2 = 4'h0000;
			
			PC = 10'b0;
			IR = 32'b0;
			
			for(i = 0; i < 32; i = i + 1)
			begin
				registers[i] = 32'b0;
			end
			
			registers[0] = 4'h0001;
			
		end
		else
		begin
			if(FSM == 3'b000) //Fetch
			begin
				PC = PC + 1;
				IR = out_mem_inst;
			end
			else if(FSM == 3'b001) // Decode
			begin
				if(IR[31:26] == 6'b000000 && IR[5:0] == 6'b010000)
				begin
					FSM2 = 4'h0001;//add
				end
				
			end
			else if(FSM == 3'b010) // Execute
			begin
				if(FSM2 == 4'h0001)// execute add
				begin
					registers[IR[15:11]] = registers[IR[20:16]] + registers[IR[25:21]];
					FSM2 = 4'h0000;
				end
			end
			
			FSM = FSM + 1;
			
		end
		
	end


	
endmodule




















	/*always@(SW)begin
		case(SW[4:0])
			5'b00000:in_DP7_0 <= registers[0][2:0];
			5'b00001:in_DP7_0 <= registers[1][2:0];
			5'b00010:in_DP7_0 <= registers[2][2:0];
			5'b00011:in_DP7_0 <= registers[3][2:0];
			5'b00100:in_DP7_0 <= registers[4][2:0];
			default: in_DP7_0 <= 4'h0000;
			endcase
	end
	*/



//always@(negedge KEY[0])begin //quando aperta fica baixo
		//register = SW[2:0];//pegando apenas os três primeiros Switches
	//end
   
	
	/*
	always@(negedge KEY[1])begin
		registers[0] = registers[0] + 1;
	end
	*/