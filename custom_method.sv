class first;
  int data = 34;
endclass

module tb;
  first f1;
  first f2;
  initial begin
    f1 = new();
    ////////
    f1.data = 45;
    ////////
    f2 = new f1;
    $display("value of data : %0d", f2.data);
    
  end
endmodule 
