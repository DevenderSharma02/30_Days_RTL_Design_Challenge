`timescale 1ns / 1ps

module gray_2_binary_conveter(binary,gray);

input [3:0]gray;
output [3:0]binary;

assign binary[3] = gray[3];

xor g1(binary[2],binary[3],gray[2]);
xor g2(binary[1],binary[2],gray[1]);
xor g3(binary[0],binary[1],gray[0]);

endmodule