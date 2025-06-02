/*
Sequential UDP – T Flip-Flop
 Create a UDP for a T flip-flop triggered on posedge of clk.
 */
primitive t_ff(output reg q, input clk, t);
    table
        (01) 0 : ? : -;
        (01) 1 : 0 : 1;
        (01) 1 : 1 : 0;
        (0?) ? : ? : -;
        (x1) ? : ? : -;
        (1x) ? : ? : -;
    endtable
endprimitive