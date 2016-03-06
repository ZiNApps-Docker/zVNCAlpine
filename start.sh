#!/bin/sh

mkdir ~/.vnc
echo "$PASSWD" | vncpasswd -f > ~/.vnc/passwd

echo "VNC password: $PASSWD"
sleep 4

Xvfb -screen 0 1366x768x16 &
sleep 1
x0vncserver -display $DISPLAY -passwordfile ~/.vnc/passwd -rfbport 5901 &
sleep 1
startxfce4
