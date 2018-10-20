// not only regular variables but even arrays can be randomized
// this example shows that
class b;
  rand int q[100];
endclass

module test;
  initial begin
    b b1 = new();
     
    b1.randomize();
    
    $display ("q val %p", b1.q);
  end
endmodule
