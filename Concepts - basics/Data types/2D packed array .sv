module packed_array_2d;
  bit [3:0] [7:0] data;
  initial begin
    data = 32'hface_cafe;
    $display("data = %0h", data);
    for (int i = 0; i<$size(data); i++) begin
	  $display("data[%0d] = %0b", i, data[i]);  
    end
  end
endmodule

