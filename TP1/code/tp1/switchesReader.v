// .: Switches Reader Auxiliary Module :.

module switchesReader(
	input clk,
	input [3:0] KEY,
	input [17:0] SW,
	output reg [3:0] codop,
	output reg [3:0] addA,
	output reg [3:0] addB_LMM,
	output reg [3:0] addC
);

	always @(posedge clk) begin
		codop[3] = SW[15];
		codop[2] = SW[14];
		codop[1] = SW[13];
		codop[0] = SW[12];
		
		addA[3] = SW[11];
		addA[2] = SW[10];
		addA[1] = SW[9];
		addA[0] = SW[8];
		
		addB_LMM[3] = SW[7];
		addB_LMM[2] = SW[6];
		addB_LMM[1] = SW[5];
		addB_LMM[0] = SW[4];
		
		addC[3] = SW[3];
		addC[2] = SW[2];
		addC[1] = SW[1];
		addC[0] = SW[0];
	end
endmodule
