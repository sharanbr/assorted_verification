// note how the size of arr_2 need not be defined and is automically taken care by
// streaming assignment
module x;
  initial begin
    bit [7:0] arr_1 [4] = {8'h1, 8'h2, 8'h3, 8'h4};
    bit [7:0] arr_2 [];
    arr_2 = {>>{arr_1}};
    $display ("arr2 %p", arr_2);
  end
endmodule
