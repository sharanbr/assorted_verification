// left and right methods of array
module x;
  
  bit arr[20];
  
  initial begin
    int a,b;
    
    a = $left(arr);
    b = $right(arr);
    
    $display ("a %d b %d", a, b);
  end
endmodule
