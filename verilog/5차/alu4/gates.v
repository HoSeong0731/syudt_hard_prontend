module _inv(a,y);	//start not gate
input a;				//1input
output y;			//1output
assign y=~a;		//Invert input value.
endmodule			//end not gate

module _nand2(a,b,y);//start 2input nand gate
input a,b;				//2input
output y;				//1output
assign y=~(a&b);		//nand two inputs
endmodule				//end 2input nand gate

module _and2(a,b,y);	//start 2input and gate
input a,b;				//2input
output y;				//1output
assign y=a&b;			//and two inputs
endmodule				//end 2input and gate

module _or2(a,b,y);	//start 2input or gate
input a,b;				//2input
output y;				//1output
assign y=a|b;			//or two inputs
endmodule				//end 2input or gate

module _xor2(a,b,y);	//start 2input xor gate
input a, b;				//2input
output y;				//1output
wire inv_a, inv_b;	//wire inv value a and b
wire w0, w1;			//create w0 and w1
_inv U0_inv(.a(a), .y(inv_a));	//load module inv
_inv U1_inv(.a(b), .y(inv_b));	//load module inv
_and2 U2_and2(.a(inv_a), .b(b), .y(w0));	//load module and
_and2 U3_and2(.a(a),.b(inv_b), .y(w1));	//load module and
_or2 U4_or2(.a(w0), .b(w1),.y(y));			///load module or
endmodule				//end 2input xor gate

module _and3(a,b,c,y);	//start 3input and gate
input a,b,c;				//3input
output y;					//1output
assign y=a&b&c;			//and three inputs
endmodule					//end 3input and gate

module _and4(a,b,c,d,y);//start 4input and gate
input a,b,c,d;				//4input
output y;					//1output
assign y=a&b&c&d;			//and four inputs
endmodule					//end 4input and gate

module _and5(a,b,c,d,e,y);	//start 5input and gate
input a,b,c,d,e;				//5input
output y;						//1output
assign y=a&b&c&d&e;			//and five inputs
endmodule						//end 5input and gate

module _or3(a,b,c,y);	//start 3input or gate
input a,b,c;				//3input
output y;					//1output
assign y=a|b|c;			//or three inputs
endmodule					//end 3input or gate

module _or4(a,b,c,d,y);	//start 4input or gate
input a,b,c,d;				//4input	
output y;					//1output
assign y=a|b|c|d;			//or four inputs
endmodule					//end 4input or gate

module _or5(a,b,c,d,e,y);	//start 5input or gate
input a,b,c,d,e;				//5input	
output y;						//1output
assign y=a|b|c|d|e;			//or five inputs
endmodule						//end 5input or gate

module _inv_4bits(a,y);		//start 4input not gate
input [3:0] a;					//4bit input	
output [3:0] y;				//4bit output
assign y=~a;					// y = not a
endmodule						//end 4input not gate

module _and2_4bits(a,b,y);	//start 4bit 2input and gate
input [3:0] a,b;				//4bit input
output [3:0] y;				//4bit output
assign y=a&b;					//y = a & b
endmodule						//end 4bit 2input and gate
	
module _or2_4bits(a,b,y);	//start 4bit 2input or gate
input [3:0] a,b;				//4bit input a & b
output [3:0] y;				//4bit output y
assign y=a|b;					//y = a or b
endmodule						//end 4bit 2input or gate

module _xor2_4bits(a,b,y);							//start 4bit 2input xor gate
input [3:0] a,b;										//4bit input a, b
output [3:0] y;										//4bit output y
_xor2 U0_xor2(.a(a[0]), .b(b[0]), .y(y[0]));	//y = a xor b 	first bit
_xor2 U1_xor2(.a(a[1]), .b(b[1]), .y(y[1]));	//            	second bit
_xor2 U2_xor2(.a(a[2]), .b(b[2]), .y(y[2]));	//					third bit
_xor2 U3_xor2(.a(a[3]), .b(b[3]), .y(y[3]));	//					forth bit
endmodule												//end 4bit 2input xor gate

module _xnor2_4bits(a,b,y);							//start 4bit 2input xnor gate
input [3:0] a,b;											//4bit input a, b
output [3:0] y;											//4bit output y
wire [3:0] w0;												//4bit wire w0		
_xor2_4bits U0_xor2_4bits(.a(a), .b(b), .y(w0));//module 4bit 2input xor gate
_inv_4bits U1_inv_4bits(.a(w0), .y(y));			//module 4bit 2input not gate
endmodule													//end 4bit 2input xnore gate
