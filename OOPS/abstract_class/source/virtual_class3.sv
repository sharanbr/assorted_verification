// this example demonstrates the case where the derived classes
// progressively override pure virtual functions from the base class
// DerivedmoreC overrides all the pure virtual functions in the base class
// which is the abstract class
// 
// Note:
// AS DerivedC does not override all the pure virtual functions in base class,
// it has to be decalred as virtual too
module virtuaLclass;

virtual class BaseC;
  pure virtual function func1;
  pure virtual function func2;
endclass: BaseC

virtual class DerivedC extends BaseC;
  function func1;
  endfunction
endclass : DerivedC

class DerivedmoreC extends DerivedC;
  function func2;
  endfunction
endclass: DerivedmoreC

BaseC    P1 ;
DerivedmoreC P2 = new;

endmodule
