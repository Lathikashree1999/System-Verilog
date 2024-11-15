//16.) ii) Predict the output for the following exercises

class base;
	static int i;
	function static get();
		int a;
		a++;
		i++;
		$display(a);
		$display(b);
	endfunction
endclass

module test();
  initial begin
	b1_h.get();
	b1_h.get();
	b2_h.get();
  end
endmodule

/*Output
Top level design units:
		$unit_0x4ccdf83b
		test
$display(b);
         |
xmelab: *E,CUVUNF (./testbench.sv,10|9): Hierarchical name component lookup failed for 'b' at '$unit_0x4ccdf83b'.
b1_h.get();
       |
xmelab: *E,CUVUNF (./testbench.sv,16|7): Hierarchical name component lookup failed for 'b1_h' at 'test'.
b1_h.get();
       |
xmelab: *E,CUVUNF (./testbench.sv,17|7): Hierarchical name component lookup failed for 'b1_h' at 'test'.
b2_h.get();
       |
xmelab: *E,CUVUNF (./testbench.sv,18|7): Hierarchical name component lookup failed for 'b2_h' at 'test'.*/
