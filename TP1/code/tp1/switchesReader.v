module switchesReader(
	input[3:0] KEY,
	input[17:0] SW,
	output reg [3:0] codop,
	output reg [3:0] addA,
	output reg [3:0] addB_LMM,
	output reg [3:0] addC
);

	always @(KEY[3]) begin
		if(KEY[3] == 1) begin
			assign codop[0] = SW[15];
			assign codop[1] = SW[14];
			assign codop[2] = SW[13];
			assign codop[3] = SW[12];
			
			assign addA[0] = SW[11];
			assign addA[1] = SW[10];
			assign addA[2] = SW[9];
			assign addA[3] = SW[8];
			
			assign addB_LMM[0] = SW[7];
			assign addB_LMM[1] = SW[6];
			assign addB_LMM[2] = SW[5];
			assign addB_LMM[3] = SW[4];
			
			assign addA[0] = SW[3];
			assign addA[1] = SW[2];
			assign addA[2] = SW[1];
			assign addA[3] = SW[0];
		end
	end
endmodule
