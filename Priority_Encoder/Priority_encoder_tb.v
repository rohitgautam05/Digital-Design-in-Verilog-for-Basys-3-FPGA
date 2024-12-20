module Priority_Encoder_tb;
reg [3:0]D;
reg EI;
wire EO,S;
wire [1:0]Y;
Priority_Encoder u0 ( .D(D),.EI(EI), .EO(EO), .S(S), .Y(Y));
    initial begin
    EI = 0; D = 4'b0000; #10; // Test when Enable is low
    EI = 1; D = 4'b0000; #10; // Test with all D inputs inactive
    EI = 1; D = 4'b0001; #10; // Test with D[0] active
    EI = 1; D = 4'b0010; #10; // Test with D[1] active
    EI = 1; D = 4'b0100; #10; // Test with D[2] active
    EI = 1; D = 4'b1000; #10; // Test with D[3] active
    EI = 1; D = 4'b1010; #10; // Test with multiple inputs active
    $stop;                     // End simulation
    end
    initial begin
    $monitor ("T=%0t D=%0b EI=%0b EO=%0b S=%0b Y=%0b", $time, D, EI, EO, S, Y);
    end
endmodule

