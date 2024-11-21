class transaction;
  bit [31:0] data;
  int id;
  
  function new(bit [31:0]m_data);
    $display("Inside constructor");
    data = m_data;
    $display("Value of m_data = %0h",m_data);
  endfunction
 endclass

module class_eg;
  initial begin
    transaction tr = new(10);
    $display("Value of data = %0h", tr.data);
  end
endmodule
