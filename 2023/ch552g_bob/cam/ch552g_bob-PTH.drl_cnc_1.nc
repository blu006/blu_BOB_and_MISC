(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: ch552g_bob-PTH.drl_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 31 December 2023 at 04:00)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 1.0007599999999999)
(Tool: 2 -> Dia: 1.0998199999999998)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 300)
(Tool: 2 -> Feedrate: 300.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.7)
(Tool: 2 -> Z_Cut: -1.88)

(Tools Offset: )
(Tool: 2 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 0.5 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    9.0246 ...   33.6461  mm)
(Y range:  -22.7254 ...   -1.4046  mm)

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
(MSG, Change to Tool Dia = 1.0998 ||| Total drills for tool T2 = 8)
M0
G00 Z15.0000

G01 F300.00
M03 S7200
G00 X26.5938 Y-6.0046
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X26.5938 Y-10.5054
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X26.5938 Y-13.6246
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X26.5938 Y-18.1254
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X33.0962 Y-18.1254
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X33.0962 Y-13.6246
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X33.0962 Y-10.5054
G01 Z-1.8800
G01 Z0
G00 Z2.0000
G00 X33.0962 Y-6.0046
G01 Z-1.8800
G01 Z0
G00 Z2.0000
M05
G00 Z0.50


M30
