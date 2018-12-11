// Code your testbench here
// or browse Examples
module top;

//example of queue
bit [31:0] src[5] = '{1,2,3,4,5};
bit [31:0]  q3[$];

initial begin
    q3 = src;
    q3.delete(3);
    foreach(q3[i])
      $display(q3[i]);
end
endmodule
