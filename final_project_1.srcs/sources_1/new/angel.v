`timescale 1ns / 1ps

module angle(
    input clk,
    output reg [8:0] angle
    );
    reg [16:0] state = 16'b1;
    // Run when the value of the switches
    // changes
    always @ (clk)
    begin
        case (state)
        1:begin
        angle <= 9'd0;
        state <= 16'd2;
        end
        2:begin
        angle <= 9'd24;
        state <= 16'd4;
        end
        4:begin
        angle <= 9'd48;
        state <= 16'd8;
        end
        8:begin
        angle <= 9'd72;
        state <=16'd16;
        end
        16:begin
        angle <= 9'd96;
        state <= 16'd32;
        end
        32:begin
        angle <= 9'd120;
        state <= 16'd64;
        end
        64:begin
        angle <= 9'd144;
        state <=16'd128;
        end
        128:begin
        angle <= 9'd168;
        state <=16'd256;
        end
        256:begin
        angle <= 9'd192;
        state <=16'd1;
        end
     
        default:begin
        angle <= 9'd0;
        state <= 16'b1;
        end
        endcase                 
    end
endmodule
