/*
.Switch-Level NAND
 Implement a 2-input NAND using nmos and pmos switches manually.
 */
 module nand_gate(input a, b, output y);
    supply1 vdd;
    supply0 gnd;
    wire w;
    
    pmos (y, vdd, a);
    pmos (y, vdd, b);
    nmos (y, w, a);
    nmos (w, gnd, b);
endmodule