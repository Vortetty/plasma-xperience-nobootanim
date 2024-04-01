# Plasma Experience
A simple Magisk module that gives that KDE touch theming to your Android device:  
all done from scratch, by using assets from Plasma Mobile and Desktop!  

# Which stuff does it add?
Since this is a theming module made from scratch, **Plasma Experience** replaces and adds the following to your Android system:  
* System sounds (this includes: lock, unlock, dock, NFC audio cues, camera, and tapping sounds);  
* Ringtones;  
* Notifications;  
* System fonts (replaces `Roboto` fonts to KDE's `Oxygen`);  
* Boot animation (manually ported by using `breeze-plymouth`'s assets);  

If you want more features, feel free to push an issue on this repo  

# Differences from the source
Despite the Plasma Mobile sounds are untouched (by majority), i have done few tweaks here and there to several things:  
* Made the lock, unlock (this extends to dock sounds), and camera focus sounds more audible by amping up the dB frequency (around 10dB, using `ffmpeg`);  
* Converted the `camera_shutter.wav` soundfile to `.ogg`, so that the Android filesystem would recognize it;  
* Renamed a couple of ringtones (like `Morning Rush` and `On The Way`) by including `_` between the spaces, else Android would ignore them during ringtone selection;  

# Pre-requirements
* A ROM that is based on Android 6.0 (and beyond)  
* Unlocked bootloader  
* A rooted device (obviously)  
* Magisk 20.4+
* A terminal app (optional)  

# Compatibilty
Due to a slight hierarchy change inside the `/system` folder (specifically to things like system audio and boot animation) since A10, the module may have some duplicate files in order to have compatibility both for older (from 6~9) and newer (from 10~14) Android ROMs  

# Installation
## GUI
* Download the zipfile by going on this repo's `Releases` tab;  
* Open the Magisk app;  
* Go to the `Modules` tab;  
* Select `Install from device`;  
* Pick the zipfile you have just downloaded (in any case you don't know where it is, it's placed under the `Download` folder);  
* Wait for installation;  
* Reboot your device and enjoy!

## Terminal
**Disclaimer:**  
if you prefer doing the entire process in a terminal via your android device, you must need apps like [Terminal Emulator](https://f-droid.org/en/packages/jackpal.androidterm/) or [Termux](https://f-droid.org/en/packages/com.termux/) installed firsthand  
```
su
cd /sdcard/

##  If you're unsure whether you have curl or wget between your system binaries, type the following command below
ls /system/bin | grep -e curl -e wget

##  If the results pull out only wget, write this on your terminal
wget https://codeberg.org/Baempaieo/plasma-xperience/releases/download/2.0/plasma-xperience_Magisk2.0.zip

##  Else, if the output results into curl: type this command instead
curl https://codeberg.org/Baempaieo/plasma-xperience/releases/download/2.0/plasma-xperience_Magisk2.0.zip

magisk --install-module /sdcard/plasma-xperience_Magisk2.0.zip
```

# Tested devices
* Samsung Galaxy Tab S6 Lite (running LineageOS 21, unofficial build, based on Android 14)  
* Samsung Galaxy S4 Mini LTE (running LineageOS 14, official build, based on Android 7)  

# Credits & Sources
* [Plasma Mobile Sounds](https://github.com/KDE/plasma-mobile-sounds), used for porting over to Android notification sounds and ringtones;
* [Plasma Oxygen Sound Theme](https://github.com/KDE/oxygen-sounds), used for most of the UI sounds;  
* [Plasma Ocean Sound Theme](https://github.com/KDE/ocean-sound-theme), used for a couple of UI sounds;  
* [Freedesktop](https://www.freedesktop.org/wiki/), used the `bell.oga` soundfile as the `Effect_Tick` sound within the module;  
* [Oxygen Fonts](https://github.com/vernnobile/oxygenFont), used for replacing the system fonts;  
* [Breeze Plymouth](https://github.com/KDE/breeze-plymouth), used some of it's assets to create the custom boot animation;  
* [create_android_bootanimation](https://github.com/iamantony/create_android_bootanimation), tool used for creating the custom `bootanimation.zip` file for the module;  
    * Also, manually edited the `desc.txt` file to adjust the animation (with the tweaks, it should loop and run at `24fps` for a slow-paced animation);  
