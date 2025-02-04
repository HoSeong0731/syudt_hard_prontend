module _dff_r(clk, reset_n, d, q);

	input		clk, reset_n, d;		//input clk, reset_n, d
	output	q;							//output q
	
	wire		w_d;					//wire w_d
	
	_and2 U0_and2(.a(d), .b(reset_n), .y(w_d));			// load 2input and gate
	_dff U0_dff(.clk(clk), .d(w_d), .q(q), .q_bar());	// loda D flip-flop
	
	endmodule
	