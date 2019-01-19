module x;
  
  class transt;
    int a,b;
  endclass
  
  class producer;
    task producer_thread (consumer c1_inst);
      transt t1_inst;
      for (int idx = 0; idx < 10; idx++) begin
        t1_inst = new;
        t1_inst.a = idx;
        t1_inst.b = idx*2;
        c1.enqueue(t1_inst);
        #10ns;
    endtask
  endclass

  class consumer;
    transt c1_q[$];
    function enqueue (transct item);
      c1_q.push_back(item);
      
      for (int idx = 0; idx < c1_q.size; idx++) begin
        $display ("a %d b %d", c1_q[idx].a, c1_q[idx].b);
      end
    endfunction
  endclass
        
  initial begin
    producer p1 = new;
    consumer c1 = new;
    
    #100ns;
    p1.producer_thread (c1);
    
    #10ns;
    $finish;
  end
endmodule
