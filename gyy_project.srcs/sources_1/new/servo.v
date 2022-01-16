`timescale 1ns / 1ps

module servo(
    input   clk,
	output  Led,
    output  servo,
    output cntr
    );


reg [19:0] counter;
reg        servo_reg;

reg [15:0] control	=	0; //
reg 		  toggle		=	1;



always @(posedge clk)
begin

	counter <= counter + 1;
	if(counter == 'd999999)
			counter <= 0;

	if(counter < ('d30000 + control))
			servo_reg <= 1;
	else
			servo_reg <= 0;


		if(control == 'd50000)
				toggle <= 0;
		if(control == 0)
				toggle <= 1;

	if(counter == 0)
		begin
			if(toggle == 0)
					control <= control - 1000;
			if(toggle == 1)
					control <= control + 1000;
		end


end
assign cntr = counter;
assign Led   	= toggle;
assign servo	= servo_reg;

endmodule