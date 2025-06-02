/*
.2D Memory Access
 Declare reg [7:0] mem[3:0][3:0];
 Write nested loops to assign values and print specific bytes like mem[3][2].
 */
 module mem_2d;
    reg [7:0] mem [0:3][0:3];
    integer i, j;
    
    initial begin
        $dumpfile("mem_2d.vcd");
        $dumpvars(0, mem_2d);
        for(i=0; i<4; i=i+1)
            for(j=0; j<4; j=j+1)
                mem[i][j] = i*4 + j;
        $display("mem[3][2] = %b", mem[3][2]);
        #10 $finish;
    end
endmodule