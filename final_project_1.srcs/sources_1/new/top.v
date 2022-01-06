`timescale 1ns / 1ps

module top(
    input  clk, reset,
    input echo,
    output   a, b, c, d, e, f, g, DP,
    output wire trig,
    output wire [3:0] an,
    output wire hsync, vsync,
    output wire [11:0] rgb,
    output wire pwm
    );

    
 
    wire[15:0] distance;
    
    UltrasonicDriver usd(clk, reset, trig, echo, distance);
    
    SevSeg_4digit svg(.clk(clk), .a(a), .b(b), .c(c),.d(d),.e(e), .f(f),.g(g), .DP(DP),.an(an),.distance(distance));
    
    vga_ctrl vga(clk, reset,distance,hsync,vsync,rgb);
    Servo_interface servo_cntrl (.clk(clk),.clr(reset),.PWM(pwm));
    
endmodule