// examples shows how protected property work in the context of inheritence
// in this example, the derivative is 2 levels down.
// The example shows the levels of inheritence does not matter once a property is declared as 
// protected in the base class
class b;
  protected int prop;
endclass

class c extends b;
  
endclass

class d extends c;
  function set;
    prop = 10;
  endfunction
  
  function disp;
    $display ("prop %d", prop);
  endfunction
endclass

module test;
  initial begin
    d d1 = new();
    
    d1.set;
    d1.disp;
  end
endmodule
