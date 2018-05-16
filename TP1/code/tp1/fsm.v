module fsm(
	input clk,
	input[3:0] KEY,
	output fsm0,
	output fsm1,
	output fsm2,
	output fsm3
);
	wire key_0, key_3;
	reg key0Pressed, key3Pressed;
   debouncer dbk0 (
	  .clk(clk),
	  .PB(~KEY[0]),
	  .PB_state(key_0)
    );

   debouncer dbk3 (
	  .clk(clk),
	  .PB(~KEY[3]),
	  .PB_state(key_3)
    );
	
	reg f0, f1, f2, f3;
	reg [3:0] count;
	always @(posedge clk) begin
		if(~key_0) key0Pressed = 1;
		if(~key_3) key3Pressed = 1;
			
		if(count == 4'd0 && (key0Pressed || key3Pressed)) begin
			f0 = 1; f1 = 0; f2 = 0; f3 = 0;
		end
		if(count == 4'd1 && (key0Pressed || key3Pressed)) begin
			f0 = 0; f1 = 1; f2 = 0; f3 = 0;
		end
		key0Pressed = 0;
		if(count == 4'd2 && (key3Pressed)) begin
			f0 = 0; f1 = 0; f2 = 1; f3 = 0;
		end
		
		count = count + 1;
		
		if(count == 4'd3 && (key3Pressed)) begin
			f0 = 0; f1 = 0; f2 = 0; f3 = 1;
			count = 0;
		end
		key3Pressed = 0;
	end
	
	assign fsm0 = f0;
	assign fsm1 = f1;
	assign fsm2 = f2;
	assign fsm3 = f3;
	
endmodule
