// we normally randomize contents of an external class
// but sometimes we have to randomize local variables
// For example, in driver, certain parameters may need to be
// randomized
// This example shows how in a class, x variable is randomized within
// the class
module randomize;
class BaseC;
  rand int x;
  
  function func1;
    void'( randomize(x) with {(x>0) && (x<100);});
    $display ("x is %d", x);
  endfunction
endclass: BaseC

BaseC    P1 = new;

initial begin
  P1.func1;
end
endmodule
