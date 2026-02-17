class xtn;
  rand int a[];
  constraint siz { a.size inside {[10:20]};}
  constraint val { foreach(a[i])
    if(i>0)
      a[i]==a[i-1]+1;}
endclass

module tb();
  xtn t;
  initial
    begin
      t=new();
      t.randomize();
      $display(a);
    end
endmodule
