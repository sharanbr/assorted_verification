class c1;
  int a;
  int bl
endclass

module x;
  
  initial
    begin
      c1 c1_inst1;
      c1 c1_inst2;
      
      c1_inst1.a = 10;
      c1_inst1.b = 20;
      c1_inst2.a = 10;
      c1_inst2.b = 20;
      
      if (c1_inst1 == c1_inst2) $display ("class objects math");
      else $display ("class objects dont match");
      
    end
endmodule
