class transaction;
  bit [31:0] data;
  int id;
endclass

module class_eg;
  transaction tr[5];
  initial begin
    foreach(tr[i]) begin
      tr[i] = new();
      tr[i].data = i*i;
      tr[i].id = i+1;
      $display("tr[%0d] data = %0d, id = %0d",tr[i], tr[i].data, tr[i].id);
    end
  end
endmodule
      
