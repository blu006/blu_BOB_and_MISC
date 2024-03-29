(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: ch422_demo-Edge_Cuts.gbr_edit_noncopper_copy_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Friday, 24 November 2023 at 23:52)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.5 mm)
(Feedrate_XY: 200.0 mm/min)
(Feedrate_Z: 72.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -1.65 mm)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 40.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: default)

(X range:   -0.7501 ...   35.7500  mm)
(Y range:  -26.7500 ...    0.7500  mm)

(Spindle Speed: 7200.0 RPM)
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

M03 S7200.0
G01 F200.00
G00 X35.7500 Y0.0158
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X35.7500 Y-26.0172
G01 X35.7472 Y-26.0736
G01 X35.7364 Y-26.1465
G01 X35.7185 Y-26.2180
G01 X35.6936 Y-26.2873
G01 X35.6621 Y-26.3540
G01 X35.6243 Y-26.4172
G01 X35.5804 Y-26.4763
G01 X35.5309 Y-26.5309
G01 X35.4763 Y-26.5804
G01 X35.4171 Y-26.6243
G01 X35.3539 Y-26.6622
G01 X35.2873 Y-26.6937
G01 X35.2179 Y-26.7185
G01 X35.1464 Y-26.7364
G01 X35.0735 Y-26.7473
G01 X35.0171 Y-26.7500
G01 X-0.0173 Y-26.7500
G01 X-0.0737 Y-26.7473
G01 X-0.1466 Y-26.7364
G01 X-0.2180 Y-26.7185
G01 X-0.2874 Y-26.6937
G01 X-0.3540 Y-26.6622
G01 X-0.4172 Y-26.6243
G01 X-0.4764 Y-26.5804
G01 X-0.5310 Y-26.5309
G01 X-0.5805 Y-26.4763
G01 X-0.6244 Y-26.4172
G01 X-0.6623 Y-26.3540
G01 X-0.6938 Y-26.2873
G01 X-0.7186 Y-26.2180
G01 X-0.7365 Y-26.1465
G01 X-0.7473 Y-26.0736
G01 X-0.7501 Y-26.0172
G01 X-0.7501 Y0.0172
G01 X-0.7473 Y0.0736
G01 X-0.7365 Y0.1465
G01 X-0.7186 Y0.2180
G01 X-0.6938 Y0.2873
G01 X-0.6623 Y0.3540
G01 X-0.6244 Y0.4172
G01 X-0.5805 Y0.4763
G01 X-0.5310 Y0.5309
G01 X-0.4764 Y0.5804
G01 X-0.4172 Y0.6243
G01 X-0.3540 Y0.6622
G01 X-0.2874 Y0.6937
G01 X-0.2180 Y0.7185
G01 X-0.1466 Y0.7364
G01 X-0.0737 Y0.7473
G01 X-0.0173 Y0.7500
G01 X35.0172 Y0.7500
G01 X35.0919 Y0.7464
G01 X35.0795 Y0.7464
G01 X35.1519 Y0.7356
G01 X35.1537 Y0.7346
G01 X35.1961 Y0.7240
G01 X35.1851 Y0.7303
G01 X35.2699 Y0.6999
G01 X35.2742 Y0.6999
G01 X35.3440 Y0.6669
G01 X35.3257 Y0.6791
G01 X35.4257 Y0.6192
G01 X35.4291 Y0.6154
G01 X35.4667 Y0.5876
G01 X35.4497 Y0.6045
G01 X35.5117 Y0.5483
G01 X35.5151 Y0.5484
G01 X35.5852 Y0.4711
G01 X35.5851 Y0.4700
G01 X35.6170 Y0.4269
G01 X35.6170 Y0.4292
G01 X35.6621 Y0.3540
G01 X35.6922 Y0.2904
G01 X35.6924 Y0.2908
G01 X35.7185 Y0.2180
G01 X35.7304 Y0.1704
G01 X35.7304 Y0.1870
G01 X35.7472 Y0.0736
G01 X35.7500 Y0.0158
G00 Z2.0000
M05
G00 Z2.0000
G00 Z40.00


M30
