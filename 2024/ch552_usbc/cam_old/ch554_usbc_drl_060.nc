(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: ch552_usbc-NPTH.drl_edit_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Saturday, 16 March 2024 at 05:09)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.6)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 200.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.77)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2.0)

(Z Toolchange: 15.0 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 45.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:   30.3680 ...   30.9680  mm)
(Y range:  -15.2555 ...   -8.8745  mm)

(Spindle Speed: 7200 RPM)
G21
G90
G94

G01 F200.00

M5
G00 Z15.0000
T1
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.6000 ||| Total drills for tool T1 = 2)
M0
G00 Z15.0000

G01 F200.00
M03 S7200
G00 X30.6680 Y-9.1745
G01 Z-1.7700
G01 Z0
G00 Z2.0000
G00 X30.6680 Y-14.9555
G01 Z-1.7700
G01 Z0
G00 Z2.0000
M05
G00 Z45.00


M30