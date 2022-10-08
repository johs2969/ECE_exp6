`timescale 1us / 1ps

module piezo_tb();

reg clk,rst;
reg [7:0] btn;
wire piezo;

piezo uut(.clk(clk), .rst(rst), .btn(btn), .piezo(piezo));

initial begin
    clk <=0;
    rst <=1;
    btn <=8'b00000000;
    #1e+6 rst <=0;
    #1e+6 rst <=1;
    #1e+6 btn <=8'b00000010;
    #1e+6 btn <=8'b00100000;
    $stop;
    end

always begin
    # 1 clk <=~clk;
    end
        
endmodule
