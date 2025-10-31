#!/usr/bin/env python3 
import pyudev

def monitor_udev():
    """ Monitors for udev devices and displays them on the termial"""
    print("Running udev monitor funciton")
    context = pyudev.Context()
    monitor = pyudev.Monitor.from_netlink(context) 

    for device in iter(monitor.poll, None):
        if device.action == "add":
            print(f"found device: {device.device_node}")

monitor_udev()
