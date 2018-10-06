// variable of derived class is being accessed using base class handle
// which is ilegal
module casting;
class BaseC;
endclass: BaseC

class DerivedC extends BaseC;
  int x;
endclass : DerivedC

BaseC    P1 ;
DerivedC P2 = new;

initial begin
  P1 = P2; 
  P1.x  = 10;
end
  
endmodule
