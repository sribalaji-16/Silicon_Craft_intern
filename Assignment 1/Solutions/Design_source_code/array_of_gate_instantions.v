/*
Array of Gate Instantiations
 Declare 4-bit buses and instantiate an array of NAND gates.
*/
module array_nand(input [3:0] a, b, output [3:0] y);
    nand n0(y[0], a[0], b[0]);
    nand n1(y[1], a[1], b[1]);
    nand n2(y[2], a[2], b[2]);
    nand n3(y[3], a[3], b[3]);
endmodule