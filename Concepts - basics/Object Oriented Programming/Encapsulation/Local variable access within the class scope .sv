class transaction;
  bit [31:0] data;
  local int id;

  function new();
    data = 15;
    id = 7;
  endfunction
  
  function void display();
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
data = 100 and id = 1*/
