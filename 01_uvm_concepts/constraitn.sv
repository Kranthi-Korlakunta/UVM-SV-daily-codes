class A;
  rand int a[5][5];
  int s[5];
  int hs,pre,per;
  constraint c1 {
    foreach(a[i])
      foreach(a[j])
        a[i][j] inside {[1:6]};}
  
  function void post_randomize();
    print_scores();
    print_hs();
  endfunction
  
  function print_hs();
    foreach(a[i])
      begin
        pre=0;
        foreach(a[j])
          begin
            pre=a[i][j]+pre;
          end
        if(pre>hs)
          begin
            hs=pre;
            per=i+1;
          end
      end
    $display("High score=%0d",hs);
    $display("Person=%0d",per);
  endfunction
  
  function void print_scores();
    foreach(a[i])
      begin
        $write("Person:%0d ",i+1);
        foreach(a[j])
          begin
            $write("%0d ",a[i][j]);
          end
        $display();
      end
  endfunction
  
endclass

module top();
  A ah;
  initial
    begin
      ah=new();
      ah.randomize();
    end
endmodule
