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
