(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: Ultra_Light.drl_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 07 April 2024 at 19:34)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.9)
(Tool: 2 -> Dia: 1.3)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 300)
(Tool: 2 -> Feedrate: 300)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.7)
(Tool: 2 -> Z_Cut: -1.92)

(Tools Offset: )
(Tool: 2 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 45.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    9.8500 ...   14.4500  mm)
(Y range:   -9.1500 ...   -1.5500  mm)

(Spindle Speed: 7200 RPM)
G21
G90
G94

G01 F300.00

M5
G00 Z15.0000
T2
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 1.3000 ||| Total drills for tool T2 = 2)
M0
G00 Z15.0000

G01 F300.00
M03 S7200
G00 X10.5000 Y-3.5000
G01 Z-1.9200
G01 Z0
G00 Z2.0000
G00 X10.5000 Y-8.5000
G01 Z-1.9200
G01 Z0
G00 Z2.0000
M05
G00 Z45.00


M30