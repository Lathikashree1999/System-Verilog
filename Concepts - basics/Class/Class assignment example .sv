class packet;
  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  
  function new();
    addr = 32'h10;
    data = 32'hff;
    write = 1;
    pkt_type = "Good Packet";
  endfunction
  
  function void display();
    $display("addr = %0d",addr);
    $display("data = %0h",data);
    $display("write = %0d",write);
    $display("pkt_type = %0s",pkt_type);
  endfunction
endclass

module class_assignment;
  packet pkt1;
  packet pkt2;
  
  initial begin
    pkt1 = new();
    $display("Calling pkt1 display");
    pkt1.display();
    
    pkt2 = pkt1; // Class assignment
    
    $display("Calling pkt2 display");
    pkt2.display();
    
    pkt2.addr = 32'hab;
    pkt2.pkt_type = "Bad packet";
    
    $display("Calling pkt1 display");
    pkt1.display();
  end
endmodule
    
  
