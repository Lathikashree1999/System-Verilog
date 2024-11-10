//11. Sort the contents of a dynamic array which contains 10 elements in it.

module sort_dynamic_array;
  int dynamic_array[];
  int temp; 

  initial begin
    dynamic_array = new[10];
    dynamic_array = '{45, 23, 78, 12, 56, 89, 34, 67, 90, 15};

    $display("Array before sorting: %p", dynamic_array);

    for (int i = 0; i < dynamic_array.size(); i++) begin
      for (int j = i + 1; j < dynamic_array.size(); j++) begin
        if (dynamic_array[i] > dynamic_array[j]) begin
          temp = dynamic_array[i];
          dynamic_array[i] = dynamic_array[j];
          dynamic_array[j] = temp;
        end
      end
    end

    $display("Array after sorting: %p", dynamic_array);
  end
endmodule


/*Output
Array before sorting: '{45, 23, 78, 12, 56, 89, 34, 67, 90, 15}
Array after sorting: '{12, 15, 23, 34, 45, 56, 67, 78, 89, 90}*/
