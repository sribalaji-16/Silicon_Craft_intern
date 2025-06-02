/*
Advanced Memory Assignment
 Simulate a memory block with part-select (mem[4][7:4]) and bit-select (mem[5][3])
*/
module adv_mem;
    reg [7:0] mem [0:7];
    wire [3:0] part = mem[4][7:4];
    wire bit_sel = mem[5][3];
    
    initial begin
        $dumpfile("adv_mem.vcd");
        $dumpvars(0, adv_mem);
        mem[4] = 8'hA5;
        mem[5] = 8'h5A;
        $display("mem[4][7:4] = %b", part);
        $display("mem[5][3] = %b", bit_sel);
        #10 $finish;
    end
endmodule