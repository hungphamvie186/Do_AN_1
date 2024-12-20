`timescale 1ns/1ps
module decoder (
    input logic [4:0] x,
    output logic [31:0] en
);
    assign en = (x == 0) ? 32'b1 : (32'b1 << x);
endmodule
`timescale 1ns/1ps
module MUX (
    input logic [31:0] d [31:0],
    input logic [4:0] sel,
    output logic [31:0] y
);
    assign y = (sel < 32) ? d[sel] : 32'b0;
endmodule
`timescale 1ns/1ps
module register (
    input logic rst, en, clk,
    input logic [31:0] D,
    output logic [31:0] Q
);
    always_ff @(posedge clk) begin
        if (rst)
            Q <= 32'b0;
        else if (en)
            Q <= D;
    end
endmodule
`timescale 1ns/1ps
module MUX2 (
    input logic [4:0] A,
    input logic sel,
    output logic [4:0] out
);
    assign out = sel ? A : 5'b0;
endmodule

module regfile_Block (
    input logic rst_ni, rd_wren, clk_i,
    input logic [4:0] rs1_addr,
    input logic [4:0] rs2_addr,
    input logic [4:0] rd_addr,
    input logic [31:0] rd_data,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data
);

    logic [4:0] rd_addr_en;
    logic [31:0] reg_en;

    MUX2 rdaddr_en (
        .A(rd_addr),
        .sel(rd_wren),
        .out(rd_addr_en)
    );

    decoder decoder5_32 (
        .x(rd_addr_en),
        .en(reg_en)
    );

    logic [31:0] D[31:0];
    logic [31:0] Q[31:0];

    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : register_loop
            register register_inst (
                .rst(~rst_ni),
                .en(reg_en[i]),
                .clk(clk_i),
                .D(i == 0 ? 32'b0 : rd_data),
                .Q(Q[i])
            );
        end
    endgenerate

    MUX muxA (
        .sel(rs1_addr),
        .d(Q),
        .y(rs1_data)
    );

    MUX muxB (
        .sel(rs2_addr),
        .d(Q),
        .y(rs2_data)
    );

endmodule
module regfile(
    input logic rst_ni, rd_wren, clk_i,
    input logic [4:0] rs1_addr,
    input logic [4:0] rs2_addr,
    input logic [4:0] rd_addr,
    input logic [31:0] rd_data,
    output logic [31:0] rs1_data,
    output logic [31:0] rs2_data
);

   regfile_Block mregfile (
        .rst_ni(rst_ni),
        .rd_wren(rd_wren),
        .clk_i(clk_i),
        .rs1_addr(rs1_addr),		  
        .rs2_addr(rs2_addr),
        .rd_addr(rd_addr),
        .rd_data(rd_data),
        .rs1_data(rs1_data),	
        .rs2_data(rs2_data)
    );
endmodule