class address_range;
  bit [31:0] start_addr;
  bit [31:0] end_addr;
  function new();
    start_addr = 10;
    end_addr = 50;
  endfunction
endclass
  
  class packet;
    bit [31:0] addr;
    bit [31:0] data;
    address_range ar; //handle for class address_range
    
    function new();
      addr = 32'h10;
      data = 32'hFF;
      ar = new();
    endfunction
    
    function void display();
      $display("addr = %0h",addr);
      $display("data = %0h",data);
      $display("start_addr = %0d",ar.start_addr);
      $display("end_addr = %0d",ar.end_addr);
    endfunction
  endclass
    
    module shallow_copying;
      packet pkt1;
      packet pkt2;
       address_range ar;
      
      initial begin
        pkt1 = new();
        $display("Calling pkt1 display");
        pkt1.display();
        
        pkt2 = new pkt1; //shallow copying
        $display("Calling pkt2 display");
        pkt2.display();
        
        pkt2.addr = 32'h68;
        pkt2.ar.start_addr = 60;
        pkt2.ar.end_addr = 80;
        
        $display("Calling pkt1 display after changing pkt2 properties");
        pkt1.display();
     
        $display("Calling pkt2 display after changing pkt2 properties");
        pkt2.display();
      end
    endmodule

/*Output
Calling pkt1 display
addr = 10
data = ff
start_addr = 10
end_addr = 50
Calling pkt2 display
addr = 10
data = ff
start_addr = 10
end_addr = 50
Calling pkt1 display after changing pkt2 properties
addr = 10
data = ff
start_addr = 60
end_addr = 80
Calling pkt2 display after changing pkt2 properties
addr = 68
data = ff
start_addr = 60
end_addr = 80*/
        
        
        
