/*
.4:1 Multiplexer
 Design using gates and simulate all s1, s0 combinations.
 */
module mux4to1(
    input [3:0] in,
    input [1:0] sel,
    output out
);
    wire [3:0] and_out;
    wire [1:0] not_sel;
    
    not(not_sel[0], sel[0]);
    not(not_sel[1], sel[1]);
    
    and(and_out[0], in[0], not_sel[1], not_sel[0]);
    and(and_out[1], in[1], not_sel[1], sel[0]);
    and(and_out[2], in[2], sel[1], not_sel[0]);
    and(and_out[3], in[3], sel[1], sel[0]);
    
    or(out, and_out[0], and_out[1], and_out[2], and_out[3]);
endmodule