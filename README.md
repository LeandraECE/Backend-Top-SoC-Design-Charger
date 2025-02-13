# Battery Charger SoC Design
This project involves the backend place-and-route (P&R) of a lithium battery charger's controller module using Innovus, along with the top-level SoC design including floorplanning, IO selection, and full-chip routing. The battery contains 4 modules (see Top Design/BATCHARGERcore/BATCHAERGERcore.v).

## Battery Charger Modules

- **BATCHARGERbg (Bandgap & Power-On Reset Generator)**:
  - Generates the reference voltage, current, clock and power-on reset for the charger.  

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

 
## Backend


 





 


