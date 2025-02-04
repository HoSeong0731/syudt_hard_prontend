module multiplier(clk,reset_n,multiplier,multiplicand,op_start,op_clear,op_done,result);
	input clk, reset_n;
	input [63:0] multiplier,multiplicand;
	input op_start,op_clear;		//input List
	output op_done ;
	output [127:0] result;			//output List
	
	wire [6:0] co;						// wire List
	wire [1:0] state;
	wire [63:0] sub, add;
											//next state logic instance
	
	MUL_NS U0(.counter(co), .clk(clk), .reset_n(reset_n), .state(state), .op_start(op_start),
					.op_clear(op_clear),.op_done(op_done));
					
					
					
											//output logic insatnce
	MUL_OUT U1(.clk(clk), .reset_n(reset_n),.multiplier(multiplier), .multiplicand(multiplicand), .counter(co), .state(state),
						.op_done(op_done),.result(result));
	
	
endmodule

