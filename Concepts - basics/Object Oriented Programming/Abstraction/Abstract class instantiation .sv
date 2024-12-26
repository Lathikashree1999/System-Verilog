virtual class parent;
  bit [31:0] data;
  int id;
  
   function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

module class_example;
  initial begin
    parent p;
    p = new();
    
    p.data = 9;
    p.id = 7;
    p.display();
  end
endmodule

/*Output
p = new();
    |
xmvlog: *E,CNIABC (testbench.sv,15|4): An abstract (virtual) class cannot be instantiated.*/
