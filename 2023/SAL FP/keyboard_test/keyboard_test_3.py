#!/usr/bin/python3

# toggles LEDs based on the button pressed

import sys
import sal_kblib as sal
import json
from pynput import keyboard
from threading import Event

def on_press(key):
    if key == keyboard.KeyCode(269025153):
        sal.toggle_led(interface, 0)
    if key == keyboard.KeyCode(269025093):
        sal.toggle_led(interface, 1)
    if key == keyboard.KeyCode(269025094):
        sal.toggle_led(interface, 2)
    if key == keyboard.KeyCode(269025095):
        sal.toggle_led(interface, 3)
    if key == keyboard.KeyCode(269025096):
        sal.toggle_led(interface, 4)
    if key == keyboard.KeyCode(269025097):
        sal.toggle_led(interface, 5)
    

if __name__ == '__main__':
    evnt = Event()
    interface = sal.get_hid_interface();
    
    listener = keyboard.Listener(on_press = on_press)
    listener.start()

    while True:
        # essentially does nothing but reset the watchdog
        sal.toggle_led(interface, 0xff)
        evnt.wait(1);

