module hal_1(
	input					clk,
	input					key0,		// mostra registradores
	input 				key3,		// faz operaçao
	input		[3:0]		sw3_0,	// $s2 p/ inst
	input		[3:0]		sw7_4,	// $s3 ou imm p/ inst | reg p/ hex5_4
	input		[3:0]		sw11_8,	// $s4 p/ inst | reg p/ hex7_6
	input		[3:0]		sw15_12,	// codop
	output	[6:0]		hex7,		// msb reg sw11_8
	output	[6:0]		hex6,		// lsb reg sw11_8
	output	[6:0]		hex5,		// msb reg sw7_4
	output	[6:0]		hex4,		// lsb reg sw7_4
	output	[6:0]		hex3,		// 4 a seguir, resultado
	output	[6:0]		hex2,
	output	[6:0]		hex1,
	output	[6:0]		hex0
);

//	reg mux_ctl;
	wire [3:0] addr_a = (key_3) ? sw3_0 : sw11_8;

	wire [15:0] out;
	wire [15:0] data_a;
	wire [15:0] oper_b;
	wire [15:0] data_b = (sw15_12[3] || sw15_12[1] && (~sw15_12[0] || sw15_12[2])) ? {12'd0, sw7_4[3:0]} : oper_b; //decidir se sera imediato sw[3]+sw[1].(sw[0]'+sw[2])
	
	wire gnd = 1'd0; //ground
	
//	wire [7:0] hex7_6 = (key0 == 1'd1) ? 8'd0 : data_a [7:0];
//	wire [7:0] hex5_4 = (key0 == 1'd1) ? 8'd0 : oper_b [7:0];
//	wire [15:0] hex3_0 = (key3 == 1'd1) ? 16'd0 : out;
	wire [7:0] hex7_6 = data_a [7:0];
	wire [7:0] hex5_4 = data_b [7:0];
	wire [15:0] hex3_0 = out;
	
	wire key_0;
	wire key_3;

	reg k_0;
	reg k_3;
	always@(posedge key_0 or posedge key_3)begin //debouncing
		if(key_0) begin
			k_0 <= 1'd1;
			k_3 <= 1'd0;
		end else if(key_3) begin
			k_0 <= 1'd0;
			k_3 <= 1'd1;
		end else begin
			k_0 <= 1'd0;
			k_3 <= 1'd0;
		end
	end

	register_bank r_bank(
		.clk			(key_0 || key_3),
		.addr_a		(addr_a),
		.addr_b		(sw7_4),
		.reg_data	(out),
		.write_reg	(sw11_8),
		.r_w			(k_3),
		.reg_a		(data_a),
		.reg_b		(oper_b)
	);

	alu alu_0(
		.clk			(key_3),
		.codop		(sw15_12),
		.data_a		(data_a),
		.data_b		(data_b),
		.out			(out),
		.neg			(gnd),
		.zero			(gnd),
		.overflow	(gnd)
	);
	
	bcd_7seg hex_7(
		.hex_value	(hex7_6[7:4]),
		.disp_value	(hex7)
	);
	
	bcd_7seg hex_6(
		.hex_value	(hex7_6[3:0]),
		.disp_value	(hex6)
	);

	bcd_7seg hex_5(
		.hex_value	(hex5_4[7:4]),
		.disp_value	(hex5)
	);

	bcd_7seg hex_4(
		.hex_value	(hex5_4[3:0]),
		.disp_value	(hex4)
	);

	bcd_7seg hex_3(
		.hex_value	(hex3_0[15:12]),
		.disp_value	(hex3)
	);

	bcd_7seg hex_2(
		.hex_value	(hex3_0[11:8]),
		.disp_value	(hex2)
	);

	bcd_7seg hex_1(
		.hex_value	(hex3_0[7:4]),
		.disp_value	(hex1)
	);

	bcd_7seg hex_0(
		.hex_value	(hex3_0[3:0]),
		.disp_value	(hex0)
	);
	
	debouncer dbk0(
		.clk(clk),
		.PB (~key0),
		.PB_state(key_0)
	);
	debouncer dbk3(
		.clk(clk),
		.PB (~key3),
		.PB_state(key_3)
	);
