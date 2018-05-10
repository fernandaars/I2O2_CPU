module displayDecoder(

	input[3:0]		entrada,
	output reg [0:6]		saida
);

	always@(entrada)begin //sempre que mudar a entrada
		case(entrada[3:0])
		4'b000:saida = 7'b1000000; // 0
		4'b001:saida = 7'b1111001; // 1
		4'b010:saida = 7'b0100100; // 2
		4'b011:saida = 7'b0110000; // 3
		4'b100:saida = 7'b0011001; // 4
		4'b101:saida = 7'b0010010; // 5
		4'b110:saida = 7'b0000010; // 6
		4'b111:saida = 7'b1011000; // 7
		4'b111:saida = 7'b0000000; // 8
		4'b111:saida = 7'b0000000; // 9
		default: saida = 7'b0000000;
		endcase
	end
    
endmodule
