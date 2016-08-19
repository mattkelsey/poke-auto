#!/bin/bash
set -e
function cleanup {
    echo "closing"
    adb shell wm size reset
}
trap cleanup EXIT

PIN=0000

while [ : ]
do
    adb shell input keyevent 26
    echo waking and resizing
    adb shell wm size 1080x1920
    echo unlocking with pin:
    adb shell input swipe 540 1900 540 500
    adb shell input text $PIN
    echo $PIN
    adb shell input keyevent 66
    sleep 1s 
    echo spinning
    adb shell input swipe 270 960 810 960
    echo waiting for bubbles to pop...
    sleep 15s
    echo restoring wm size and locking
    adb shell wm size reset
    adb shell input keyevent 26
    echo waiting six minutes
    sleep 315s
done
