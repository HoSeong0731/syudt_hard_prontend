module _dff_rs_async(clk, set_n, reset_n, d, q);

	input		clk, set_n, reset_n, d;
	output	q;
	reg	q;
	
	always@(posedge clk or negedge set_n or negedge reset_n) 
	//always work at clk is rising edge or set_n is falling edge or reset_n is falling edge
	begin
		if(reset_n == 0)			q <= 1'b0;
		else if(set_n == 0)		q <= 1'b1;
		else							q <= d;
	end
	
endmodule
