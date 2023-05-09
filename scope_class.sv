class first;

  local int data = 3 ;

  task set(input int data);
    this.data = data
  endtask

  function int get();
    return data;
  endfunction

  task display();
    $dispaly("value of data : %0d",data);
  endtask

endclass

 

class second;
   first f1;
  initial begin
    f1 = new();
  end
endclass

 

module tb;
  second s;

  initial begin
    s = new();
    s.f1.display();

    s.f1.set(134);
    $display("value of data : %0d",s.f1.get());
  end
endmodule
