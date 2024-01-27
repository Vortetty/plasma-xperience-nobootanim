# Plasma Experience
An handcrafted Sound Theme made out of KDE Plasma Mobile and Desktop's sounds!  
This Magisk module should give you a more unique flair to your own rooted device, basically  

# Which sounds does it add?
Since this is a Sound Theme made from scratch, **Plasma Experience** replaces and adds the following sounds to your Android system:  
* Simple system sounds (this includes: lock, unlock, dock sounds, NFC audio cues, camera sounds, and tapping sfx);  
* Ringtones;  
* Notifications;  

If you want more sounds, feel free to push an issue on this repo  

# Differences from the source
Despite the Plasma Mobile sounds are untouched, i have done few modifications on the UI sound folder:  
* Made the lock, unlock (this extends to dock sounds), and camera focus sound more audible by amping up the dB frequency (this up to 10dB, in an attempt to be audible without maxing the system volume);  
* Converted the `camera_shutter.wav` file to an `ogg` file, so that Android would read it without issues;  

# Pre-requirements
* A ROM that is based on Android 6.0 (and beyond)  
* Unlocked bootloader  
* A rooted device (obviously)  
* Magisk 20.4+
* A terminal app (optional)  

# Compatibilty
Due to a slight hierarchy change inside the `/system` folder (specifically to things like system audio and boot animation) since A10, the module may have some duplicate files in order to have compatibility both for older (from 6~9) and newer (from 10~14) Android ROMs  

# Installation
## Magisk App
### GUI
* Download the zipfile by going on this repo's `Releases` tab;  
* Open the Magisk app;  
* Go to the `Modules` tab;  
* Select `Install from device`;  
* Pick the zipfile you have just downloaded (in any case you don't know where it is, it's placed under the `Download` folder);  
* Wait for installation;  
* Reboot your device and enjoy!

### Terminal
**Disclaimer:**  
if you prefer doing the entire process in a terminal via your android device, you must need apps like [Terminal Emulator](https://f-droid.org/en/packages/jackpal.androidterm/) or [Termux](https://f-droid.org/en/packages/com.termux/) installed firsthand  
```
su
cd /sdcard/

##  If you're unsure whether you have curl or wget between your system binaries, type the following command below
ls /system/bin | grep -e curl -e wget

##  If the results pull out only wget, write this on your terminal
wget https://codeberg.org/Baempaieo/plasma-xperience/releases/download/1.0/plasma-xperience_Magisk.zip

##  Else, if the output results into curl: type this command instead
curl https://codeberg.org/Baempaieo/plasma-xperience/releases/download/1.0/plasma-xperience_Magisk.zip

magisk --install-module /sdcard/plasma-xperience_Magisk.zip
```

## Other module managers
If you may have apps like [Androidacy Module Manager](https://github.com/Androidacy/MagiskModuleManager) (or, if you have an older version, **Fox's Magisk Module Manager**), the installation should be more straightforward than Magisk's  

# Tested devices
* Samsung Galaxy Tab S6 Lite (running LineageOS 21, unofficial build, based on Android 14)  

# Credits & Sources
* [Plasma Mobile Sounds](https://github.com/KDE/plasma-mobile-sounds), used for porting over to Android notification sounds and ringtones;
* [Plasma Oxygen Sound Theme](https://github.com/KDE/oxygen-sounds), used for most of the UI sounds;  
* [Plasma Ocean Sound Theme](https://github.com/KDE/ocean-sound-theme), used for a couple of UI sounds;  
* [Freedesktop](https://www.freedesktop.org/wiki/), used the `bell.oga` soundfile as the `Effect_Tick` sound within the module;  
