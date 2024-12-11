module arr_ordering_ex;
  int arr[8] = '{5,6,9,2,3,4,6,10};
  int que[$];
  initial begin
    que.push_back(45);
    que.push_back(30);
    que.push_back(99);
    que.push_back(51);
    que.push_back(85);
    
    $display("ARRAY = %p",arr);
    $display("QUEUE = %p",que);
    
    $display("and for: arr = %0h and queue = %0h", arr.and(), que.and());
    $display("or for : arr = %0h and queue = %0h", arr.or(), que.or());
    $display("xor for: arr = %0h and queue = %0h", arr.xor(), que.xor());
    $display("sum for: arr = %0d and queue = %0d", arr.sum(), que.sum());
    $display("product for: arr = %0d and queue = %0d", arr.product(), que.product());  
  end
  
  function void print_array_queue();
    $display("Array = %p", arr);
    $display("Queue = %p", que);
  endfunction
endmodule

/*Output
ARRAY = '{5, 6, 9, 2, 3, 4, 6, 10}
QUEUE = '{45, 30, 99, 51, 85}
and for: arr = 0 and queue = 0
or for : arr = f and queue = 7f
xor for: arr = 3 and queue = 36
sum for: arr = 45 and queue = 310
product for: arr = 388800 and queue = 579372750*/
