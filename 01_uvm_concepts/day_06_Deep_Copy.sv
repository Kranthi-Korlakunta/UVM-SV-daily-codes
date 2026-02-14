class A;
  int a;
  function A copy();
    copy=new();
    copy.a=this.a;
  endfunction
endclass

class B;
  int b;
  A a1=new();
  function B copy();
    copy=new();
    copy.b=this.b;
    copy.a1=this.a1.copy();
  endfunction
endclass

module tb();
  B b1,b2;
  initial
    begin
      b1=new();
      b1.b=10;
      b1.a1.a=5;
      b2=b1.copy();
      b2.a1.a=8;
      $display(b1.a1.a);
      $display(b2.a1.a);
    end
endmodule
