class parent;
  rand bit [5:0]value;
  constraint value_c{value > 0 ; value < 10;}
endclass

class child extends parent;
  constraint value_c{value inside {[10:30]};}
endclass

module tb;
  initial begin
    parent p = new();
    child c = new();
    repeat(3) begin
      p.randomize();
      $display("Parent class: value = %0d",p.value);
      c.randomize();
      $display("Child class: value = %0d",c.value);
    end
  end
endmodule

/*Output
Parent class: value = 1
Child class: value = 13
Parent class: value = 9
Child class: value = 23
Parent class: value = 6
Child class: value = 26*/
