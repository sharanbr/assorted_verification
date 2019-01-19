module x;
  class c1;
    int a,b;
  endclass

  c1 c1_q[$];

  function enqueue (c1 c1_par);
    c1_q.push_back(c1_par);
  endfunction

  always begin
    c1 c1_inst;
    for (int idx = 0; idx < 10; idx++) begin
      c1_inst = new;
      c1_inst.a = idx;
      c1_inst.b = idx*2;
      #10ns;
    end
  end
  
  always begin
    #10ns;
    for (int idx = 0; idx < c1_q.size; idx++) begin
      $display ("a %d b %d", c1_q[idx].a, c1_q[idx].b);
    end
  end
  
  initial begin
    #1000ns;
    $finish;
  end
endmodule
