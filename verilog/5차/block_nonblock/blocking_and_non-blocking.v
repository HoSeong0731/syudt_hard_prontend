module blocking_and_nonblocking(clk, a, b, c, d, e);
	input clk;
	input a;
	output b, c, d, e;
	
	blocking U0_blocking(.clk(clk), .a(a), .b(b), .c(c));
	nonblocking U1_blocking(.clk(clk), .a(a), .b(d), .c(e));
endmodule

module blocking(clk, a, b, c);
	input clk;
	input a;
	output reg b, c;
	
	always@ (posedge clk)
	begin
		b = a;
		c = b;
	end
endmodule

module nonblocking(clk, a, b, c);
	input clk;
	input a;
	output reg b, c;
	
	always@ (posedge clk)
	begin
		b <= a;
		c <= b;
	end
endmodule
