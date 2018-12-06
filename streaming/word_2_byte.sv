// Code your testbench here
// or browse Examples
module example_3_2;
  initial begin
    bit [15:0]  array_1[4] = '{16'h1234, 16'h5678, 8'h1122, 8'h3344 };
    byte array_2[8];
    {>>{array_2}} = array_1;
 
    foreach (array_2[i])
      $display("array_2[%d] = %h", i, array_2[i]);
  end
endmodule
