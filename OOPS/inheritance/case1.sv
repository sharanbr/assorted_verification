class base ;

task func1();
  $display ("func1 in base");
endtask

task func2();
  func1(); 
endtask
  
endclass  
  
class Derivedbase extends base ;
  
task func1();
  $display ("func1 in derived");
endtask

endclass
  
module test;
  Derivedbase db = new();
  
initial
  db.func2();

endmodule

