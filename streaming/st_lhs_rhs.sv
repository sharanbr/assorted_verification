// streaming operator can be both on LHS and RHS
module x;
  
  typedef struct {
    bit [3:0] a;
    bit [3:0] b;
  } my_struct_t;
    
  bit [7:0] v1;
  my_struct_t struct_v1;
  
  initial
    begin
      v1 = 8'hA5;
      {>>{struct_v1}} = v1;
      $display ("struct_v1.a %h struct_v1.b %h", struct_v1.a, struct_v1.b);
      
      {>>{struct_v1}} = {<<4{v1}};
      $display ("struct_v1.a %h struct_v1.b %h", struct_v1.a, struct_v1.b);   
    end
endmodule
