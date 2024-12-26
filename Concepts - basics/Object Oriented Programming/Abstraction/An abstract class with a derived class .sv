virtual class parent;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child extends parent;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module example;
  initial begin
    child c;
    c = new();
    
    c.data = 4;
    c.id = 3;
    c.display();
  end
endmodule

/*Output
Child: Value of data = 4 and id = 3*/
