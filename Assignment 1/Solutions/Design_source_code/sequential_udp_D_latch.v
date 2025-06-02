/*
Sequential UDP – D Latch
 Model a level-sensitive latch and simulate behavior.
 */
 primitive dlatch(output reg q, input d, enable);
    table
        ? 0 : ? : -;
        0 1 : ? : 0;
        1 1 : ? : 1;
        ? x : 0 : 0;
        ? x : 1 : 1;
    endtable
endprimitive