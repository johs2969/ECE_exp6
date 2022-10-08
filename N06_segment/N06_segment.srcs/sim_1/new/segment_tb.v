`timescale 1ns / 1ps

module segment_tb();

reg clk, rst;
reg btn;
wire [7:0] seg_data;

segment uut (.clk(clk), .rst(rst), .btn(btn), .seg_data(seg_data));

always begin 
    #2 clk <=~clk;
    end
    
 always begin 
    #17.7 btn <=~btn;
    end   


initial begin
    clk <=0;
    rst <=1;
    btn <=0;
    #5 rst <= 0;
    #5 rst <= 1;
    #400;
   $stop;
   end
     

endmodule