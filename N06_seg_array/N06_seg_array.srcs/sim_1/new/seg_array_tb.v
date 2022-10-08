`timescale 1ns / 1ps

module seg_array_tb();

reg clk, rst;
reg btn;
wire [7:0] seg_data;
wire [7:0] seg_sel;

seg_array uut (.clk(clk), .rst(rst), .btn(btn), .seg_data(seg_data), .seg_sel(seg_sel));

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
    #750;
   $stop;
   end
     

endmodule
