class parent;
  bit [31:0] data;
  function void display_p();
    $display("Value of data = %0h",data);
  endfunction
endclass

class child extends parent;
  int id;
  function void display_c();
    $display("Value of id = %0h",id);
  endfunction
endclass

module tb;
  initial begin
    child c;
    c = new();
    c.data = 5;
    c.id = 1;
    
    c.display_p();
    c.display_c();
  end
endmodule

/*Output
Value of data = 5
Value of id = 1*/
