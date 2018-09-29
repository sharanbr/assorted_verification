// this test demonstrates that if class is derived from an abstract class
// and the derived class does not override pure virtual function then
// this is an error
module virtuaLclass;

virtual class BaseC;
  pure virtual function func1;
endclass: BaseC

class DerivedC extends BaseC;
  
endclass : DerivedC

BaseC    P1 ;
DerivedC P2 = new;

initial begin
  P1 = P2; 
  P1.func1;
end
endmodule
