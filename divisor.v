module divisor(

	input clock,
	input reset,
	input mode,
	input enable,
	output reg clock_div
);

counter DUT (

	.clock(clock),
	.reset(reset)

);

comparator DUT1 (

	.counter(counter),
	.clock_div_enable(enable)	

);

always @(posedge clock or posedge reset) begin

if(reset) 
	
	clock_div <= 32'b0;
	
	else
	
		case(mode)
		
			//4'b0000
			4'b0001: clock_div <= counter [0];
			//4'b0010: clock_div <= 
			//4'b0011: clock_div <= 
			//4'b0100: clock_div <= 
			4'b0101: clock_div <= counter [1];
			default : clock_div <= 32'b0;
endcase

end

endmodule



		