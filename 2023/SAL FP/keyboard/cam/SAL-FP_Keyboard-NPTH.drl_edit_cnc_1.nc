(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: SAL-FP_Keyboard-NPTH.drl_edit_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 15 October 2023 at 01:52)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 1.049)
(Tool: 2 -> Dia: 1.6993)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 230.0)
(Tool: 2 -> Feedrate: 350.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.877)
(Tool: 2 -> Z_Cut: -2.002)

(Tools Offset: )
(Tool: 2 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2.0)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 0.5 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:  -98.0292 ...   -9.9700  mm)
(Y range:  -25.6857 ...   -4.3167  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F350.00

M5
G00 Z15.0000
T2
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 1.6993 ||| Total drills for tool T2 = 10)
M0
G00 Z15.0000

G01 F350.00
M03
G00 X-10.8196 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-20.9796 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-29.8696 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-40.0296 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-48.9196 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-59.0796 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-67.9696 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-78.1296 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-87.0196 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
G00 X-97.1796 Y-15.0012
G01 Z-2.0020
G01 Z0
G00 Z2.0000
M05
G00 Z0.50


M30
