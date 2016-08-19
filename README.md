# Poké-auto

A short shell script that preforms the following actions:
 - Wake device
 - Resize device resolution so simulated gestures will work on any screen size
 - Unlock the device (using a pin... other locking methods not supported)
 - Spin the currently selected Pokéstop and wait for the resulting bubbles to automatically burst
 - Reset device to its default resolution
 - Sleep device

This process takes approximately 25 seconds to complete. This script should probably be run in the background for convience...

# Setup

### Install ADB

Arch: `sudo pacman -S android-tools`

Debian/Ubuntu/Mint: `sudo apt-get install android-tools-adb`

OS X: `brew install android-platform-tools`

Anything else: Google it

### Enable Developer Options > USB debugging

####Developer Options

`Settings > About Phone`

Tap `Build Number` seven (or more) times.  This makes visible a hidden set of options.  There may be a 'master switch' for all development options at the top of the list; activate that.

_Note: On some older versions of Android the settings path may be `Settings > About > Software Information`._

####USB debugging

Look for a USB debugging option within the developer options set, and activate it.

### Connect Phone

Make sure you have a solid USB connection... ADB will halt if device connection is lost even momentarily.

Supported Devices:
 - All devices running Android 4.4
 - __Currently you MUST have a pin passcode on your device.__

Tested Devices:
 - Nexus 6
 - Nexus 5x
 - Nexus 5

### Open Pokémon Go

 1. Find a Poké-stop that your phone will be in range of for a while (like one next to your place of work or home).
 2. Open this Poké-stop and then put your device to sleep with the power button, leaving the app open.

### Execute Script

 1. Navigate into the repo directory.
 2. Edit `./ps.sh` in your text editor of choice. Change the `PIN` variable to your device pin. This data will be sold to the NSA (jokes).
 3. Run `./ps.sh &`

_Note: For better logging you can run the script in the foreground by running `./ps.sh` without the `&`._

### Leave the phone plugged in

(unless you are willing to set up wireless debugging with ADB, which is a story for another time).

**Kill the script before using your device.**

### Profit

XP for days... Don't forget to clear your inventory out every so often, it will fill up fast.
