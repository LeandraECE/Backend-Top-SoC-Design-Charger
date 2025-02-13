# Battery Charger SoC Design
This project involves the backend place-and-route (P&R) of a lithium battery charger's controller module using Innovus, along with the top-level SoC design including floorplanning, IO selection, and full-chip routing. The battery contains 4 modules (see Top Design/BATCHARGERcore/BATCHARGERcore.v).

## Battery Charger Modules

- **BATCHARGERbg (Bandgap & Power-On Reset Generator)**:
  - Generates the reference voltage, current, clock, and power-on reset for the charger.  

- **BATCHARGERpower (Power Block)**:  
  - Controls the charging current based on digital control signals.  
  - Supports three charging modes:  
    - Trickle current mode – for deeply discharged batteries.  
    - Constant current mode – main charging phase.  
    - Constant voltage mode – final phase to maintain voltage.   

- **BATCHARGERsaradc (SAR ADC – Analog-to-Digital Converter)**:
  - Converts battery temperature, voltage, and current into digital values.  

- **BATCHARGERctrl (Controller)**:
  - Manages charger operation based on ADC inputs.  
  - Controls charging mode selection and ADC measurements.   
  - Can restart charging after completion.

The datasheet for the controller module is provided.
 
## Backend

In the backend folder, the synthesized controller module is already provided. To generate the LEF file, start Innovus and source the innovus.cmd TCL file:
```sh
innovus
source innovus.cmd
```
The LEF file generated will then be used to do the floorplanning of the Top design. The folder Images contains the layout in the Innovus GUI.

## Top-design

In the folder BATCHARGERcore, all the LEF files are provided for the floorplanning and routing of the full-chip. Sourcing the .cmd file will generate the LEF file of the core. The folder BATCHARGER_IO already provides the files to route the full-chip with the I/Os (source the .cmd file). The folder Images contains the layout in the Innovus GUI.






 


