module x;

  class c1;
    int a,b;
  endclass
  
  c1 c1_q[$];
  
  function enqueue (c1 c1_par);
    c1_q.push_back(c1_par);
  endfunction
  
  always begin
    for (int idx = 0; idx < 10; idx++) begin
      c1 c1_inst;
      c1_inst = new;
      c1_inst.a = idx;
      c1_inst.b = idx*2;
    end
  end

endmodule
