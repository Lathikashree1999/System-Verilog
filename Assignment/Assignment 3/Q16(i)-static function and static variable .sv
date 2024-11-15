//16.) i) Predict the output for the following exercises

class base;
	static int i;
	static function get();
		int a;
		a++;
		i++;
  		$display("a=%0d",a);
  		$display("i=%0d",i);
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
a=1
i=1
a=1
i=2
a=1
i=3*/
