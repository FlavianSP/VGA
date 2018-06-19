module comparator(

	input [31:0] counter,
	output reg clock_div_enable

);

reg [31:0] constantNumber = 480001;

always @(counter) begin

	if(counter != constantNumber)
	
		clock_div_enable = 0;
		
		else
		
			clock_div_enable = 1;
			
end

endmodule