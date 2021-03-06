module poly_case7;

class BaseC;

  function func1;
    $display ("func1 in BaseC");
    func2;
  endfunction

  virtual function func2;
    $display ("func2 in BaseC");
  endfunction

endclass: BaseC

class DerivedC extends BaseC;

  function func1;
    $display ("func1 in DerivedC");
    func2;
  endfunction

  virtual function func2;
    $display ("func2 in DerivedC");
  endfunction

endclass : DerivedC

BaseC    P1 ;
DerivedC P2 = new;

initial begin
  P1 = P2; 
  P1.func1;
end

endmodule
