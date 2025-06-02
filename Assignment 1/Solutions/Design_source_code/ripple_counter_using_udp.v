/*
Ripple Counter Using UDP
 Instantiate 4 T flip-flop UDPs to make a ripple counter.
 */
 module ripple_counter(input clk, output [3:0] q);
    t_ff ff0(q[0], clk, 1'b1);
    t_ff ff1(q[1], q[0], 1'b1);
    t_ff ff2(q[2], q[1], 1'b1);
    t_ff ff3(q[3], q[2], 1'b1);
endmodule