module x;
  bit a,b,c,d;
  
  initial
    begin
      {a,b,c,d} = 4'b1010;
      $display ("abcd %b", {a,b,c,d});
    end
endmodule
