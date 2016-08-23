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
    echo "waking and resizing"
    adb shell wm size 1080x1920
    echo "unlocking with pin:"
    adb shell input swipe 540 1900 540 500
    adb shell input text $PIN
    echo $PIN
    adb shell input keyevent 66
    echo "six second pause for GPS and network stabilization"
    sleep 6s
    echo "spin that stop and..."
    adb shell input swipe 270 960 810 960
    echo "wait for the bubbles to pop!"
    sleep 15s
    echo "now reset the screen and we're ready to lock!"
    adb shell wm size reset
    adb shell input keyevent 26
    echo "waiting five minutes"
    sleep 305s
done
