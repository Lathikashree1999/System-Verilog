module union_example;
  typedef union {
    bit[15:0] salary;
    integer id;
  } employee;
    
  initial begin
    employee emp;
    emp.salary = 'h800;
    $display("salary updated for employee: %p", emp);
    emp.id     = 'd1234;
    $display("ID updated for employee: %p", emp);
  end
endmodule

/*Output
salary updated for employee: '{salary:'h800}
ID updated for employee: '{salary:'h4d2}*/
