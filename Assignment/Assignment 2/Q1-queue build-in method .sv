/*Q1. Code for queue build-in methods size, insert (n/2 position, n position, n-1 p delete, pop_front,
pop_back, push_front and push_back.*/

module queue_example;
  int que_eg[$];

  initial begin
    que_eg.push_back(10);
    que_eg.push_back(20);
    que_eg.push_back(30);
    que_eg.push_back(40);
    que_eg.push_back(50);

    $display("Initial queue: %p", que_eg);

    $display("Queue size: %0d", que_eg.size());

    que_eg.insert(que_eg.size()/2, 99);  
    que_eg.insert(que_eg.size(), 88);  
    $display("Queue after insertion: %p", que_eg);

    que_eg.delete(que_eg.size()-2);     
    $display("Queue after deletion: %p", que_eg);

    que_eg.pop_front();
    $display("Queue after pop_front: %p", que_eg);
    que_eg.pop_back();
    $display("Queue after pop_back: %p", que_eg);

    que_eg.push_front(5);
    que_eg.push_back(55);
    $display("Queue after push_front and push_back: %p", queue_q);
  end
endmodule

/*Output:
Initial queue: '{10, 20, 30, 40, 50}
Queue size: 5
Queue after insertion: '{10, 20, 99, 30, 40, 50, 88}
Queue after deletion: '{10, 20, 99, 30, 40, 88}
Queue after pop_front: '{20, 99, 30, 40, 88}
Queue after pop_back: '{20, 99, 30, 40}
Queue after push_front and push_back: '{5, 20, 99, 30, 40, 55}*/

