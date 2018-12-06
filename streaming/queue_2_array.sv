// Code your testbench here
// or browse Examples
module example_3_2;
  initial begin
    static byte     array[4] = '{ 8'h8C, 8'h00, 8'hA4, 8'hFF };
    static shortint queue[$];
    byte array_1[4];
 
    {>>{queue}} = array;
    
    {>>{array_1}} = queue;
 
    foreach (queue[i])
      $display("queue[%0d] = 0x%h", i, queue[i]);
    
    foreach (array_1[i])
      $display("array_1[%d] = %h", i, array_1[i]);
  end
endmodule
