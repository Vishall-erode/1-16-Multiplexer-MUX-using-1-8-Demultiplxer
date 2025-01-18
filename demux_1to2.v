module demux_1to2 (
    input wire data,
    input wire sel,
    output wire out0,
    output wire out1
);

assign out0 = data & ~sel;
assign out1 = data & sel;

endmodule
