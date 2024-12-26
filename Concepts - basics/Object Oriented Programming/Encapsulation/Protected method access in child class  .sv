class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 58;
    id = 10;
  endfunction
  
  protected function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

class child extends transaction;
  bit [31:0] addr;
  
  task calc_addr;
    addr = data * id;
    display(); 
    $display("addr = %0d", addr);
  endtask
endclass

module example;
  child tr;
  
  initial begin
    tr = new();
    tr.calc_addr();
  end
endmodule

/*Output
data = 58 and id = 10
addr = 580*/
