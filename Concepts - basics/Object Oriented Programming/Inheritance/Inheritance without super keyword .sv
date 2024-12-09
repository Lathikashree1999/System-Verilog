class parent;
  bit [31:0] data;
  function void display();
    $display("Parent : Value of data = %0h",data);
  endfunction
endclass

class child extends parent;
  bit [31:0] data;
  function void display();
    $display("Child : Value of data = %0h",data);
  endfunction
endclass

module tb;
  initial begin
    child c = new();
    c.data = 5;
    c.display();
  end
endmodule

/*Output
Child : Value of data = 5*/
