`timescale 1ns / 1ps

module segment(clk, rst, btn, seg_data);

input clk, rst;
input btn;
wire btn_trig;
reg [3:0] state_bin;
wire [3:0] state_bcd;
output reg [7:0] seg_data;

oneshot_universal #(.width(1)) uut(.clk(clk), .rst(rst), .btn(btn), .btn_trig(btn_trig));
bin2bcd ut(.clk(clk), .rst(rst), .bin(state_bin), .bcd(state_bcd));

always @(posedge clk or negedge rst) begin
    if(!rst) state_bin <=4'b0000;
    else if(state_bin ==4'b1001 && btn_trig ==1) state_bin <=4'b0000;
    else if (btn_trig ==1) state_bin <= state_bin +1;
end

always @(*) begin
    case(state_bcd)
        0 :seg_data = 8'b11111100;
        1 :seg_data = 8'b01100000;
        2 :seg_data = 8'b11011010;
        3 :seg_data = 8'b11110010;
        4 :seg_data = 8'b01100110;
        5 :seg_data = 8'b10110110;
        6 :seg_data = 8'b10111110;
        7 :seg_data = 8'b11100000;
        8 :seg_data = 8'b11111110;
        9 :seg_data = 8'b11110110;
        default seg_data = 8'b00000000;
    endcase
end

        
endmodule
