// randomization rules apply outside class also
// this is an example of randomziation in a module
// note how the variables dont need to be declared with rand
module stim;
bit [15:0] addr;
bit [31:0] data;
bit rd_wr;
function bit gen_stim();
bit success;
  success = std::randomize( addr, data, rd_wr ) with { addr < 1024 ; };
  $display ("addr %d data %d", addr, data);
endfunction
  
  initial begin
    gen_stim;
  end
endmodule
