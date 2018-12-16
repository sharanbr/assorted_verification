module x;

class c1;
  bit [3:0] prop1;
  bit [3:0] prop2;
  
  function print_me;
    $display ("prop1 %h prop2 %h", prop1, prop2);
  endfunction
endclass
  
  bit [7:0] src;
  c1 c1_inst = new();
  
  initial
    begin
      src = 8'h55;
      {>>{c1_inst.prop1, c1_inst.prop2}} = src;
      c1_inst.print_me;      
    end
endmodule
