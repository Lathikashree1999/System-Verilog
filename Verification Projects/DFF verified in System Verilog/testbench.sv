`include "operation.sv"
`include "DFF_test.sv"

module testbench;
  DFF_test test;
  mailbox mail;
  operation intf();
  
  d_flipflop dut(.clk(intf.clk), .rst(intf.rst), .D(intf.D), .Q(intf.Q));
  
  initial begin
    mail = new();
    test = new(intf, mail);
    fork 
      test.memory;
      test.run;
    join
  end
  
  initial begin
    intf.rst = 1'b1;
    intf.clk = 1'b1;
    #20; intf.rst = 0;
    #100; $finish;
  end
  
  always #10 intf.clk = ~intf.clk;
  
  initial begin
    $monitor("time = %0t, clk = %d, rst = %0d, D = %d, Q = %d", $time, intf.clk, intf.rst, intf.D, intf.Q );
  end
endmodule
    
    
  
