module Priority_Encoder(
    input [3:0] D,       // 4-bit input
    input EI,            // Enable Input
    output [1:0] Y,      // 2-bit output
    output EO,           // Enable Output
    output S             // Signal Output
);
    wire X;              // Internal wire

    // Generate outputs only when EI is enabled
    assign Y[0] = EI ? (D[3] | D[2]) : 0;
    assign X    = EI ? (~D[2] & D[1]) : 0;
    assign Y[1] = EI ? (D[3] | X) : 0;
    assign S    = EI ? (D[3] | D[2] | D[1] | D[0]) : 0;
    assign EO   = EI ? ~(D[3] | D[2] | D[1] | D[0]) : 1;

endmodule
