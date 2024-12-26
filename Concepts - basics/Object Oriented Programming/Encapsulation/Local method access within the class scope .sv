class transaction;
  bit [31:0] data;
  int id;

  function new();
    data = 15;
    id = 7;
    display();
  endfunction
  
  local function void display();
    $display("data = %0d and id = %0d", data, id);
  endfunction
endclass

module example;
  transaction tr;
  
  initial begin
    tr = new();
  end
endmodule

/*Output
data = 15 and id = 7*/
