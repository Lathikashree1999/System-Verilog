class packet;
  rand bit [3:0]a;
  rand bit [3:0]b;
  rand bit [3:0]c;
  
  constraint a_value {a == b+c;}
  constraint b_value {b>6;}
  constraint c_value {c<8;}
endclass

module bidirectional_const;
  initial begin
    packet pkt = new();
      repeat(5) begin
        pkt.randomize();
        $display("Value of a = %0d, b = %0d, c = %0d",pkt.a, pkt.b, pkt.c);
      end
  end
endmodule

/*Output
Value of a = 7, b = 7, c = 0
Value of a = 13, b = 11, c = 2
Value of a = 14, b = 14, c = 0
Value of a = 10, b = 8, c = 2
Value of a = 12, b = 12, c = 0*/
