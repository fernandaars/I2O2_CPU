module register_bank(
	input					clk,
	input		[3:0]		addr_a,
	input		[3:0]		addr_b,
	input		[15:0]	reg_data,
	input		[3:0]		write_reg,
	input					r_w, //0 leitura, 1 escrita
	output	[15:0]	reg_a, 
	output	[15:0]	reg_b
);

	reg [15:0] registers[15:0];

	assign reg_a = registers[addr_a];
	assign reg_b = registers[addr_b];
    
	always @(posedge clk) begin
//		$display("addr_a %d addr_b %d", addr_a, addr_b);
		if(r_w) begin 
			registers[write_reg] = reg_data;
		end
	end
/*
	integer i;
	initial begin
		for(i = 0; i < 16; i = i+1) begin
			registers[i] = 16'd0;
		end
	end
*/
endmodule
