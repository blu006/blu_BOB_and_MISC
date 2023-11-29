#!/usr/bin/python3

# this test code is adapted from the QMK documentation under feature_rawhid.

import sys
import hid
import json

# constants for keyboard identification
C_VENDOR_ID     = 0xFEED
C_PRODUCT_ID    = 0x13A6

# constants set by QMK for raw HID calls
C_HID_USAGE_PAGE    = 0xFF60
C_HID_USAGE         = 0x61
C_HID_REPORT_LENGTH = 32

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

def send_raw_report(data):
    interface = get_raw_hid_interface()

    if interface is None:
        print("No device found")
        sys.exit(1)

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1) # First byte is Report ID
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)

    print("Request:")
    print(request_report)

    try:
        interface.write(request_report)

    finally:
        interface.close()

if __name__ == '__main__':
    send_raw_report([
        0x01, 0x5A, 0xA5
    ])
