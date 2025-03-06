`include "environment.sv"

class test;
  
   virtual intf vif;
   mailbox mon2sb;
   environment envi;
  
   function new(virtual intf vif);
      this.vif = vif;
      this.mon2sb = new();  //  Initialize mailbox
   endfunction
  
   task mem;
     envi = new(mon2sb, vif);  //  Create environment instance
   endtask
   
   task main;
      mem();  //  Ensure environment is created before execution
      fork
          envi.main;
      join
   endtask
  
endclass
