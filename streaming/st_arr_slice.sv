// slice from an array using variable based slicing
module mod;
  int arr_1[10] = {1,2,3,4,5,6,7,8,9,10};
  int arr_2[];
  int size = 5;
  
  initial
    begin
      arr_2 = new[size];
      arr_2 = {>>int{arr_1 with [0+:size]}};
      
      $display ("%p %p", arr_1, arr_2);
    end
endmodule
