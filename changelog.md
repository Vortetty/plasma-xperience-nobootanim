# Changelog
### First Release - 1.0
#### 26-01-2024
* Initial release of the module;  

#### 27-01-2024
* Renamed `On The Way.oga` and `Morning Rush.oga` (inside `system/media/audio/ringtones` and `system/product/media/audio/ringtones`) into `On_The_Way.oga` and `Morning_Rush.oga`;  
    * Android seemed to ignore these 2 ringtones in particular due to having spaces in their filename;  

#### 28-01-2024
* Added the `updateJson` string to `module.prop`, so the module will know for updates;
* Fixed the `update.json` file, so it will point to a raw version of the changelogs;  

---

### Kool Dragons - 2.0
#### 30-01-2024
* Added custom boot animation (done by using `breeze-plymouth`'s assets);  
* Added custom fonts (replaces `Roboto`'s default fonts to `Oxygen`);  
* Updated some files for the new version (obviously lol);  

---

### KWrench Fix - 2.1
#### 30-01-2024
* Added the `support` string to `module.prop`;  
* Fixed a typo left on `update.json` (left `v1` instead of updating it to `v2`);  
