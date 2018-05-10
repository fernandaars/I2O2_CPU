module switchesReader(
	input[3:0] KEY,
	
	input[3:0] sw3_0,
   input[3:0] sw7_4,    
   input[3:0] sw11_8,
   input[3:0] sw15_12,
	
	output wire [3:0] codop,
	output wire [3:0] addA,
	output wire [3:0] addB_LMM,
	output wire [3:0] addC
);

	//always @(sw3_0, sw7_4, sw11_8, sw15_12) begin
		assign codop = sw3_0;
		assign addA = sw7_4;
		assign addB_LMM = sw11_8;
		assign addC = sw15_12;
	//end

endmodule
