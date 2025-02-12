
set init_gnd_net dgnd
set init_lef_file {../../Libraries/lef_libs/header8m2t_V55.lef BATCHARGERctr.lef BATCHARGERbg.lef BATCHARGERpower.lef BATCHARGERsaradc.lef}
set init_oa_search_lib {}
set init_pwr_net dvdd
set init_top_cell BATCHARGERcore
set init_verilog BATCHARGERcore.v

init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core_2800 -d 850 320 5.6 5.6 5.6 5.6
uiSetTool select
getIoFlowFlag

setDrawView fplan
placeInstance BATCHbg 710.0 110.0
placeInstance BATCHpower 10.0 10.0
placeInstance BATCHsaradc 630.0 180.0
placeInstance BATCHctr 760.0 10.0

setDrawView place
setDrawView fplan
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection counterclockwise -edge 2 -layer 1 -spreadType side -pin {{sel[0]} {sel[1]} {sel[2]} {sel[3]} en pgnd vin}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use ANALOG -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 80.0 -offsetStart 40 -pin {iforcedbat vbattemp vsensbat}
setPinAssignMode -pinEditInBatch true
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use POWER -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 3 -spreadType center -spacing 0.4 -pin dvdd
setPinAssignMode -pinEditInBatch true
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use GROUND -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 1 -layer 3 -spreadType start -spacing 0.4 -offsetStart 20 -pin dgnd
setPinAssignMode -pinEditInBatch false
clearGlobalNets
globalNetConnect dgnd -type pgpin -pin dgnd -instanceBasename *
add_ndr -width {metal1 2.0 metal2 2.0 metal3 2.0 metal4 2.0 metal5 2.0 metal6 2.0 metal7 2.0 metal8 2.0 } -spacing {metal1 0.4 metal2 0.4 metal3 0.4 metal4 0.4 metal5 0.4 metal6 0.4 metal7 0.4 metal8 0.4 } -min_cut {via2 1 via3 1 via4 1 via5 1 via6 1 via7 1 } -add_via {VIAM1M2A VIAM2M3 VIAM3M4 VIAM4M5 VIAM5M6 VIAM6M7 VIAM7M8 genm1m2_w genm1m2a genm1m2b genm2m3_w genm2m3a genm2m3b genm3m4_w genm3m4a genm3m4b genm4m5_w genm4m5a genm4m5b genm5m6_w genm5m6a genm5m6b genm6m7_w genm6m7a genm6m7b genm7m8_w genm7m8a genm7m8b} -name pwr
setAttribute -net avdd -non_default_rule pwr
setAttribute -net agnd -non_default_rule pwr
setAttribute -net dgnd -non_default_rule pwr
setAttribute -net dvdd -non_default_rule pwr
selectNet dgnd
routeDesign -selected
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal8(8) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal8(8) } -nets { dgnd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal8(8) }
placeAIO
setAttribute -net iforcedbat -shield_net dgnd
setAttribute -net vbattemp -shield_net dgnd
setAttribute -net vsensbat -shield_net dgnd
selectNet -shield
routeDesign -selected
routeDesign -globalDetail
setDrawView place
deselectAll
write_lef_abstract -cutObsMinSpacing BATCHARGERcore.lef






