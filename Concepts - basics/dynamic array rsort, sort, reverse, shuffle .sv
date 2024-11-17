module dynamic_array;
  int arr1[];
  int arr2[] = '{3,2,5,8,9};
  
  initial begin
    arr1 = new[6];
    
    $display("arr1 = %p", arr1);
    
    foreach(arr1[i]) begin
      arr1[i] = i;
    end
    
    $display("arr1 size = %d", arr1.size());
    
    arr2.reverse();
    $display("arr2 reversed = %p", arr2);
    
    arr2.sort();
    $display("arr2 sorted = %p", arr2);
    
    arr2.rsort();
    $display("arr2 reverse sorted = %p", arr2);
    
    arr2.shuffle();
    $display("arr2 shuffled = %p", arr2);
    
    arr2.delete();
    $display("arr2 size after deleting : %0d",arr2.size());
  end
endmodule
    

  
  
  
    
    
