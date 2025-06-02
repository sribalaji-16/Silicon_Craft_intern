/*
.Tristate 2:1 MUX
 Use bufif0 and bufif1 to design and test.
 */
 module tristate_mux(
    input a, b, sel,
    output out
);
    bufif1 (out, a, sel);
    bufif0 (out, b, sel);
endmodule