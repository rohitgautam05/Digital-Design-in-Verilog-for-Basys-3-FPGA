module Mux_2_to_1(x1,x0,s,y);
input x1,x0,s;
output y;

assign y = s ? x1 : x0;
endmodule
