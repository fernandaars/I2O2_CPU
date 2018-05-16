// .: Register File Module :.

module registerFile (
    input clk0,
	 input clk1,
	 input RWsignal,
	 input [3:0] codop,
    input [3:0] addrARead,
    input [3:0] addrBRead,
    input [3:0] addrCWrite,
	 input  [15:0] data,
    output [15:0] a,
    output [15:0] b
);
	 reg [15:0] finalB; 
    reg [15:0] registers[15:0];
	 
	 assign a = registers[addrARead];
	 
	always @(posedge clk0) begin
		if(codop >= 4'd6 || codop == 4'd2) begin
			finalB = addrBRead;
		end
		else begin 
			finalB = registers[addrBRead];
		end
	end
	assign b = finalB;
	
	always @(posedge clk1) begin
	  if (RWsignal) begin
			registers[addrCWrite] = data;
	  end
	end
endmodule
