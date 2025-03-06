class monitor;
 
   virtual intf vif;
  transaction tr2;
  mailbox mon2sb;
  
  function new(mailbox mon2sb, virtual intf vif);
    this.mon2sb=mon2sb;
    this.vif=vif;
   
  endfunction
  
   task main;
     // mon2sb=new();
     forever begin
     
       tr2=new(); 
       mon_write();
      
       mon_read();
       
      mon2sb.put(tr2);
       $display("MONITOR :: PUT THE DATA");
    end
  endtask
      
  task mon_write();
    
    @(posedge vif.wclk)
    
    tr2.winc<=vif.winc;
    tr2.wdata<=vif.wdata;
    
    $display("MONITOR :: WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",tr2.wrst_n,tr2.wdata,tr2.winc); 
  endtask
  
   task mon_read();
    
     @(posedge vif.rclk);
    tr2.rinc<=vif.rinc;
    tr2.rdata<=vif.rdata;
     
     $display("MONITOR :: READ OPERATION::rrst=%0b,rdata=%0b,rinc=%0b",tr2.rrst_n,tr2.rdata,tr2.rinc); 
  
  endtask
        
        
endclass
