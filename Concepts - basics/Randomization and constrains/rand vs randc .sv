class rand_vs_randc;
  rand logic [1:0] rand_data;
  randc logic [1:0] randc_data;
  function void display();
    $display("rand_data=%0h, randc_data=%0h",rand_data,randc_data);
  endfunction
endclass

module tb;
  rand_vs_randc p = new();
  initial begin
    repeat(10) begin
      p.randomize();
      p.display();
    end
  end
endmodule

/*Output
rand_data=0, randc_data=3
rand_data=0, randc_data=1
rand_data=1, randc_data=2
rand_data=3, randc_data=0
rand_data=0, randc_data=2
rand_data=3, randc_data=3
rand_data=2, randc_data=1
rand_data=2, randc_data=0
rand_data=0, randc_data=3
rand_data=0, randc_data=1*/
