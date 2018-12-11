// delete selected entries from queue
module top;

bit [31:0] src[5] = '{1,2,3,4,5};
bit [31:0]  q3[$];
int k[] = {1,2};

initial begin
    q3 = src;
    foreach(q3[i])
      $display(q3[i]);
  
  foreach (k[i])
    q3.delete(k[i]);    
  
  foreach(q3[i])
    $display(q3[i]);
end
endmodule
