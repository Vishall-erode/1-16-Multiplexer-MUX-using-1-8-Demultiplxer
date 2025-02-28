module tb_demux_1to16;
    reg data;
    reg [3:0] sel;
    wire y0, y1, y2, y3, y4, y5, y6, y7;
    wire y8, y9, y10, y11, y12, y13, y14, y15;

    // Instantiate the demux module
    demux_1to16 uut (
        .data(data),
        .sel(sel),
        .y0(y0),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4),
        .y5(y5),
        .y6(y6),
        .y7(y7),
        .y8(y8),
        .y9(y9),
        .y10(y10),
        .y11(y11),
        .y12(y12),
        .y13(y13),
        .y14(y14),
        .y15(y15)
    );

    // Test sequence
    initial begin
        // Initialize inputs
        data = 1; sel = 4'b0000;
        #10 sel = 4'b0001;
        #10 sel = 4'b0010;
        #10 sel = 4'b0011;
        #10 sel = 4'b0100;
        #10 sel = 4'b0101;
        #10 sel = 4'b0110;
        #10 sel = 4'b0111;
        #10 sel = 4'b1000;
        #10 sel = 4'b1001;
        #10 sel = 4'b1010;
        #10 sel = 4'b1011;
        #10 sel = 4'b1100;
        #10 sel = 4'b1101;
        #10 sel = 4'b1110;
        #10 sel = 4'b1111;
        #10 data = 0; sel = 4'b0000;
        #10 sel = 4'b0001;
        #10 sel = 4'b0010;
        #10 sel = 4'b0011;
        #10 sel = 4'b0100;
        #10 sel = 4'b0101;
        #10 sel = 4'b0110;
        #10 sel = 4'b0111;
        #10 sel = 4'b1000;
        #10 sel = 4'b1001;
        #10 sel = 4'b1010;
        #10 sel = 4'b1011;
        #10 sel = 4'b1100;
        #10 sel = 4'b1101;
        #10 sel = 4'b1110;
        #10 sel = 4'b1111;
        #10 $finish; // End simulation
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %0t | data = %b | sel = %b | y0 = %b | y1 = %b | y2 = %b | y3 = %b | y4 = %b | y5 = %b | y6 = %b | y7 = %b | y8 = %b | y9 = %b | y10 = %b | y11 = %b | y12 = %b | y13 = %b | y14 = %b | y15 = %b", 
                 $time, data, sel, y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15);
    end
endmodule
