(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: i2c_wall_clock_controller-PTH.drl_edit_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Friday, 22 March 2024 at 19:10)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)


(TOOLS DIAMETER: )
(Tool: 1 -> Dia: 0.4)
(Tool: 2 -> Dia: 0.8)
(Tool: 3 -> Dia: 1.0)

(FEEDRATE Z: )
(Tool: 1 -> Feedrate: 200.0)
(Tool: 2 -> Feedrate: 300)
(Tool: 3 -> Feedrate: 300)

(FEEDRATE RAPIDS: )
(Tool: 1 -> Feedrate Rapids: 1500)
(Tool: 2 -> Feedrate Rapids: 1500)
(Tool: 3 -> Feedrate Rapids: 1500)

(Z_CUT: )
(Tool: 1 -> Z_Cut: -1.7)
(Tool: 2 -> Z_Cut: -1.7)
(Tool: 3 -> Z_Cut: -1.7)

(Tools Offset: )
(Tool: 1 -> Offset Z: 0.0)

(DEPTH_PER_CUT: )
(Tool: 1 -> DeptPerCut: 0.7)
(Tool: 2 -> DeptPerCut: 0.7)
(Tool: 3 -> DeptPerCut: 0.7)

(Z_MOVE: )
(Tool: 1 -> Z_Move: 2)
(Tool: 2 -> Z_Move: 2)
(Tool: 3 -> Z_Move: 2)

(Z Toolchange: 15 mm)
(X,Y Toolchange: 0.0000, 0.0000 mm)
(Z Start: None mm)
(Z End: 45.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Excellon: default)

(X range:    2.3248 ...   31.5150  mm)
(Y range:  -21.1550 ...   -1.4050  mm)

(Spindle Speed: 12000 RPM)
G21
G90
G94

G01 F200.00

M5
G00 Z15.0000
T1
G00 X0.0000 Y0.0000                
M6
(MSG, Change to Tool Dia = 0.4000 ||| Total drills for tool T1 = 6)
M0
G00 Z15.0000

G01 F200.00
M03 S12000
G00 X2.5248 Y-14.6050
G01 Z-0.7000
G01 Z0
G00 Z2.0000
G01 Z-1.4000
G01 Z0
G00 Z2.0000
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X2.5248 Y-15.8750
G01 Z-0.7000
G01 Z0
G00 Z2.0000
G01 Z-1.4000
G01 Z0
G00 Z2.0000
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X2.5248 Y-17.1450
G01 Z-0.7000
G01 Z0
G00 Z2.0000
G01 Z-1.4000
G01 Z0
G00 Z2.0000
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X2.5248 Y-20.9550
G01 Z-0.7000
G01 Z0
G00 Z2.0000
G01 Z-1.4000
G01 Z0
G00 Z2.0000
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X2.5248 Y-19.6850
G01 Z-0.7000
G01 Z0
G00 Z2.0000
G01 Z-1.4000
G01 Z0
G00 Z2.0000
G01 Z-1.7000
G01 Z0
G00 Z2.0000
G00 X2.5248 Y-18.4150
G01 Z-0.7000
G01 Z0
G00 Z2.0000
G01 Z-1.4000
G01 Z0
G00 Z2.0000
G01 Z-1.7000
G01 Z0
G00 Z2.0000
M05
G00 Z45.00


M30
