class scoreboard;
   
//   parameter DSIZE =8
//  parameter ASIZE =4
  
  transaction pkt;
  mailbox mon2sb;
//   virtual intf vif
//   event hold;
  
  bit [7:0] read_data_sb;
  bit wfull;
  bit rempty;
  bit [7:0] write_data_sb[$];
  
 function new(mailbox mon2sb);
    this.mon2sb=mon2sb;
 endfunction
  
 task main;
    transaction pkt;
    forever begin
        mon2sb.get(pkt);  //  Fetch a new transaction each time
        
        $display("SCOREBOARD INSIDE LOGIC");
        
        if (pkt.wrst_n && !pkt.wfull && pkt.winc) begin
            write_data_sb.push_front(pkt.wdata);
            $display("SCOREBOARD :: data in queue: din=%0d", pkt.wdata);
        end else 
            $display("SCOREBOARD :: FIFO FULL");

        if (pkt.rrst_n && !pkt.rempty && pkt.rinc) begin
            if (write_data_sb.pop_back() == pkt.rdata) begin
                $display("SCOREBOARD PASS");
            end else begin
                $display("SCOREBOARD FAIL");
            end
        end
    end
endtask
  
endclass
