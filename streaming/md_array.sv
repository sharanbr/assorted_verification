// Code your testbench here
// or browse Examples
module x;
  bit [1:0] arr_1[0:1] = {2'b01, 2'b01};
  bit [3:0] arr_2;
  bit [3:0] arr_3;
  
  initial begin
    {>>{arr_2}} = arr_1;
    {<<{arr_3}} = arr_1;
    
    $display ("%p ", arr_2);
    $display ("%p ", arr_3);
  end

endmodule
