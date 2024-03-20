import hid

# constants for keyboard identification
C_VENDOR_ID     = 0xFEED
C_PRODUCT_ID    = 0x13A6

# constants set by QMK for raw HID calls
C_HID_USAGE_PAGE    = 0xFF60
C_HID_USAGE         = 0x61
C_HID_REPORT_LENGTH = 32

def get_hid_interface():
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

def output_led(interface: hid.Device, vec):
    data = [0x01, vec]
    data.append(cksum(data))

    # the first 0x00 is given to satisfy the underlying USB library
    # thanks to the nice folks on stack overflow as always:
    # https://stackoverflow.com/questions/22240591/confused-by-the-report-id-when-using-hidapi-through-usb
    # https://github.com/signal11/hidapi/blob/master/libusb/hid.c#L1009
    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def reset_led(interface: hid.Device, idx):
    data = [0x02, idx]
    data.append(cksum(data))

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def set_led(interface: hid.Device, idx):
    data = [0x03, idx]
    data.append(cksum(data))

    request_data = [0x00] * (C_HID_REPORT_LENGTH + 1)
    request_data[1:len(data) + 1] = data
    request_report = bytes(request_data)
    
    interface.write(request_report);

def toggle_led(interface: hid.Device, idx):
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
