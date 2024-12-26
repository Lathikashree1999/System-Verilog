class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 15;
    id = 7;
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module example;
  transaction tr;
  
  initial begin
    tr = new();
    tr.display();
  end
endmodule

/*Output
tr.display();
             |
xmvlog: *E,CLSNLO (testbench.sv,22|13): Access to local member 'display' in class 'transaction' is not allowed here.*/
