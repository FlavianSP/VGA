module counter(

	input clock,
	input reset,
	output reg [31:0] counter

);

always @(posedge clock) begin

	if(reset)
	
		counter <= 0;
		
		else
		
			counter <= counter + 1;
			
end

endmodule