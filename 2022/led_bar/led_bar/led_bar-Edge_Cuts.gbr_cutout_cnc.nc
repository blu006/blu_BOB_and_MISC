(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: led_bar-Edge_Cuts.gbr_cutout_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Monday, 18 April 2022 at 04:29)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.5 mm)
(Feedrate_XY: 120.0 mm/min)
(Feedrate_Z: 60.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -1.6 mm)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 15.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: default)

(X range:   -0.9000 ...   45.9000  mm)
(Y range:  -34.9000 ...    0.9000  mm)

(Spindle Speed: 8000.0 RPM)
G21
G90
G94

G01 F120.00

M5
G00 Z15.0000
G00 X0.0000 Y0.0000
T1
M6    
(MSG, Change to Tool Dia = 1.5000)
M0
G00 Z15.0000

M03 S8000.0
G01 F120.00
G00 X45.8990 Y-34.0417
G01 F60.00
G01 Z-1.6000
G01 F120.00
G01 X45.8906 Y-34.1296
G01 X45.8736 Y-34.2163
G01 X45.8482 Y-34.3009
G01 X45.8146 Y-34.3826
G01 X45.7732 Y-34.4606
G01 X45.7243 Y-34.5341
G01 X45.6685 Y-34.6026
G01 X45.6062 Y-34.6652
G01 X45.5381 Y-34.7214
G01 X45.4648 Y-34.7707
G01 X45.3870 Y-34.8125
G01 X45.3055 Y-34.8465
G01 X45.2211 Y-34.8724
G01 X45.1345 Y-34.8899
G01 X45.0466 Y-34.8988
G01 X45.0000 Y-34.9000
G01 X0.0000 Y-34.9000
G01 X-0.0466 Y-34.8988
G01 X-0.1345 Y-34.8899
G01 X-0.2211 Y-34.8724
G01 X-0.3009 Y-34.8482
G01 X-0.3826 Y-34.8146
G01 X-0.4606 Y-34.7732
G01 X-0.5381 Y-34.7214
G01 X-0.6062 Y-34.6652
G01 X-0.6652 Y-34.6062
G01 X-0.7214 Y-34.5381
G01 X-0.7707 Y-34.4648
G01 X-0.8125 Y-34.3870
G01 X-0.8482 Y-34.3009
G01 X-0.8736 Y-34.2163
G01 X-0.8906 Y-34.1296
G01 X-0.8988 Y-34.0466
G01 X-0.9000 Y-34.0000
G01 X-0.9000 Y-0.0000
G01 X-0.8988 Y0.0466
G01 X-0.8899 Y0.1345
G01 X-0.8724 Y0.2211
G01 X-0.8482 Y0.3009
G01 X-0.8146 Y0.3826
G01 X-0.7732 Y0.4606
G01 X-0.7214 Y0.5381
G01 X-0.6652 Y0.6062
G01 X-0.6062 Y0.6652
G01 X-0.5381 Y0.7214
G01 X-0.4648 Y0.7707
G01 X-0.3870 Y0.8125
G01 X-0.3009 Y0.8482
G01 X-0.2163 Y0.8736
G01 X-0.1296 Y0.8906
G01 X-0.0466 Y0.8988
G01 X0.0000 Y0.9000
G01 X45.0000 Y0.9000
G01 X45.0466 Y0.8988
G01 X45.1345 Y0.8899
G01 X45.2211 Y0.8724
G01 X45.3009 Y0.8482
G01 X45.3826 Y0.8146
G01 X45.4606 Y0.7732
G01 X45.5381 Y0.7214
G01 X45.6062 Y0.6652
G01 X45.6652 Y0.6062
G01 X45.7214 Y0.5381
G01 X45.7707 Y0.4648
G01 X45.8125 Y0.3870
G01 X45.8482 Y0.3009
G01 X45.8736 Y0.2163
G01 X45.8906 Y0.1296
G01 X45.8988 Y0.0466
G01 X45.9000 Y-0.0000
G01 X45.9000 Y-34.0000
G01 X45.8990 Y-34.0417
G00 Z2.0000
M05
G00 Z2.0000
G00 Z15.00


M30