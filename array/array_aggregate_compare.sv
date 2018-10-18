module x;
  
  int a[8] = {1,2,3,4,5,6,7,8};
  int b[8] = {1,2,3,4,5,6,7,8};
  
  initial begin
    if (a == b) $display ("arrays are equal");
  end
endmodule
