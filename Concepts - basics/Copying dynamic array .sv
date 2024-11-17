module tb;
  int arr[];
  int id[];
  
  initial begin
    arr = new[5];
    arr = '{1,3,4,5,7};
    
    id = arr;
    
    $display("id = %p",arr);
    
    id = new[id.size()+1](id);
    
    $display("New id = %p", id);
    
    $display("arr size = %0d",arr.size());
    
  end
endmodule
