module BATCHARGER (iforcedbat, vsensbat, vin, vbattemp, en, sel, pgnd);

	output iforcedbat; // output current to battery
	input  vsensbat; // voltage sensed (obtained at the battery as "voltage from iforcedbat integration" + ESR * iforcedbat )  
	input  vin; // input voltage; must be at least 200mV higher than vsensbat to allow iforcedbat > 0
	input  vbattemp; //temperature normalized value: -40 to 125 fitted in the range 0V to vref
	input   en;// enables the module
        input  [3:0] sel; // battery capacity selection bits: b[3,2,1,0] weights are 400,200,100,50 mAh + offset of 50mAh covers the range from 50 up to 800 mAh 
	inout   pgnd;  // power ground		       


   wire  pu, pd, smt, en_en, e2, e4, sr;
   wire [3:0]  sel_core;
   

   assign pu = 1'b0;
   assign pd = 1'b0;
   assign smt = 1'b0;
   assign en_en = 1'b1;
   assign e2 = 1'b0;
   assign e4 = 1'b0;
   assign sr = 1'b1;
   
   
   BATCHARGERcore   BATCHARGER12 (.en(en_core), .iforcedbat(iforcedbat), .vsensbat(vsensbat), .vin(vin_core), .vbattemp(vbattemp), .sel(sel_core), .pgnd(pgnd_core), .dgnd(dgnd), .dvdd(dvdd));


   LCUT12HB instlc();
   RCUT12HB instrc();


   ULSCI0CUTHB analogpad1 ( .O(vsensbat) );
   ULSCI0CUTHB analogpad2 ( .O(vbattemp) );
   ULSCI0CUTHB analogpad3 ( .O(iforcedbat) );


   GND3IOHB gndio ;
   VCC3IOHB vccio ;
   
   
   GNDKHB gndinst1 (.GND(dgnd));   
   VCCKHB vccinst1 (.VCC(dvdd));
   
   XMHB inst1 (.O(en_core), .I(en), .PU(pu), .PD(pd), .SMT(smt));
   XMHB inst2 (.O(vin_core), .I(vin), .PU(pu), .PD(pd), .SMT(smt));			     		     
   
   XMHB inst4 (.O(sel_core[0]), .I(sel[0]), .PU(pu), .PD(pd), .SMT(smt));
   XMHB inst5 (.O(sel_core[1]), .I(sel[1]), .PU(pu), .PD(pd), .SMT(smt));
   XMHB inst6 (.O(sel_core[2]), .I(sel[2]), .PU(pu), .PD(pd), .SMT(smt));
   XMHB inst7 (.O(sel_core[3]), .I(sel[3]), .PU(pu), .PD(pd), .SMT(smt));

   YA28SHB inst8 (.O(pgnd), .I(pgnd_core), .E(en_en), .E2(e2), .E4(e4), .SR(sr));

   
endmodule

		       