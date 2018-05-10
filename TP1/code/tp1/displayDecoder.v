module displayDecoder(
	input[3:0]	hexValue,
	output reg [0:6] displayValue
);
	always @(hexValue) begin
		case(hexValue)
			 0: displayValue = 7'b1000000; // 0
			 1: displayValue = 7'b1111001; // 1
			 2: displayValue = 7'b0100100; // 2
			 3: displayValue = 7'b0110000; // 3
			 4: displayValue = 7'b0011001; // 4
			 5: displayValue = 7'b0010010; // 5
			 6: displayValue = 7'b0000010; // 6
			 7: displayValue = 7'b1011000; // 7
			 8: displayValue = 7'b0000000; // 8
			 9: displayValue = 7'b0000000; // 9
			10: displayValue = 7'b0001000; // A
			11: displayValue = 7'b0110010; // B
			12: displayValue = 7'b1000110; // C
			13: displayValue = 7'b1000000; // D
			14: displayValue = 7'b0000110; // E
			15: displayValue = 7'b0001000; // F
		default:  
			displayValue = 7'b0000000; // 0
		endcase
	end
    
endmodule
