(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: SAL-FP_Keyboard-NPTH.drl_edit_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 15 October 2023 at 01:51)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 1.049)
(Tool: 2 -> Dia: 1.6993)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 230.0)
(Tool: 2 -> Feedrate: 300)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.877)
(Tool: 2 -> Z_Cut: -1.7)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)

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

(X range:  -98.0292 ...   -9.9700  mm)
(Y range:  -25.6857 ...   -4.3167  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F230.00

M5
G00 Z15.0000
T1
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 1.0490 ||| Total drills for tool T1 = 24)
M0
G00 Z15.0000

G01 F230.00
M03
G00 X-24.7896 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-27.3296 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-29.8696 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-32.4096 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-34.9496 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-37.4896 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-40.0296 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-42.5696 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-45.1096 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-47.6496 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-50.1896 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-52.7296 Y-4.8412
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-52.7296 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-50.1896 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-47.6496 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-45.1096 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-42.5696 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-40.0296 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-37.4896 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-34.9496 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-32.4096 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-29.8696 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-27.3296 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
G00 X-24.7896 Y-25.1612
G01 Z-1.8770
G01 Z0
G00 Z2.0000
M05
G00 Z0.50


M30