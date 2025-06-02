/*
.1-Bit Full Adder Using Gates
 Write structural code using xor, and, or gates for a full adder.
 */
 module full_adder(
    input a, b, cin,
    output sum, cout
);
    wire s1, c1, c2;
    xor(s1, a, b);
    and(c1, a, b);
    xor(sum, s1, cin);
    and(c2, s1, cin);
    or(cout, c1, c2);
endmodule