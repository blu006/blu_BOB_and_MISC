(G-CODE GENERATED BY FLATCAM v8.994 - www.flatcam.org - Version Date: 2020/11/7)

(Name: SAL-FP_Keyboard-Edge_Cuts.gbr_edit_noncopper_copy_copy_cnc)
(Type: G-code from Geometry)
(Units: MM)

(Created on Sunday, 15 October 2023 at 02:20)

(This preprocessor is the default preprocessor used by FlatCAM.)
(It is made to work with MACH3 compatible motion controllers.)

(TOOL DIAMETER: 1.5 mm)
(Feedrate_XY: 200.0 mm/min)
(Feedrate_Z: 72.0 mm/min)
(Feedrate rapids 1500.0 mm/min)

(Z_Cut: -1.65 mm)
(Z_Move: 2.0 mm)
(Z Start: None mm)
(Z End: 15.0 mm)
(X,Y End: None mm)
(Steps per circle: 64)
(Preprocessor Geometry: default)

(X range:  -93.3491 ...  -14.6509  mm)
(Y range:  -16.2491 ...  -13.7509  mm)

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
G00 X-17.1431 Y-14.8776
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X-17.1491 Y-15.0000
G01 X-17.1431 Y-15.1224
G01 X-17.1251 Y-15.2437
G01 X-17.0953 Y-15.3626
G01 X-17.0540 Y-15.4780
G01 X-17.0016 Y-15.5888
G01 X-16.9386 Y-15.6939
G01 X-16.8655 Y-15.7924
G01 X-16.7832 Y-15.8832
G01 X-16.6924 Y-15.9655
G01 X-16.5939 Y-16.0386
G01 X-16.4888 Y-16.1016
G01 X-16.3780 Y-16.1540
G01 X-16.2626 Y-16.1953
G01 X-16.1437 Y-16.2251
G01 X-16.0224 Y-16.2431
G01 X-15.9000 Y-16.2491
G01 X-15.7776 Y-16.2431
G01 X-15.6563 Y-16.2251
G01 X-15.5374 Y-16.1953
G01 X-15.4220 Y-16.1540
G01 X-15.3112 Y-16.1016
G01 X-15.2061 Y-16.0386
G01 X-15.1076 Y-15.9655
G01 X-15.0168 Y-15.8832
G01 X-14.9345 Y-15.7924
G01 X-14.8614 Y-15.6939
G01 X-14.7984 Y-15.5888
G01 X-14.7460 Y-15.4780
G01 X-14.7047 Y-15.3626
G01 X-14.6749 Y-15.2437
G01 X-14.6569 Y-15.1224
G01 X-14.6509 Y-15.0000
G01 X-14.6569 Y-14.8776
G01 X-14.6749 Y-14.7563
G01 X-14.7047 Y-14.6374
G01 X-14.7460 Y-14.5220
G01 X-14.7984 Y-14.4112
G01 X-14.8614 Y-14.3061
G01 X-14.9345 Y-14.2076
G01 X-15.0168 Y-14.1168
G01 X-15.1076 Y-14.0345
G01 X-15.2061 Y-13.9614
G01 X-15.3112 Y-13.8984
G01 X-15.4220 Y-13.8460
G01 X-15.5374 Y-13.8047
G01 X-15.6563 Y-13.7749
G01 X-15.7776 Y-13.7569
G01 X-15.9000 Y-13.7509
G01 X-16.0224 Y-13.7569
G01 X-16.1437 Y-13.7749
G01 X-16.2626 Y-13.8047
G01 X-16.3780 Y-13.8460
G01 X-16.4888 Y-13.8984
G01 X-16.5939 Y-13.9614
G01 X-16.6924 Y-14.0345
G01 X-16.7832 Y-14.1168
G01 X-16.8655 Y-14.2076
G01 X-16.9386 Y-14.3061
G01 X-17.0016 Y-14.4112
G01 X-17.0540 Y-14.5220
G01 X-17.0953 Y-14.6374
G01 X-17.1251 Y-14.7563
G01 X-17.1431 Y-14.8776
G00 Z2.0000
G00 X-36.1931 Y-14.8776
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X-36.1991 Y-15.0000
G01 X-36.1931 Y-15.1224
G01 X-36.1751 Y-15.2437
G01 X-36.1453 Y-15.3626
G01 X-36.1040 Y-15.4780
G01 X-36.0516 Y-15.5888
G01 X-35.9886 Y-15.6939
G01 X-35.9155 Y-15.7924
G01 X-35.8332 Y-15.8832
G01 X-35.7424 Y-15.9655
G01 X-35.6439 Y-16.0386
G01 X-35.5388 Y-16.1016
G01 X-35.4280 Y-16.1540
G01 X-35.3126 Y-16.1953
G01 X-35.1937 Y-16.2251
G01 X-35.0724 Y-16.2431
G01 X-34.9500 Y-16.2491
G01 X-34.8276 Y-16.2431
G01 X-34.7063 Y-16.2251
G01 X-34.5874 Y-16.1953
G01 X-34.4720 Y-16.1540
G01 X-34.3612 Y-16.1016
G01 X-34.2561 Y-16.0386
G01 X-34.1576 Y-15.9655
G01 X-34.0668 Y-15.8832
G01 X-33.9845 Y-15.7924
G01 X-33.9114 Y-15.6939
G01 X-33.8484 Y-15.5888
G01 X-33.7960 Y-15.4780
G01 X-33.7547 Y-15.3626
G01 X-33.7249 Y-15.2437
G01 X-33.7069 Y-15.1224
G01 X-33.7009 Y-15.0000
G01 X-33.7069 Y-14.8776
G01 X-33.7249 Y-14.7563
G01 X-33.7547 Y-14.6374
G01 X-33.7960 Y-14.5220
G01 X-33.8484 Y-14.4112
G01 X-33.9114 Y-14.3061
G01 X-33.9845 Y-14.2076
G01 X-34.0668 Y-14.1168
G01 X-34.1576 Y-14.0345
G01 X-34.2561 Y-13.9614
G01 X-34.3612 Y-13.8984
G01 X-34.4720 Y-13.8460
G01 X-34.5874 Y-13.8047
G01 X-34.7063 Y-13.7749
G01 X-34.8276 Y-13.7569
G01 X-34.9500 Y-13.7509
G01 X-35.0724 Y-13.7569
G01 X-35.1937 Y-13.7749
G01 X-35.3126 Y-13.8047
G01 X-35.4280 Y-13.8460
G01 X-35.5388 Y-13.8984
G01 X-35.6439 Y-13.9614
G01 X-35.7424 Y-14.0345
G01 X-35.8332 Y-14.1168
G01 X-35.9155 Y-14.2076
G01 X-35.9886 Y-14.3061
G01 X-36.0516 Y-14.4112
G01 X-36.1040 Y-14.5220
G01 X-36.1453 Y-14.6374
G01 X-36.1751 Y-14.7563
G01 X-36.1931 Y-14.8776
G00 Z2.0000
G00 X-55.2431 Y-14.8776
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X-55.2491 Y-15.0000
G01 X-55.2431 Y-15.1224
G01 X-55.2251 Y-15.2437
G01 X-55.1953 Y-15.3626
G01 X-55.1540 Y-15.4780
G01 X-55.1016 Y-15.5888
G01 X-55.0386 Y-15.6939
G01 X-54.9655 Y-15.7924
G01 X-54.8832 Y-15.8832
G01 X-54.7924 Y-15.9655
G01 X-54.6939 Y-16.0386
G01 X-54.5888 Y-16.1016
G01 X-54.4780 Y-16.1540
G01 X-54.3626 Y-16.1953
G01 X-54.2437 Y-16.2251
G01 X-54.1224 Y-16.2431
G01 X-54.0000 Y-16.2491
G01 X-53.8776 Y-16.2431
G01 X-53.7563 Y-16.2251
G01 X-53.6374 Y-16.1953
G01 X-53.5220 Y-16.1540
G01 X-53.4112 Y-16.1016
G01 X-53.3061 Y-16.0386
G01 X-53.2076 Y-15.9655
G01 X-53.1168 Y-15.8832
G01 X-53.0345 Y-15.7924
G01 X-52.9614 Y-15.6939
G01 X-52.8984 Y-15.5888
G01 X-52.8460 Y-15.4780
G01 X-52.8047 Y-15.3626
G01 X-52.7749 Y-15.2437
G01 X-52.7569 Y-15.1224
G01 X-52.7509 Y-15.0000
G01 X-52.7569 Y-14.8776
G01 X-52.7749 Y-14.7563
G01 X-52.8047 Y-14.6374
G01 X-52.8460 Y-14.5220
G01 X-52.8984 Y-14.4112
G01 X-52.9614 Y-14.3061
G01 X-53.0345 Y-14.2076
G01 X-53.1168 Y-14.1168
G01 X-53.2076 Y-14.0345
G01 X-53.3061 Y-13.9614
G01 X-53.4112 Y-13.8984
G01 X-53.5220 Y-13.8460
G01 X-53.6374 Y-13.8047
G01 X-53.7563 Y-13.7749
G01 X-53.8776 Y-13.7569
G01 X-54.0000 Y-13.7509
G01 X-54.1224 Y-13.7569
G01 X-54.2437 Y-13.7749
G01 X-54.3626 Y-13.8047
G01 X-54.4780 Y-13.8460
G01 X-54.5888 Y-13.8984
G01 X-54.6939 Y-13.9614
G01 X-54.7924 Y-14.0345
G01 X-54.8832 Y-14.1168
G01 X-54.9655 Y-14.2076
G01 X-55.0386 Y-14.3061
G01 X-55.1016 Y-14.4112
G01 X-55.1540 Y-14.5220
G01 X-55.1953 Y-14.6374
G01 X-55.2251 Y-14.7563
G01 X-55.2431 Y-14.8776
G00 Z2.0000
G00 X-74.2931 Y-14.8776
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X-74.2991 Y-15.0000
G01 X-74.2931 Y-15.1224
G01 X-74.2751 Y-15.2437
G01 X-74.2453 Y-15.3626
G01 X-74.2040 Y-15.4780
G01 X-74.1516 Y-15.5888
G01 X-74.0886 Y-15.6939
G01 X-74.0155 Y-15.7924
G01 X-73.9332 Y-15.8832
G01 X-73.8424 Y-15.9655
G01 X-73.7439 Y-16.0386
G01 X-73.6388 Y-16.1016
G01 X-73.5280 Y-16.1540
G01 X-73.4126 Y-16.1953
G01 X-73.2937 Y-16.2251
G01 X-73.1724 Y-16.2431
G01 X-73.0500 Y-16.2491
G01 X-72.9276 Y-16.2431
G01 X-72.8063 Y-16.2251
G01 X-72.6874 Y-16.1953
G01 X-72.5720 Y-16.1540
G01 X-72.4612 Y-16.1016
G01 X-72.3561 Y-16.0386
G01 X-72.2576 Y-15.9655
G01 X-72.1668 Y-15.8832
G01 X-72.0845 Y-15.7924
G01 X-72.0114 Y-15.6939
G01 X-71.9484 Y-15.5888
G01 X-71.8960 Y-15.4780
G01 X-71.8547 Y-15.3626
G01 X-71.8249 Y-15.2437
G01 X-71.8069 Y-15.1224
G01 X-71.8009 Y-15.0000
G01 X-71.8069 Y-14.8776
G01 X-71.8249 Y-14.7563
G01 X-71.8547 Y-14.6374
G01 X-71.8960 Y-14.5220
G01 X-71.9484 Y-14.4112
G01 X-72.0114 Y-14.3061
G01 X-72.0845 Y-14.2076
G01 X-72.1668 Y-14.1168
G01 X-72.2576 Y-14.0345
G01 X-72.3561 Y-13.9614
G01 X-72.4612 Y-13.8984
G01 X-72.5720 Y-13.8460
G01 X-72.6874 Y-13.8047
G01 X-72.8063 Y-13.7749
G01 X-72.9276 Y-13.7569
G01 X-73.0500 Y-13.7509
G01 X-73.1724 Y-13.7569
G01 X-73.2937 Y-13.7749
G01 X-73.4126 Y-13.8047
G01 X-73.5280 Y-13.8460
G01 X-73.6388 Y-13.8984
G01 X-73.7439 Y-13.9614
G01 X-73.8424 Y-14.0345
G01 X-73.9332 Y-14.1168
G01 X-74.0155 Y-14.2076
G01 X-74.0886 Y-14.3061
G01 X-74.1516 Y-14.4112
G01 X-74.2040 Y-14.5220
G01 X-74.2453 Y-14.6374
G01 X-74.2751 Y-14.7563
G01 X-74.2931 Y-14.8776
G00 Z2.0000
G00 X-93.3431 Y-14.8776
G01 F72.00
G01 Z-1.6500
G01 F200.00
G01 X-93.3491 Y-15.0000
G01 X-93.3431 Y-15.1224
G01 X-93.3251 Y-15.2437
G01 X-93.2953 Y-15.3626
G01 X-93.2540 Y-15.4780
G01 X-93.2016 Y-15.5888
G01 X-93.1386 Y-15.6939
G01 X-93.0655 Y-15.7924
G01 X-92.9832 Y-15.8832
G01 X-92.8924 Y-15.9655
G01 X-92.7939 Y-16.0386
G01 X-92.6888 Y-16.1016
G01 X-92.5780 Y-16.1540
G01 X-92.4626 Y-16.1953
G01 X-92.3437 Y-16.2251
G01 X-92.2224 Y-16.2431
G01 X-92.1000 Y-16.2491
G01 X-91.9776 Y-16.2431
G01 X-91.8563 Y-16.2251
G01 X-91.7374 Y-16.1953
G01 X-91.6220 Y-16.1540
G01 X-91.5112 Y-16.1016
G01 X-91.4061 Y-16.0386
G01 X-91.3076 Y-15.9655
G01 X-91.2168 Y-15.8832
G01 X-91.1345 Y-15.7924
G01 X-91.0614 Y-15.6939
G01 X-90.9984 Y-15.5888
G01 X-90.9460 Y-15.4780
G01 X-90.9047 Y-15.3626
G01 X-90.8749 Y-15.2437
G01 X-90.8569 Y-15.1224
G01 X-90.8509 Y-15.0000
G01 X-90.8569 Y-14.8776
G01 X-90.8749 Y-14.7563
G01 X-90.9047 Y-14.6374
G01 X-90.9460 Y-14.5220
G01 X-90.9984 Y-14.4112
G01 X-91.0614 Y-14.3061
G01 X-91.1345 Y-14.2076
G01 X-91.2168 Y-14.1168
G01 X-91.3076 Y-14.0345
G01 X-91.4061 Y-13.9614
G01 X-91.5112 Y-13.8984
G01 X-91.6220 Y-13.8460
G01 X-91.7374 Y-13.8047
G01 X-91.8563 Y-13.7749
G01 X-91.9776 Y-13.7569
G01 X-92.1000 Y-13.7509
G01 X-92.2224 Y-13.7569
G01 X-92.3437 Y-13.7749
G01 X-92.4626 Y-13.8047
G01 X-92.5780 Y-13.8460
G01 X-92.6888 Y-13.8984
G01 X-92.7939 Y-13.9614
G01 X-92.8924 Y-14.0345
G01 X-92.9832 Y-14.1168
G01 X-93.0655 Y-14.2076
G01 X-93.1386 Y-14.3061
G01 X-93.2016 Y-14.4112
G01 X-93.2540 Y-14.5220
G01 X-93.2953 Y-14.6374
G01 X-93.3251 Y-14.7563
G01 X-93.3431 Y-14.8776
G00 Z2.0000
M05
G00 Z2.0000
G00 Z15.00


M30