`timescale 1ns / 1ps

module vga
	(
		input wire clk, reset,
		input wire [7:0] angle,
		output wire hsync, vsync,
		output wire [7:0] rgb
	);
	
	
	reg [7:0] rgb_reg;
	

	wire video_on;


        vga_sync vga_sync (.clk(clk), 
        .reset(reset), 
        .hsync(hsync), 
        .vsync(vsync),
        .video_on(video_on), 
        .p_tick(), 
        .x(), 
        .y());
   

        always @(posedge clk, posedge reset)
        if (reset)
           rgb_reg <= 0;
        else
           rgb_reg <= angle;
        

        assign rgb = (video_on) ? rgb_reg : 8'b0;
endmodule