###############################################################
#  Generated by:      Cadence Innovus 20.11-s130_1
#  OS:                Linux x86_64(Host ID fatima2.novalocal)
#  Generated on:      Sun Dec 19 20:45:27 2021
#  Design:            FULLCHIP
#  Command:           saveIoFile -locations FULLCHIP.save.io
###############################################################

(globals
    version = 3
    io_order = default
)
(iopad
    (topright
	(inst name="CornerCell2"	orientation=R90 cell="CORNERHB" )
    )
    (top
        (inst  name="vccio" )        
	(inst  name="gndinst1" )
	(inst  name="vccinst1" )
	(inst  name="gndio" )
	(inst  name="instrc" )
			
    )
    (topleft
	(inst name="CornerCell1"	orientation=R180 cell="CORNERHB" )
    )
    (left
	(inst  name="inst4" )
	(inst  name="inst5" )
	(inst  name="inst6" )
	(inst  name="inst7" )
    )
    (bottomleft
	(inst name="CornerCell4"	orientation=R270 cell="CORNERHB" )
    )
    (bottom
	(inst  name="inst1" )
	(inst  name="inst2" )
        (inst  name="inst8" )
    )
    (bottomright
	(inst name="CornerCell3"	orientation=R0 cell="CORNERHB" )
    )
    (right
	(inst  name="instlc")
	(inst  name="analogpad1" )
	(inst  name="analogpad2" )
	(inst  name="analogpad3" )
    )
)
