module four_full_bit_addr(a,b,s,cout,cin);
  input [3:0]a,b;
  input cin;
  output [3:0]s;
  output cout;
  wire [2:0]w;
  fa fa1(a[0],b[0],cin,s[0],w[0]);
  fa fa2(a[1],b[1],w[0],s[1],w[1]);
  fa fa3(a[2],b[2],w[1],s[2],w[2]);
  fa fa4(a[3],b[3],w[2],s[3],cout);
endmodule
module fa(a,b,cin,s,co);
    input a,b,cin;
    output s,co;
    assign s=a^b^cin;
  assign co=(a&b)|(b&cin)|(cin&a);
endmodule
