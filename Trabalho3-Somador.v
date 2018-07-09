module somadors(input clock,
		input [43:0] Entrada1,
		input [43:0] Entrada2,
	output[43:0] S0);

	reg [43:0] saida = 0;
	reg [43:0] aux = 0;
 	assign S0 = saida;
	always @(posedge clock) begin
		aux <= Entrada1 + Entrada2;
		saida = aux + saida;
	end
endmodule

module alpha;
	reg clock;
	reg[43:0] Entrada1, Entrada2;
	wire[43:0] S0;
	always #3 clock = ~clock;
	somadors B(clock, Entrada1, Entrada2, S0);
	initial begin
		$dumpvars();
		#0 clock <= 0;
		Entrada1 <= 2;
		Entrada2 <= 2;
		//4
		#6
		Entrada1 <= 4;
		Entrada2 <= 4;
		//12
		#6
		Entrada1 <= 5;
		Entrada2 <= 5;
		//22
		#6
		Entrada1 <= 3;
		Entrada2 <= 3;
		//28
		#12
		$finish;
	end
endmodule
