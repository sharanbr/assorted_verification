program main(); 

function void fun( int j = 1, string s = "no" ); 
$display("j is %0d : s is %s ",j,s); 
endfunction 

initial 
begin 
fun( .j(2), .s("yes") ); // fun( 2, "yes" ); 
fun( .s("yes") ); // fun( 1, "yes" ); 
fun( , "yes" ); // fun( 1, "yes" ); 
fun( .j(2) ); // fun( 2, "no" ); 
fun( .s("yes"), .j(2) ); // fun( 2, "yes" ); 
fun( .s(), .j() ); // fun( 1, "no" ); 
fun( 2 ); // fun( 2, "no" ); 
fun( ); // fun( 1, "no" ); 
end 

endprogram 
