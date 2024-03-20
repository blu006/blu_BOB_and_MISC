#!/usr/bin/python3

# this test code is adapted from the QMK documentation under feature_rawhid.

# note that installing QMK on the host system also installs a new version of
# the python HID library.
# At the time that this paragrah is written, the hid library within the debian
# repository is too old for this code to work correctly.

# note that multiple libraries try to provide the library 'hid'.
# the correct library to use is the 'hid' package found in pip.
# that is https://github.com/apmorton/pyhidapi and not the cython
# library hidapi
# or the library pyhidapi for that matter.

import sys
import hid
import time
import sal_kblib as sal

# time delay constant
C_DELAY = 0.1

def festive_fill_led(interface):
    fill = 7
    sel = 0
    for i in range (0, fill)[::-1]:
        for j in range(0, i):
            vec = (1 << i) - 1;
            vec ^= 0xFF
            vec |= 1 << j;
            sal.output_led(interface, vec);
            time.sleep(C_DELAY * 3)

def festive_empty_led(interface):
    fill = 7
    sel = 0
    for i in range (0, fill):
        for j in range(0, i)[::-1]:
            vec = (1 << i) - 1;
            vec ^= 0xFF
            vec |= 1 << j;
            sal.output_led(interface, vec);
            time.sleep(C_DELAY * 3)

if __name__ == '__main__':
    interface = sal.get_hid_interface()

    if interface is None:
        print("No device found")
        sys.exit(1)

    while True:
        for i in range(1, (1 << 6)):
            sal.output_led(interface, i)
            time.sleep(C_DELAY)
    
        for i in range(0, 6):
            sal.reset_led(interface, i)
            time.sleep(C_DELAY * 2)
    
        for i in range(0, 6)[::-1]:
            sal.set_led(interface, i)
            time.sleep(C_DELAY * 3)
    
        for i in range(0, 6)[::-1]:
            sal.toggle_led(interface, i)
            time.sleep(C_DELAY * 3)
    
        for i in range(0, 6):
            sal.output_led(interface, 1 << i)
            time.sleep(C_DELAY * 3)
    
        for i in range(0, 6)[::-1]:
            sal.output_led(interface, 1 << i)
            time.sleep(C_DELAY * 3)
    
        festive_fill_led(interface);
    
        festive_empty_led(interface);

    interface.close()
