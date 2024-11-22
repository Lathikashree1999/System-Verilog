class packet;
  rand bit [2:0] addr1;
  randc bit [2:0] addr2;
endclass

module eg;
  initial begin
    packet pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("Addr1 with rand = %0d, Addr2 with randc = %0d", pkt.addr1, pkt.addr2);
    end
  end
endmodule

/*Output
Addr1 with rand = 2, Addr2 with randc = 1
Addr1 with rand = 2, Addr2 with randc = 5
Addr1 with rand = 3, Addr2 with randc = 0
Addr1 with rand = 1, Addr2 with randc = 4
Addr1 with rand = 2, Addr2 with randc = 7
Addr1 with rand = 7, Addr2 with randc = 6
Addr1 with rand = 5, Addr2 with randc = 2
Addr1 with rand = 3, Addr2 with randc = 3
Addr1 with rand = 6, Addr2 with randc = 0
Addr1 with rand = 7, Addr2 with randc = 6*/
