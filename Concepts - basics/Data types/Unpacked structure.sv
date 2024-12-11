module struct_example;
  typedef struct {
    string name;
    bit[31:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp1, emp2;
    emp1.name = "Alex";
    emp1.salary = 'h10000;
    emp1.id     = 'd1234;
    $display("employee 1: %p", emp1);
    
    emp2.name = "John";
    emp2.salary = 'h12000;
    emp2.id     = 'd4321;
    $display("employee 2: %p", emp2);
  end
endmodule

/*Output
employee 1: '{name:"Alex", salary:'h10000, id:1234}
employee 2: '{name:"John", salary:'h12000, id:4321}*/
