module control_unit(
	input clk,
	input rst,
	input zero,
	input [3:0]op_code,
	output reg EscCondCP,
	output reg EscCP,
	output reg [3:0]ULA_OP,
	output reg ULA_A, //0 CP, 1 reg_a
	output reg [1:0]ULA_B,
	output reg EscIR,
	output reg [1:0]FonteCP,
	output reg EscReg,
	output reg r_w
);

	reg [1:0] state;

	always @(posedge clk or posedge rst) begin
		if(rst)
			state <= 0;
		else begin
			case (state)
				0: state <= 1;
				1: state <= 2;
				2: state <= 0;
				default: state <= 0;
			endcase
		end
	end
	
	always @(state or op_code or zero) begin
		case(state)
			0: begin //leitura e escrita no RI
				EscCondCP = 0;
				EscCP = 0;
				ULA_OP = 4'd0;
				ULA_A = 0;
				ULA_B = 2'd0;
				EscIR = 1;
				FonteCP = 2'd0;
				EscReg = 0;
				r_w = 0;
			end
			1: begin //salvar no banco de registradores
				EscIR = 0;
				EscCondCP = 0;
				r_w = 0;
				EscCP = 0;
				FonteCP = 0;
				ULA_OP = op_code;
				if(op_code == 4'd0 || op_code == 4'd1 || op_code == 4'd3 || op_code == 4'd4 || op_code == 4'd5 || op_code == 4'd12) begin //normais ou branch
					ULA_A = 1;
					ULA_B = 2'd0;
				end else if(op_code == 4'd2 || op_code == 4'd6 || op_code == 4'd7 || op_code == 4'd8 || op_code == 4'd9 || op_code == 4'd10) begin //imediatos
					ULA_A = 1;
					ULA_B = 2'd2;
				end else begin //jump
					ULA_A = 0;
					ULA_B = 2'd0;
				end
				EscReg = 1;
			end
			2: begin //escrita no CP (faz uma soma extra na alu)
				EscIR = 0;
				EscReg = 0;
				if(op_code == 4'd12 && zero == 1) begin //se branch foi tomado
					r_w = 0;
					FonteCP = 2'd1;
					ULA_OP = 4'd12; //mantem a operaçao
					ULA_A = 1;
					ULA_B = 2'd0;
				end else begin
					case(op_code)
						11: begin //imediato(jump)
							r_w = 0;
							FonteCP = 2'd2;
						end
						12: begin //ula_s(bez)
							r_w = 0;
							FonteCP = 2'd1;
						end
						default: begin//CP++
							r_w = 1;
							FonteCP = 2'd0; 
						end
					endcase
					ULA_OP = 4'd0; //soma (3 parametros a seguir n fazer diferença se opcode = 11 ou 12 n tomado)
					ULA_A = 0; //CP
					ULA_B = 2'd1; //1
				end
				EscCondCP = 1;
				EscCP = 1;
			end
			default: begin
				EscCondCP = 0;
				EscCP = 0;
				ULA_OP = 4'd0;
				ULA_A = 0;
				ULA_B = 2'd0;
				EscIR = 0;
				FonteCP = 2'd0;
				EscReg = 0;
				r_w = 0;
			end
		endcase
	end
	
endmodule
