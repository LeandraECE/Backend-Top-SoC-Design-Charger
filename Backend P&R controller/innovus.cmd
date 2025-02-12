#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Jan  6 15:56:21 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.11-s130_1 (64bit) 08/05/2020 15:53 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.11-s130_1 NR200802-2257/20_11-UB (database version 18.20.512) {superthreading v2.9}
#@(#)CDS: AAE 20.11-s008 (64bit) 08/05/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.11-s059_1 () Aug  2 2020 05:46:30 ( )
#@(#)CDS: SYNTECH 20.11-s028_1 () Aug  1 2020 06:14:27 ( )
#@(#)CDS: CPE v20.11-s013
#@(#)CDS: IQuantus/TQuantus 19.1.3-s260 (64bit) Thu May 28 10:57:28 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set distributed_client_message_echo 1
set fpIsMaxIoHeight 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net dgnd
set init_lef_file {../Libraries/lef_libs/header8m2t_V55.lef ../Libraries/lef_libs/fsc0h_d_generic_core.lef ../Libraries/lef_libs/FSC0H_D_GENERIC_CORE_ANT_V55.lef}
set init_oa_search_lib {}
set init_pwr_net dvdd
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set timing_library_float_precision_tol 0.000010
set timing_library_load_pin_cap_indices {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set init_verilog BATCHARGERctr_synth.v
set init_mmmc_file BATCHARGERctr.view
save_global BATCHARGERctr.globals
init_design
check_timing -verbose
checkDesign -all
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site core -s 65.39 60.8 3.6 3.6 3.6 3.6
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect dvdd -type pgpin -pin VCC -instanceBasename *
globalNetConnect dgnd -type pgpin -pin GND -instanceBasename *
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
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal8 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {dgnd dvdd} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.4 bottom 0.4 left 0.4 right 0.4} -spacing {top 0.4 bottom 0.4 left 0.4 right 0.4} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal8(8) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal8(8) } -nets { dgnd dvdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal8(8) }
verifyGeometry
fit
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell BATCHARGERctr -pin cc -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
setDrawView place
setLayerPreference overlapMacro -isVisible 1
setLayerPreference overlapGuide -isVisible 1
setLayerPreference overlapBlk -isVisible 1
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 0.8 -pin tc
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 0.8 -pin cv
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Right -layer 3 -spreadType center -spacing 0.8 -pin cc
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 4 -spreadType center -spacing 0.8 -pin tmonen
setPinAssignMode -pinEditInBatch false
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell BATCHARGERctr -pin imonen -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 4 -spreadType center -spacing 0.8 -pin imonen
setPinAssignMode -pinEditInBatch false
selectWire 3.6000 16.1200 68.8000 16.6800 1 dvdd
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Bottom -layer 4 -spreadType center -spacing 0.8 -pin imonen
setPinAssignMode -pinEditInBatch false
gui_select -rect {36.67700 0.11800 36.87700 0.05900}
deselectAll
gui_select -rect {35.90600 0.07200 36.66400 -0.04400}
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell BATCHARGERctr -pin imonen -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell BATCHARGERctr -pin tmonen -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -side Bottom -layer 4 -spreadType center -spacing 0.8 -pin {{ibat[0]} {ibat[1]} {ibat[2]} {ibat[3]} {ibat[4]} {ibat[5]} {ibat[6]} {ibat[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.8 -offsetStart 20 -pin {{vbat[0]} {vbat[1]} {vbat[2]} {vbat[3]} {vbat[4]} {vbat[5]} {vbat[6]} {vbat[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.8 -offsetStart 47 -pin {{tbat[0]} {tbat[1]} {tbat[2]} {tbat[3]} {tbat[4]} {tbat[5]} {tbat[6]} {tbat[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.4 -offsetStart 60 -pin vmonen
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.8 -offsetStart 61 -pin imonen
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.4 -offsetStart 62 -pin tmonen
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.8 -offsetStart 10 -pin {clk en rstz}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 1 -layer 4 -spreadType center -spacing 0.8 -pin so
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use POWER -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection clockwise -edge 1 -layer 4 -spreadType start -spacing 2 -offsetStart 10 -pin {dgnd dvdd}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 0 -layer 3 -spreadType center -spacing 0.8 -pin {{vcutoff[0]} {vcutoff[1]} {vcutoff[2]} {vcutoff[3]} {vcutoff[4]} {vcutoff[5]} {vcutoff[6]} {vcutoff[7]} {vpreset[0]} {vpreset[1]} {vpreset[2]} {vpreset[3]} {vpreset[4]} {vpreset[5]} {vpreset[6]} {vpreset[7]} {tempmin[0]} {tempmin[1]} {tempmin[2]} {tempmin[3]} {tempmin[4]} {tempmin[5]} {tempmin[6]} {tempmin[7]} {tempmax[0]} {tempmax[1]} {tempmax[2]} {tempmax[3]} {tempmax[4]} {tempmax[5]} {tempmax[6]} {tempmax[7]} {tmax[0]} {tmax[1]} {tmax[2]} {tmax[3]} {tmax[4]} {tmax[5]} {tmax[6]} {tmax[7]} vtok {iend[0]} {iend[1]} {iend[2]} {iend[3]} {iend[4]} {iend[5]} {iend[6]} {iend[7]}}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -use CLOCK -pinWidth 0.2 -pinDepth 0.52 -snap USERGRID -fixOverlap 1 -unit MICRON -spreadDirection counterclockwise -edge 3 -layer 4 -spreadType start -spacing 0.4 -offsetStart 10 -pin clk
setPinAssignMode -pinEditInBatch false
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
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal8 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {dgnd dvdd} -layer metal7 -direction vertical -width 1 -spacing 0.4 -set_to_set_distance 100 -start_from left -start_offset 20 -stop_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal8 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal8 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal8 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {dgnd dvdd} -layer metal7 -direction vertical -width 1 -spacing 0.4 -set_to_set_distance 100 -start_from right -start_offset 20 -stop_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal8 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal8 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
saveIoFile -locations BATCHARGERctr.save.io
saveFPlan BATCHARGERctr.fp
setDesignMode -process 130



setDrawView fplan
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -pathReports -drvReports -slackReports -numPaths 50 -prefix BATCHARGERctr_prePlace -outDir timingReports
setDrawView place
setPlaceMode -fp false
place_design
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix BATCHARGERctr_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
ccopt_design
report_ccopt_clock_trees
report_ccopt_clock_tree_structure
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix BATCHARGERctr_postCTS -outDir timingReports
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
verify_drc
verify_connectivity
setAnalysisMode -analysisType onChipVariation
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix BATCHARGERctr_postRoute -outDir timingReports
getFillerMode -quiet
addFiller -cell FILLER8EHD FILLER64EHD FILLER4EHD FILLER3HD FILLER32EHD FILLER2HD FILLER1HD FILLER16EHD -prefix FILLER
verifyGeometry
verifyConnectivity
checkDesign -all
saveNetlist BATCHARGERctr_pr.v
write_lef_abstract BATCHARGERctr.lef

