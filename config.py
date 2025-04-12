#!/usr/bin/env python3

import sys
import os

def xinitrc():
    bg = input("background file: ")
    print("bg modes: --bg-fill, --bg-scale, --bg-tile, --bg-max, --bg-center")
    bg_mode = input("bg mode: ")
    wm = input("window manager: ")
    idle_time = input("cursor idle time: ")

    f = open(".xinitrc", "w")
    f.write("slstatus & \n")
    f.write(f"feh {bg_mode} {bg}\n")
    f.write(f"xrdb ~/.Xresources &\n")
    f.write(f"unclutter -idle {idle_time} &\n")
    f.write(f"\nexec {wm} > ~/.{wm}.log")
    f.close()

def install():
    os.popen("cp .xinitrc ~/.xinitrc")
    os.popen("cp .bashrc ~/.bashrc")
    os.popen("cp -r .config ~/.config")
    os.popen("cp .gitconfig ~")


def main():
    if sys.argv[1] == "xinitrc": xinitrc()
    elif sys.argv[1] == "install": install()
    
if __name__ == "__main__":
    main()
