// no casting needed as base class handle is assigned derived class object
class animal;
  virtual function void sound();
  endfunction
endclass

class dog extends animal;
  function void sound();
    $display("woof");
  endfunction
endclass

class cat extends animal;
  function void sound();
    $display("meow");
  endfunction
endclass

module test;

  initial begin
    dog a_dog = new();
    cat a_cat = new();

    animal animals[$];
    animals.push_back(a_dog);
    animals.push_back(a_cat);

    foreach (animals[i]) begin
      animal animal_handle;
      animal_handle = animals[i];
      animal_handle.sound();
    end
  end
endmodule
