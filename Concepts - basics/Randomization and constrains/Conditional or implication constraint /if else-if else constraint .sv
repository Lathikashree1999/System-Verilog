class item;
  rand bit [7:0] value;
  rand enum {LOW, MID, HIGH}scale;
  
  constraint scales {if(scale == LOW) value<30;
                     else if (scale == MID) {value>=30; value<=70;}
                     else value>70;}
endclass

module contstraint_eg;
  item it = new();
  initial begin
    repeat(10) begin
      it.randomize();
      $display("scale = %s, value = %0d", it.scale.name(), it.value);
    end
  end
endmodule

/*Output
scale = LOW, value = 12
scale = HIGH, value = 184
scale = LOW, value = 18
scale = HIGH, value = 152
scale = LOW, value = 9
scale = HIGH, value = 204
scale = MID, value = 63
scale = MID, value = 49
scale = LOW, value = 28
scale = HIGH, value = 237*/
