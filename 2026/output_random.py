#!/usr/bin/env python3 
import random
import serial
import time

ser = serial.Serial("COM6", 38400, timeout=0.001)
while True:
    rv = random.randint(33, 126)
    ser.write(rv.to_bytes())
    time.sleep(0.1)
