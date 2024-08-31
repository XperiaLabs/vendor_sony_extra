# Sony Xperia Vendor Extra Repository

## DISCLAIMER
- All Dolby & Sony applications and blobs are owned by Dolby™ and Sony™.

## How to Include extra in your DT (Device Tree)?
- Inherit the extras repo (for your specific series) from your device.mk as shown
```
include vendor/sony/extra/Series/extra.mk
```

- Set flags accordingly in order to ship different modules of your choosing

|Flag|Description|
|:-:|:-:|
|`TARGET_SHIPS_SONY_FRAMEWORK`|`Ships libraries and permissions, needed for TARGET_SHIPS_SONY_APPS and all other flags/extras to work`|
|`TARGET_SHIPS_SONY_CAMERA`|`Ships the Sony Xperia™ camera apps for taking photos or videos and their related addons`|
|`TARGET_SHIPS_SONY_APPS`|`Ships some miscellaneous Sony apps`|
|`TARGET_SHIPS_SOUND_ENHANCEMENT`|`Ships the needed blobs & apps for Audio Settings (Dolby Sound, 360 Reality Audio Upmix) to work`|
|`TARGET_SUPPORTS_GAME_CONTROLLERS`|`Ships Sony's Game controller app and needed layouts for various controllers`|
|`TARGET_SUPPORTS_XPERIA_STREAM`|`Ships Sony's "Xperia Stream" suite for the Xperia Stream gaming accessory which should work on (Xperia 1 III, IV and V)`|