class transaction1; // without this keyword
  bit [31:0] data;
  int id;
  
  function new(bit [31:0]data, int id);
    data = data;
    id = id;
  endfunction
endclass

module class_eg1;
  initial begin
    transaction1 tr1 = new(5,1);
    $display("Without this keyword : Value of data = %0d, id = %0d",tr1.data, tr1.id);
  end
endmodule


class transaction2; //with this keyword
  bit [31:0] data;
  bit id;
  
  function new(bit[31:0]data, int id);
    this.data = data;
    this.id = id;
  endfunction
endclass

module class_eg2;
  initial begin
    transaction2 tr2 = new(5,1);
    $display("With this keyword : Value of data = %0d, id = %0d",tr2.data, tr2.id );
  end
endmodule
