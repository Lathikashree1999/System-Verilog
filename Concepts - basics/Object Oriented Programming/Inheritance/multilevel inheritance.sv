class parent;
  bit [31:0] data_p;
  function void display_p();
    $display("Parent : Val of data = %0h",data_p);
  endfunction
endclass
  
class child1 extends parent;
  bit [31:0] data_c1;
  function void display_c1();
    $display("Child1 : Val of data = %0h",data_c1);
  endfunction
endclass

class child2 extends parent;
  bit [31:0] data_c2;
  function void display_c2();
    $display("Child2 : Val of data = %0h",data_c2);
  endfunction
endclass

class childA extends child1;
  bit [31:0] data_cA;
  function void display_cA();
    $display("Child1A : Val of data = %0h",data_cA);
  endfunction
endclass

class childB extends child2;
  bit [31:0] data_cB;
  function void display_cB();
    $display("Child2B : Val of data = %0h",data_cB);
  endfunction
endclass

module tb;
  initial begin
    childB cB = new();
    cB.data_p = 2;
    cB.data_c2 = 8;
    cB.data_cB = 12;
    
    cB.display_p();
    cB.display_c2();
    cB.display_cB();
  end
endmodule
    
/*Output
Parent : Val of data = 2
Child2 : Val of data = 8
Child2B : Val of data = c*/
