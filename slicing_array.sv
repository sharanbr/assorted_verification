// Code your testbench here
// or browse Examples
module x;
  bit arr[10] = {1,0,1,0,1,0,1,0,1,0};
  bit arr_1[5] = arr[0:4];
  
  initial $display ("arr_1 %p", arr_1);
endmodule
