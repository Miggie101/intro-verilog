// Miguel Madrigal 3/3/2023
`include "example_and_gate.v"

module Testbench;
	reg input_1, input_2;
	wire and_result;
  
  // import and connect to module 
	example_and_gate uut(.input_1(input_1), .input_2(input_2), .and_result(and_result));

  // lets test all input combinations and print the results
	initial begin
		$monitor ("[$monitor] Result=%0h input1= %0h input2=%0h", and_result, input_1, input_2);
		input_1 = 0; input_2 = 0 ; # 10;
		input_1 = 0; input_2 = 1 ; # 10;
		input_1 = 1; input_2 = 0 ; # 10;
		input_1 = 1; input_2 = 1 ; # 10;
		$finish();
	end
endmodule
