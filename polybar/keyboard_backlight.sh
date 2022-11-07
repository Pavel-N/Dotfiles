#!/bin/bash

# ██████╗ ██╗    ██╗    ██████╗ ██╗██╗   ██╗██╗███╗   ██╗ ██████╗ 
# ██╔══██╗██║    ██║    ██╔══██╗██║██║   ██║██║████╗  ██║██╔════╝ 
# ██████╔╝██║ █╗ ██║    ██║  ██║██║██║   ██║██║██╔██╗ ██║██║  ███╗
# ██╔══██╗██║███╗██║    ██║  ██║██║╚██╗ ██╔╝██║██║╚██╗██║██║   ██║
# ██████╔╝╚███╔███╔╝    ██████╔╝██║ ╚████╔╝ ██║██║ ╚████║╚██████╔╝
# ╚═════╝  ╚══╝╚══╝     ╚═════╝ ╚═╝  ╚═══╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ 
# Author: Pavel Novák
# Github: https://github.com/Pavel-N
# Description: This is keyboard backlight script for my (Poly)bar used in my BW Diving theme.

# Path to your keyboard brightnss file
PATH="/sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/brightness"

echo $(<$PATH)
