virtual class parent;
  bit [31:0] data;
  int id;
  
  pure virtual function void display();
endclass

class child extends parent;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module example;
  initial begin
    parent p;
    child c;
    c = new();
    
    p = c;
    p.data = 8;
    p.id = 7;
    p.display();
  end
endmodule

/*Output
Child: Value of data = 8 and id = 7*/
