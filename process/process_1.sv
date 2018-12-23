// how blocks can be used to encapsulate code blocks
module mod;
  int arr_1[10] = {1,2,3,4,5,6,7,8,9,10};
  int arr_2[];
  int size = 5;
  
  final
    begin
      arr_2 = new[size];
      arr_2 = {>>int{arr_1 with [0+:size]}};
      
      begin
        $display ("%p %p", arr_1, arr_2);
      end
      begin
        $display ("%p %p", arr_1, arr_2);
      end
    end
endmodule
