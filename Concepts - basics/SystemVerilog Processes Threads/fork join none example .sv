module fork_join_none_example;
  initial begin
    fork
      begin 
        $display("Process A started at time = %0t", $time);
        #10;
        $display("Process A completed at time = %0t", $time);
      end
      begin 
        $display("Process B started at time = %0t", $time);
        #15;
        $display("Process B completed at time = %0t", $time);
      end
      begin 
        $display("Process C started at time = %0t", $time);
        #20;
        $display("Process C completed at time = %0t", $time);
      end
    join_none
    $display("fork-join_none completed at time = %0t", $time);
  end
endmodule

/*Output
fork-join_none completed at time = 0
Process A started at time = 0
Process B started at time = 0
Process C started at time = 0
Process A completed at time = 10
Process B completed at time = 15
Process C completed at time = 20*/
