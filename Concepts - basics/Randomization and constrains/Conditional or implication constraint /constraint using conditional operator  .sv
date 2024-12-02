class packet;
  rand bit [31:0] addr;
  rand enum {low, high}addr_range;
  
  constraint address{addr == ((addr_range == low) ? 20 : 90);}
endclass

module conditional_constran;
  packet pkt; 
  
  initial begin
    pkt = new();
    repeat (5) begin
      pkt.randomize();
      $display("addr_range = %s, addr = %0d",pkt.addr_range.name(), pkt.addr);
    end
  end
endmodule

/*Output
addr_range = low, addr = 20
addr_range = high, addr = 90
addr_range = low, addr = 20
addr_range = low, addr = 20
addr_range = high, addr = 90*/
