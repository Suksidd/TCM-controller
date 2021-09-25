`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:22:10 01/25/2018 
// Design Name: 
// Module Name:    tcm1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tcm1(
     clk,ale,rmuadd,ps1,
     por,sysclk
    );
	 output clk,ale,rmuadd,ps1;
	 input por,sysclk;
reg clk,ale,ps1;
reg rmuadd=0;
reg count=0;
reg [7:0]s;
always@(posedge sysclk)
	begin 
		clk = 0; 
		#50; 
		clk = 1; 
		#50; 
	end 
always@(posedge clk)
	begin
	while (count>=0)
		begin
		if(ale==1)
		#50;
			begin
		  count=count+1;
				 s[0] <= por ;
				 s[1] <= s[0] ;
             s[2] <= s[1] ;
             s[3] <= s[2] ;
             s[4] <= s[3] ;
				 s[5] <= s[4] ;
				 s[6] <= s[5] ;
				 s[7] <= s[6] ; 
				 rmuadd <= s[7];
				 if(count==255)
				    begin
						count=0;
					 end
			end
	end
end
always@(posedge clk)
	begin
	ps1=1;
	#50;
	ps1=0;
	#350;
	end
endmodule
