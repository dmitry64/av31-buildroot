#!/bin/sh

killall bluetoothd
killall hciattach
sleep 1
echo 0 > /proc/gpio/bt-en
echo 1 > /proc/gpio/bt-en
hciattach -s 115200 /dev/ttymxc2 texas
sleep 1
bluetoothd

