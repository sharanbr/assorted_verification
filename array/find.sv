module example_6;
  int arr[10] = {1,2,3,4,5,6,7,8,9,10};
  int arr_index[$];
  
  initial
    begin
      arr_index = arr.find (x) with (x>5);
      
      $display ("arr_index %p", arr_index);
    end
  
endmodule
