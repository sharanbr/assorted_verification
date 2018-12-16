// slice of an array is extracted and streamed into another array
module x;
  bit [7:0] packet[10] = {1,2,3,4,5,6,7,8,9,10};
  bit [7:0] extract[5];
  
  initial
    begin
      extract = {>>{packet[0:4]}};
      $display ("%p", extract);
    end
endmodule
