class transaction;
  bit [31:0] data;
  local int id;
  
  function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.data = 15;
    tr.id = 7;
    tr.display();
  end
endmodule

/*Output
tr.id = 7;
        |
xmvlog: *E,CLSNLO (testbench.sv,18|8): Access to local member 'id' in class 'transaction' is not allowed here.*/
