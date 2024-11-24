class packet;
  rand bit [31:0] addr;
  string addr_range;
  
  constraint address{(addr_range == "small") -> (addr<8);}
endclass

module conditional_constran;
  initial begin
    packet pkt = new();
    pkt.addr_range = "big";
    repeat(3) begin
      pkt.randomize();
      $display("addr range = %s, addr = %0d",pkt.addr_range, pkt.addr);
    end      
    pkt.addr_range = "small";
    repeat(3) begin
      pkt.randomize();
      $display("addr range = %s, addr = %0d",pkt.addr_range, pkt.addr);
    end
  end
endmodule

/*Output
addr range = big, addr = 3659455377
addr range = big, addr = 3802347008
addr range = big, addr = 994538425
addr range = small, addr = 4
addr range = small, addr = 7
addr range = small, addr = 3*/
