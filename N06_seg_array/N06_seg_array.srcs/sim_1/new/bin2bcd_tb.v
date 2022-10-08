`timescale 1ns / 1ps

module bin2bcd_tb();
reg clk,rst;
reg [3:0] bin;
wire [7:0] bcd;

bin2bcd uut(.clk(clk), .rst(rst), .bin(bin), .bcd(bcd));

always begin
    #2.5 clk <=~clk;
    end
    
initial begin
    clk <= 0;
    rst <= 1;
    bin <= 0;
    #5 rst <=0;
    #5 rst <=1;
    #11 bin <=0;
    #11 bin <=1;
    #11 bin <=2;
    #11 bin <=3;
    #11 bin <=4;
    #11 bin <=5;
    #11 bin <=6;
    #11 bin <=7;
    #11 bin <=8;
    #11 bin <=9;
    #11 bin <=10;
    #11 bin <=11;
    #11 bin <=12;
    #11 bin <=13;
    #11 bin <=14;
    #11 bin <=15;
    #11;
    $stop;
    end
        
endmodule
