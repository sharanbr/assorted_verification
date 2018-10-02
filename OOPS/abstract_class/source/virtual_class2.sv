// this example demonstrates the case where the derived class
// overrides only one function from base class that is pure virtual
// the second pure virtual function is not overridden which is not allowed
module virtuaLclass;

virtual class BaseC;
  pure virtual function func1;
  pure virtual function func2;
endclass: BaseC

class DerivedC extends BaseC;
  function func1;
  endfunction
endclass : DerivedC

BaseC    P1 ;
DerivedC P2 = new;

endmodule
