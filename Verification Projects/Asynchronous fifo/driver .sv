class driver;
 
   virtual intf vif;
   mailbox gen2dri;
   transaction tr1;
  
  function new(mailbox gen2dri,virtual intf vif);
    this.gen2dri=gen2dri;
    this.vif=vif;
  endfunction

  task main;
    @(posedge vif.wclk)
    
    
    forever begin
          tr1=new();

    gen2dri.get(tr1);
      if(vif.rrst_n==0 && vif.wrst_n==0) 
      reset;
      else if (vif.wrst_n==1 && vif.rrst_n==0)
       write;
      else if (vif.wrst_n==0 && vif.rrst_n==1)
       read;
    else if (tr1.wrst_n==1 && tr1.rrst_n==1)
      read_write;
    
    end
  endtask
  
 
  task reset;
    
    @(posedge vif.wclk)
     vif.wrst_n<=0;
     vif.rrst_n<=0;
     vif.winc<=0;
     vif.rinc<=0;
     vif.wdata<=0;
     vif.rdata<=0;
    
    $display("DRIVER ::RESET OPERATION::rrst=%0b,rdata=%0b,rinc=%0b,wrst=%0b,wdata=%0b,winc=%0b",vif.rrst_n,vif.rdata,vif.rinc,vif.wrst_n,vif.wdata,vif.winc); 
  endtask
  
  
  task write;
    @(posedge vif.wclk)

    vif.wrst_n<=1;
    vif.winc<=1;
    vif.wdata<=tr1.wdata;
    
    
    $display("DRIVER::WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",vif.wrst_n,vif.wdata,vif.winc); 
  endtask
    
  
  
  task read;
    @(posedge vif.rclk)
    
    vif.rrst_n<=1;
    vif.rinc<=1;
    tr1.rdata<=vif.rdata;
    
     
    $display("DRIVER :: READ OPERATION::rrst=%0b,rinc=%0b,rdata=%0d",vif.rrst_n,vif.rinc,tr1.rdata); 
  
  endtask
  
  
  task read_write;
    
//     tr1.rd_rst.constraint_mode(1);
//        tr1.wr_rst.constraint_mode(1);
//        tr1.cn_wen.constraint_mode(1);
//        tr1.cn_ren.constraint_mode(1);
//        tr1.wr_only.constraint_mode(0);
//        tr1.rd_only.constraint_mode(0);
     @(posedge vif.wclk)
    vif.winc<=tr1.winc;
    vif.wdata<=tr1.wdata;
    $display("DRIVER::WRITE OPERATION::wrst=%0b,wdata=%0b,winc=%0b",vif.wrst_n,vif.wdata,vif.winc); 
    
    
      @(posedge vif.rclk)
    vif.rinc<=tr1.rinc;
    tr1.rdata<=vif.rdata;
    $display("DRIVER :: READ OPERATION::rrst=%0b,rinc=%0b,rdata=%0d",vif.rrst_n,vif.rinc,tr1.rdata);
    
    
    
//     $display("DRIVER :: READ_WRITE OPERATION::rrst=%0b,rdata=%0b,rinc=%0b,wrst=%0b,wdata=%0b,winc=%0b",vif.rrst_n,tr1.rdata,vif.rinc,vif.wrst_n,vif.wdata,vif.winc); 
 
  endtask
  
endclass
  
