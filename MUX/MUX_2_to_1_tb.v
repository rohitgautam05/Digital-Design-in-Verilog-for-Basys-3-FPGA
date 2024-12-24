module Mux_2_to_1_tb;
reg x0,x1,s;
wire y;
integer i;
Mux_2_to_1 u0 ( .x0(x0), .x1(x1), .s(s), .y(y));

initial begin
    {x0,x1,s} <= 0;
    $monitor ("T=%0t x0=%0b x1=%0b s=%0b y=%0b",$time,x0,x1,s,y);
  
    for(i=0; i<10; i = i+1) begin
    x0 <= $random;
    x1 <= $random;
    s  <= $random;
    #10;
    end
   end
endmodule