/*
	always@(negedge key0 or negedge key3)begin
		$display("---hal_1---");
		$display("opcode %d  s4 %d  s3 %d  s2 %d", sw15_12, sw11_8, sw7_4, sw3_0);
		$display("data_a %d data_b %d", data_a, data_b);
		$display("saida: 0x%02h", hex3_0);
		$display("disp: %07b %07b %07b %07b", hex3, hex2, hex1, hex0);
		$display("---hal_1---");
	end
*/
endmodule

module bcd_7seg(
	input			[3:0]	hex_value, //entrada em hexa
	output 	[6:0]	disp_value
); //display anodo comum

	assign disp_value =  (hex_value == 0) ? 7'b1000000 :
								(hex_value == 1) ? 7'b1111001 :
								(hex_value == 2) ? 7'b0100100 :
								(hex_value == 3) ? 7'b0110000 :
								(hex_value == 4) ? 7'b0011001 :
								(hex_value == 5) ? 7'b0010010 :
								(hex_value == 6) ? 7'b0000010 :
								(hex_value == 7) ? 7'b1111000 :
								(hex_value == 8) ? 7'b0000000 :
								(hex_value == 9) ? 7'b0010000 :
								(hex_value == 10) ? 7'b0001000 :
								(hex_value == 11) ? 7'b0000011 :
								(hex_value == 12) ? 7'b1000110 :
								(hex_value == 13) ? 7'b0100001 :
								(hex_value == 14) ? 7'b0000110 :
														7'b0001110;

/*
	always @(hex_value) begin
		case(hex_value)
			0: disp_value <= 7'b1000000;
			1: disp_value <= 7'b1111001;
			2: disp_value <= 7'b0100100;
			3: disp_value <= 7'b0110000;
			4: disp_value <= 7'b0011001;
			5: disp_value <= 7'b0010010;
			6: disp_value <= 7'b0000010;
			7: disp_value <= 7'b1111000;
			8: disp_value <= 7'b0000000;
			9: disp_value <= 7'b0010000;
			10: disp_value <= 7'b0001000;
			11: disp_value <= 7'b0000011;
			12: disp_value <= 7'b1000110;
			13: disp_value <= 7'b0100001;
			14: disp_value <= 7'b0000110;
			15: disp_value <= 7'b0001110;
		endcase
	end
*/
endmodule

module debouncer(
    input clk,
    input PB,  // "PB" is the glitchy, asynchronous to clk, active low push-button signal

    // from which we make three outputs, all synchronous to the clock
    output reg PB_state  // 1 as long as the push-button is active (down)
);

	// First use two flip-flops to synchronize the PB signal the "clk" clock domain
	reg PB_sync_0;  always @(posedge clk) PB_sync_0 <= ~PB;  // invert PB to make PB_sync_0 active high
	reg PB_sync_1;  always @(posedge clk) PB_sync_1 <= PB_sync_0;

	reg [17:0] PB_cnt; //contador 2^18/50MHz = 5.2ms

	// The counter has to be maxed out before we decide that the push-button state has changed

	wire PB_idle = (PB_state==PB_sync_1); //quando ha uma borda incrementa
	wire PB_cnt_max =& PB_cnt;	// true when all bits of PB_cnt are 1's

	always @(posedge clk)
	if(PB_idle)
		 PB_cnt <= 0;  // nothing's going on
	else	begin
		 PB_cnt <= PB_cnt + 18'd1;  // something's going on, increment the counter
		 if(PB_cnt_max) PB_state <= ~PB_state;  // if the counter is maxed out, PB changed!
	end

endmodule

module control(
	input clk,
	input key0,
	input key3,
	input opcode,
	output clk_reg_bank,
	output clk_alu,
	output mux_addr_a,
	output mux_data_b
);
	
endmodule
