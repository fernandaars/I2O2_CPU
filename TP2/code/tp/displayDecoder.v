// .: Display Decoder Auxiliary Module :.

module displayDecoder(
	input[3:0]	hexValue,
	output reg [0:6] displayValue
);
	always @(hexValue) begin
		case(hexValue)
			 0: displayValue = 7'b0000001; // 0
			 1: displayValue = 7'b1001111; // 1
			 2: displayValue = 7'b0010010; // 2
			 3: displayValue = 7'b0000110; // 3
			 4: displayValue = 7'b1001100; // 4
			 5: displayValue = 7'b0100100; // 5
			 6: displayValue = 7'b0100000; // 6
			 7: displayValue = 7'b0001111; // 7
			 8: displayValue = 7'b0000000; // 8
			 9: displayValue = 7'b0000100; // 9
			10: displayValue = 7'b0001000; // A
         11: displayValue = 7'b1100000; // B
         12: displayValue = 7'b0110001; // C
         13: displayValue = 7'b1000010; // D
         14: displayValue = 7'b0110000; // E
         15: displayValue = 7'b0111000; // F
			default:  
				displayValue = 7'b1111111; // Display Desligado
		endcase
	end
    
endmodule
