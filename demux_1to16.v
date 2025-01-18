module demux_1to16 (
    input wire data,
    input wire [3:0] sel,
    output wire y0, y1, y2, y3, y4, y5, y6, y7,
    output wire y8, y9, y10, y11, y12, y13, y14, y15
);

wire out_top0, out_top1;

// First stage: 1:2 demux
demux_1to2 demux_top (
    .data(data),
    .sel(sel[3]), // Most significant bit of select line
    .out0(out_top0),
    .out1(out_top1)
);

// Second stage: 1:8 demuxes
demux_1to8 demux_bottom0 (
    .data(out_top0),
    .sel(sel[2:0]), // Remaining select bits
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);

demux_1to8 demux_bottom1 (
    .data(out_top1),
    .sel(sel[2:0]), // Remaining select bits
    .y0(y8),
    .y1(y9),
    .y2(y10),
    .y3(y11),
    .y4(y12),
    .y5(y13),
    .y6(y14),
    .y7(y15)
);

endmodule
