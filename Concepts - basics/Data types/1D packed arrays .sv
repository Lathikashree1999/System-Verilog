module single_dimensional_packed_array;
  bit [7:0] a;
  initial begin
    a=8'hA2;
    
    for(int i=0; i<$size(a); i++) begin
      $display ("a[%0d] = %b", i, a[i]);
    end
  end
endmodule
    
