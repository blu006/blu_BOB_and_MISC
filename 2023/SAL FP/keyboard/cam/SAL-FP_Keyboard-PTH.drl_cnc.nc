(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: SAL-FP_Keyboard-PTH.drl_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 15 October 2023 at 01:47)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 1.0007599999999999)
(Tool: 2 -> Dia: 1.50114)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 200.0)
(Tool: 2 -> Feedrate: 300.0)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.85)
(Tool: 2 -> Z_Cut: -1.96)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2.0)
(Tool: 2 -> Z_Move: 2.0)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 0.5 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:  -96.6602 ...  -12.6090  mm)
(Y range:  -20.8318 ...   -9.4209  mm)

(Spindle Speed: 0 RPM)
G21
G90
G94

G01 F200.00

M5
G00 Z15.0000
T1
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 1.0008 ||| Total drills for tool T1 = 10)
M0
G00 Z15.0000

G01 F200.00
M03
G00 X-14.6296 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-17.1696 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-33.6796 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-36.2196 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-52.7296 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-55.2696 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-71.7796 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-74.3196 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-90.8296 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
G00 X-93.3696 Y-9.9212
G01 Z-1.8500
G01 Z0
G00 Z2.0000
M05
G00 Z0.50


M30