module enum_example;
  typedef enum {RED = 1, YELLOW = 2, BLUE = 3, GREEN = 4} color_t;
  color_t color;

  initial begin
    color = RED;
    $display("Initial color: %s", color.name()); 
    color = color.next();  
    $display("Next color: %s", color.name());
    color = color.prev();  
    $display("Previous color: %s", color.name());
    color = color.first();
    $display("First color: %s", color.name());
    color = color.last();
    $display("Last color: %s", color.name());
    $display("Number of colors: %0d", color.num());
  end
endmodule
