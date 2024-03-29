(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: power_distribution_board-PTH.drl_edit_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Friday, 27 October 2023 at 11:54)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.8)
(Tool: 2 -> Dia: 2.7)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 300)
(Tool: 2 -> Feedrate: 300)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.8157)
(Tool: 2 -> Z_Cut: -1.7)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)

(Z Toolchange: 40.0 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 40.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    3.6494 ...   90.4005  mm)
(Y range:  -29.2468 ...   -3.9485  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F300.00

M5
G00 Z40.0000
T1
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.8000 ||| Total drills for tool T1 = 18)
M0
G00 Z40.0000

G01 F300.00
M03
G00 X82.6523 Y-19.3472
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X87.5012 Y-20.0000
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X90.0005 Y-20.0000
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X82.6523 Y-28.8468
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X67.1532 Y-28.8468
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X54.6513 Y-28.8468
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X39.1523 Y-28.8468
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X26.6529 Y-21.8288
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X11.1513 Y-21.8288
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X11.1513 Y-12.3292
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X26.6529 Y-12.3292
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X39.1523 Y-19.3472
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X39.1523 Y-13.8481
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X39.1523 Y-4.3485
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X54.6513 Y-4.3485
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X54.6513 Y-13.8481
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X54.6513 Y-19.3472
G01 Z-1.8157
G01 Z0
G00 Z2.0000
G00 X67.1532 Y-19.3472
G01 Z-1.8157
G01 Z0
G00 Z2.0000
M05
G00 Z40.00


M30
