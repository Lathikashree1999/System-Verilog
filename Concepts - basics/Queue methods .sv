module queue_methods;
  int j;
  int q[$] = '{0,2,5,9,14,20};
  
  initial begin
    j = 1;
    q.insert(1,j);
    $display("q=%p",q);
    q.delete(1);
    $display("deleted index 1 value from q = %p",q);
    q.push_front(7);
    $display("7 pushed front in q=%p",q);
    q.push_back(9);
    $display("9 pushed back in q=%p",q); 
    q.pop_front();
    $display("popped front from q=%p",q);
    q.pop_back();
    $display("popped back from q=%p",q);
    q.reverse();
    $display("reversed q=%p",q);
    q.sort();
    $display("sorted q=%p",q);
    q.rsort();
    $display("reverse sorted q=%p",q);
    q.shuffle();
    $display("shuffled q=%p",q);
  end
endmodule
    
    
    
