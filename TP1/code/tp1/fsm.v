module fsm(
	input clk,
	output fsm0,
	output fsm1,
	output fsm2,
	output fsm3
);
	
	reg [3:0] count = 4'd0;
	reg f0, f1, f2, f3;
	always @(posedge clk) begin
		if(count == 4'd0) begin
			f0 = 1; f1 = 0; f2 = 0; f3 = 0;
		end
		if(count == 4'd1) begin
			f0 = 0; f1 = 1; f2 = 0; f3 = 0;
		end
		if(count == 4'd2) begin
			f0 = 0; f1 = 0; f2 = 1; f3 = 0;
		end
		if(count == 4'd3) begin
			f0 = 0; f1 = 0; f2 = 0; f3 = 1;
			count = 0;
		end
		else begin
			count = count + 1;
		end
	end
	
	assign fsm0 = f0;
	assign fsm1 = f1;
	assign fsm2 = f2;
	assign fsm3 = f3;
	
endmodule
