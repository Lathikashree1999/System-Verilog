//15. Predict the output for the following exercises

class base;
	int i;
	static function void get();
		int a;
		a++;
		i++;
		$display(a);
		$display(i);
	endfunction
endclass

base b1_h,b2_h;

module test();
	initial begin
		b1_h.get();
		b1_h.get();
		b2_h.get();
	end
endmodule

/*Output
i++;
		|
xmvlog: *E,CLSNSU (testbench.sv,8|2): A static class method cannot access non static class members.
		$display(i);
		         |
xmvlog: *E,CLSNSU (testbench.sv,10|11): A static class method cannot access non static class members.*/
