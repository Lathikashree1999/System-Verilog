module packed_array_3d;
  bit [2:0][3:0][7:0] data;
  initial begin
    data[0] = 32'hface_cafe;
    data[1] = 32'h1234_5678;
    data[2] = 32'hc0de_fade;
    $display("data = %0h",data);
    foreach(data[i]) begin
      $display("data[%0d] = %0h", i, data[i]);
      foreach(data[i][j]) begin
        $display("data[%0d][%0d] = %0h", i, j, data[i][j]);
      end
    end
  end
endmodule
      
