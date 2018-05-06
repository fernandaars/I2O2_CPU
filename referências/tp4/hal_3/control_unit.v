module control_unit(
	input clk,
	input rst,
	input zero,
	input [3:0]op_code,
	output reg exe, //indica estagio exe
	output reg wb, //indica estagio wb
	output reg [3:0]ula_op,
	output reg ula_a, //0 CP, 1 reg_a
	output reg [1:0]ula_b,
	output reg [1:0]fonte_cp,
	output reg [1:0]fonte_wb, //0 alu, 1 HI, 2 LO
	output mul,
	output reg r_w
);

	reg state;

	assign mul = (op_code == 4'd15);
	
	always @(posedge clk or posedge rst) begin
		if(rst)
			state <= 0;
		else begin
			case (state)
				0: state <= 1; // exe 1
				1: state <= 0; // write back
				default: state <= 0;
			endcase
		end
	end

	always @(state or op_code or zero) begin
		case(state)
			0: begin //primeiro ciclo de execuçao
				wb = 0;
				ula_op = op_code;
				fonte_cp = 2'd0;
				fonte_wb = 0;
				r_w = 0;
				if(op_code == 4'd0 || op_code == 4'd1 || op_code == 4'd3 || op_code == 4'd4 || op_code == 4'd5 || op_code == 4'd12 || op_code == 4'd15) begin //normais ou branch
					ula_a = 1;
					ula_b = 2'd0;
				end else if(op_code == 4'd2 || op_code == 4'd6 || op_code == 4'd7 || op_code == 4'd8 || op_code == 4'd9 || op_code == 4'd10) begin //imediatos
					ula_a = 1;
					ula_b = 2'd2;
				end else begin //jump
					ula_a = 0;
					ula_b = 2'd0;
				end
				exe = 1;
			end
			1: begin //escrita no CP (faz uma soma extra na alu) e WB
				exe = 0;
				fonte_wb = (op_code == 4'd13) ? 2'd1 :
								(op_code == 4'd14) ? 2'd2 :
								2'd0;
				if(op_code == 4'd12 && zero == 1) begin //se branch foi tomado
					r_w = 0;
					fonte_cp = 2'd1;
					ula_op = 4'd12; //mantem a operaçao
					ula_a = 1;
					ula_b = 2'd0;
				end else begin
					case(op_code)
						11: begin //imediato(jump)
							r_w = 0;
							fonte_cp = 2'd2;
						end
						12: begin //ula_s(bez)
							r_w = 0;
							fonte_cp = 2'd1;
						end
						15: begin // multiplicacao
							r_w = 0;
							fonte_cp = 2'd0;
						end
						default: begin//CP++
							r_w = 1;
							fonte_cp = 2'd0; 
						end
					endcase
					ula_op = 4'd0; //soma (3 parametros a seguir n fazer diferença se opcode = 11 ou 12 n tomado)
					ula_a = 0; //CP
					ula_b = 2'd1; //1
				end
				wb = 1;
			end
			default: begin
				wb = 0;
				ula_op = 4'd0;
				ula_a = 0;
				ula_b = 2'd0;
				fonte_cp = 2'd0;
				r_w = 0;
			end
		endcase
	end
	
endmodule
