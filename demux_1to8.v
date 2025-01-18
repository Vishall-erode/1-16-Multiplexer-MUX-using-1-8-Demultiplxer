module demux_1to8 (
    input wire data,
    input wire [2:0] sel,
    output wire y0, y1, y2, y3, y4, y5, y6, y7
);

assign y0 = data & (sel == 3'b000);
assign y1 = data & (sel == 3'b001);
assign y2 = data & (sel == 3'b010);
assign y3 = data & (sel == 3'b011);
assign y4 = data & (sel == 3'b100);
assign y5 = data & (sel == 3'b101);
assign y6 = data & (sel == 3'b110);
assign y7 = data & (sel == 3'b111);

endmodule

