// case where base class handle is assigned to derived class handle
// but the base class handle points to derived class object
// But $cast is needed to check that the class is compatible
// Try without $cast i.e. a_dog = animal_handle;
// you will see an error
class animal;
  virtual function void sound();
  endfunction
endclass

class dog extends animal;
  function void sound();
    $display("woof");
  endfunction
endclass

module test;
  initial begin
    dog a_dog = new();
    animal animal_handle;
    animal_handle =  a_dog;
    $cast(a_dog,animal_handle);
    a_dog.sound;
  end
endmodule

