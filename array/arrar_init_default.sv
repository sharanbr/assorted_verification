// array initilization using default
module mod;
  int n [1:2] [1:3] = '{default:2};
  
  initial
    begin
      $display ("%p", n);
    end
endmodule
