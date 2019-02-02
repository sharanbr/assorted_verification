// randomizing a struct
// rand qualifier for struct is needed
module mod1;

typedef struct {
  rand int x;
  rand int y;
} st;

class class_c1;
  rand st st1;
endclass
  
class_c1 c1_inst;

initial begin
  c1_inst = new;
  c1_inst.randomize();
  
  $display ("x %d y %d", c1_inst.st1.x, c1_inst.st1.y);
end

endmodule
