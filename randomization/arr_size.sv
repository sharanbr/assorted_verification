module x;
  
  class c1;
    rand int arr[];
    
    constraint cons_1
    {
      arr.size <5;
    }
  endclass
  
  initial begin
    c1 c1_obj;
    c1_obj = new;
    
    c1_obj.randomize;
    $display ("arr %p", c1_obj.arr);
    
    c1_obj.randomize;
    $display ("arr %p", c1_obj.arr);
  end
endmodule
