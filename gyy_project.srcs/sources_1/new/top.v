`timescale 1ns / 1ps

module top (
    input clk,
    input rst,
    output [7:0] RGB,
    output hsync,
    output vsync,
    output  servo,
    output LED
    
    
);
wire [19:0] counter;
wire  [7:0] angle;
servo servo_cntr(.clk(clk),.cntr(counter),.servo(servo),.Led(LED));
assign angle = counter[7:0];
vga vga_ctrl(.clk(clk),.reset(rst),.angle(angle),.hsync(hsync),.vsync(vsync),.rgb(RGB));
endmodule