// similarly, one can do sum, product, AND, OR, XOR
module example_6;
  int arr[10] = {1,2,3,4,5,6,7,8,9,10};
      
  initial
    begin
      $display ("sum %d", arr.sum);
    end  
endmodule
