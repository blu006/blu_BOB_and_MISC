(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: SAL-FP_Keyboard-LogicBoard-Edge_Cuts.gbr_edit_bbox_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 15 October 2023 at 03:44)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.5 mm)
(Feedrate_XY: 200.0 mm/min)
(Feedrate_Z: 72.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -1.65 mm)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 15.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: default)

(X range:  -45.2000 ...    0.7500  mm)
(Y range:  -30.7361 ...    0.7640  mm)

(Spindle Speed: 0.0 RPM)
G21
G90
G94

G01 F200.00

M5
G00 Z15.0000
G00 X0.0000 Y0.0000
T1
M6    
(MSG, Change to Tool Dia = 1.5000)
M0
G00 Z15.0000

M03
G01 F200.00
G00 X0.7500 Y-30.7361
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X-45.2000 Y-30.7361
G01 X-45.2000 Y0.7640
G01 X0.7500 Y0.7640
G01 X0.7500 Y-30.7361
G00 Z2.0000
M05
G00 Z2.0000
G00 Z15.00


M30
