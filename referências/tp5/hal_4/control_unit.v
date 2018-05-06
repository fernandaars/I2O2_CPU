module control_unit(
	input clk,
	input [3:0]op_code,
	output reg alu_b, //0 reg, 1 imediato
	output reg mul,
	output reg [1:0]source_wb, //0 alu, 1 HI, 2 LO
	output reg r_w
);

	always @(op_code) begin
		if(op_code == 4'd0 || op_code == 4'd1 || op_code == 4'd3 || op_code == 4'd4 || op_code == 4'd5) begin //R type
			alu_b = 0;
			mul = 0;
			source_wb = 2'd0;
			r_w = 1;
		end else if(op_code == 4'd2 || op_code == 4'd6 || op_code == 4'd7 || op_code == 4'd8 || op_code == 4'd9 || op_code == 4'd10) begin //I type
			alu_b = 1;
			mul = 0;
			source_wb = 2'd0;
			r_w = 1;
		end else if(op_code == 4'd11 || op_code == 4'd12) begin //jump ou branch
			alu_b = 0; //NA
			mul = 0;
			source_wb = 2'd0; //NA
			r_w = 0;
		end else if(op_code == 4'd13) begin //ghi
			alu_b = 0;
			mul = 0;
			source_wb = 2'd1;
			r_w = 1;
		end else if(op_code == 4'd14) begin //glo
			alu_b = 0;
			mul = 0;
			source_wb = 2'd2;
			r_w = 1;
		end else begin //mult
			alu_b = 0;
			mul = 1;
			source_wb = 2'd2;
			r_w = 0;
		end
	end
endmodule
