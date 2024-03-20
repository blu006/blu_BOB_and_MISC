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

# constants for keyboard identification
C_VENDOR_ID     = 0xFEED
C_PRODUCT_ID    = 0x13A6

# constants set by QMK for raw HID calls
C_HID_USAGE_PAGE    = 0xFF60
C_HID_USAGE         = 0x61
C_HID_REPORT_LENGTH = 32

# time delay constant
C_DELAY = 0.1

def get_raw_hid_interface():
    device_interfaces = hid.enumerate(C_VENDOR_ID, C_PRODUCT_ID)
    for i in device_interfaces:
        print(i)
    raw_hid_interfaces = [i for i in device_interfaces if i['usage_page'] == C_HID_USAGE_PAGE and i['usage'] == C_HID_USAGE]

    if len(raw_hid_interfaces) == 0:
        return None

    interface = hid.Device(path=raw_hid_interfaces[0]['path'])

    print(f"Manufacturer: {interface.manufacturer}")
    print(f"Product: {interface.product}")

    return interface

def output_led(vec):
    data = [0x01, vec]
    data.append(cksum(data))

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def reset_led(idx):
    data = [0x02, idx]
    data.append(cksum(data))

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def set_led(idx):
    data = [0x03, idx]
    data.append(cksum(data))

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def toggle_led(idx):
    data = [0x04, idx]
    data.append(cksum(data))

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def cksum(data):
    s = sum(data[0:2])
    s ^= 0xFF
    s += 1
    s &= 0xFF
    return s;

def festive_fill_led():
    fill = 7
    sel = 0
    for i in range (0, fill)[::-1]:
        for j in range(0, i):
            data = (1 << i) - 1;
            data ^= 0xFF
            data |= 1 << j;
            output_led(data);
            time.sleep(C_DELAY * 3)

def festive_empty_led():
    fill = 7
    sel = 0
    for i in range (0, fill):
        for j in range(0, i)[::-1]:
            data = (1 << i) - 1;
            data ^= 0xFF
            data |= 1 << j;
            output_led(data);
            time.sleep(C_DELAY * 3)

if __name__ == '__main__':
    global interface
    interface = get_raw_hid_interface()

    if interface is None:
        print("No device found")
        sys.exit(1)

    while True:
        for i in range(1, (1 << 6)):
            output_led(i)
            time.sleep(C_DELAY)
    
        for i in range(0, 6):
            reset_led(i)
            time.sleep(C_DELAY * 2)
    
        for i in range(0, 6)[::-1]:
            set_led(i)
            time.sleep(C_DELAY * 3)
    
        for i in range(0, 6)[::-1]:
            toggle_led(i)
            time.sleep(C_DELAY * 3)
    
        for i in range(0, 6):
            output_led(1 << i)
            time.sleep(C_DELAY * 3)
    
        for i in range(0, 6)[::-1]:
            output_led(1 << i)
            time.sleep(C_DELAY * 3)
    
        festive_fill_led();
    
        festive_empty_led();

    interface.close()
