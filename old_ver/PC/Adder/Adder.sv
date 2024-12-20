`timescale 1ps/1ps
module FullAdder (
    input logic A,
    input logic B,
    input logic Z,
    output logic S,
    output logic Cout
);

    assign S = A ^ B ^ Z;
    assign Cout = (A & B) | (Z & (A ^ B));

endmodule

module Adder (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic C_in,
    output logic [31:0] Sum
);
    logic [32:0] carry; // Lưu trữ các bit Cout từ mỗi Full Adder

    // Tính toán carry bắt đầu từ carry đầu vào
    assign carry[0] = C_in;

    // Dùng vòng lặp for để liên kết các FullAdder lại với nhau
    generate
        genvar i;
        for (i = 0; i < 32; i = i + 1) begin : adder_loop
            FullAdder full_adder (
                .A(A[i]),
                .B(B[i]),
                .Z(carry[i]),
                .S(Sum[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate


endmodule
