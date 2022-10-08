`timescale 1ns / 1ps

module bin2bcd(clk, rst, bin, bcd);

input clk,rst;
input [3:0] bin;
output reg [3:0] bcd;

always @(negedge rst or posedge clk) begin
    if(!rst) begin
    bcd <=  4'd0;
    end
    else begin
        case(bin)
        0 : bcd <=4'd0;
        1 : bcd <=4'd1;
        2 : bcd <=4'd2;
        3 : bcd <=4'd3;
        4 : bcd <=4'd4;
        5 : bcd <=4'd5;
        6 : bcd <=4'd6;
        7 : bcd <=4'd7;
        8 : bcd <=4'd8;
        9 : bcd <=4'd9;
        default bcd <=4'd0;
        endcase
    end 
 end      
endmodule
