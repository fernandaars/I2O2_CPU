module displayWriter(
	input[7:0] reg0,
	input[7:0] reg1,
	input[7:0] reg2,
	
	output[6:0] HEX0,
	output[6:0] HEX1,
	output[6:0] HEX2,
	output[6:0] HEX3,
	output[6:0] HEX4,
	output[6:0] HEX5,
	output[6:0] HEX6,
	output[6:0] HEX7
);
	
	wire [7:0]  hex7_6 = reg0;
	wire [7:0]  hex5_4 = reg1;
	wire [15:0] hex3_0 = reg2;
	
	displayDecoder display7(.hexValue(hex7_6[7:4]),.displayValue(HEX7));
	displayDecoder display6(.hexValue(hex7_6[3:0]),.displayValue(HEX6));
	displayDecoder display5(.hexValue(hex5_4[7:4]),.displayValue(HEX5));
	displayDecoder display4(.hexValue(hex5_4[3:0]),.displayValue(HEX4));
	displayDecoder display3(.hexValue(hex3_0[15:12]),.displayValue(HEX3));
	displayDecoder display2(.hexValue(hex3_0[11:8]),.displayValue(HEX2));
	displayDecoder display1(.hexValue(hex3_0[7:4]),.displayValue(HEX1));
	displayDecoder display0(.hexValue(hex3_0[3:0]),.displayValue(HEX0));

endmodule
