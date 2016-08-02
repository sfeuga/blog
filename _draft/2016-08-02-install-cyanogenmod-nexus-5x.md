---
layout: post

title: "CyanogenMod Install on the Google Nexus 5X (\"bullhead\")"
---

For this tutorial, you'll need to download :
* [twrp-3.0.2-0-bullhead.img](https://dl.twrp.me/bullhead/twrp-3.0.2-0-bullhead.img) : This is a custom recovery system image. The md5 is `eb62be2463ddbca270294b8f0ffb9540`.
* [bullhead-mda89e-factory-29247942.tgz](https://dl.google.com/dl/android/aosp/bullhead-mda89e-factory-29247942.tgz) : This is the official system image. The sha256 is `76730b13da6aabab73a1287d205a44daf055980b87f9511a75a494d267a2b482`.
* [m-13.0-20160802-NIGHTLY-bullhead.zip](https://download.cyanogenmod.org/get/jenkins/172438/cm-13.0-20160802-NIGHTLY-bullhead.zip) : The cyanogenmod system image. The sha1 is `72e16192136925bb31d31824cd2838cdcb439292`.

**Please, check files sum after downloads.**

This tutorial is based on the [CyanogenMod wiki](https://wiki.cyanogenmod.org/) and my own experience (I use **GNU/Linux Fedora 24** (*all of this instruction can be run in the Live mode of Fedora*)).
  1. Make sure your computer has working [fastboot](https://wiki.cyanogenmod.org/w/Doc:_fastboot_intro) and [adb](https://wiki.cyanogenmod.org/w/Doc:_adb_intro). On Fedora you just need to run `sudo dnf install android-tools`.
  3. Enable [USB debugging](https://wiki.cyanogenmod.org/w/Doc:_developer_options) on the device.
  4. Enable OEM unlock in the Developer options settings on the device.
  5. Connect the device to the computer through USB and click ok on the popup.
  6. From a terminal on a computer, type the following to boot the device into fastboot mode : `adb reboot bootloader` and check if the device respond by typping : `sudo fastboot devices`.
  7. From the same terminal, type the following command to unlock the bootloader : `sudo fastboot flashing unlock`.
  8. Start the device and enable [USB debugging](https://wiki.cyanogenmod.org/w/Doc:_developer_options) again, click ok on the popup.
  9. Restart the device into fastboot mode : `adb reboot bootloader`.
  10. Flash recovery onto your device by `sudo fastboot flash recovery twrp-3.0.2-0-bullhead.img`.
  11. Extract the *bullhead-mda89e-factory-29247942.tgz* file with `tar -axvf bullhead-mda89e-factory-29247942.tgz`.
  12. Jump into the created directory : `cd bullhead-mda89e`.
  13. Extract the *image-bullhead-mda89e.zip* with `unzip image-bullhead-mda89e.zip`.
  14. And go into the previous directory : `cd -`.
  15. Flash the *radio.img* with `sudo fastboot flash radio bullhead-mda89e/radio-bullhead-m8994f-2.6.22.0.56.img`.
  16. Flash the *vendo.img* with `sudo fastboot flash vendor bullhead-mda89e/vendor.img`.
  17. Disconnect the USB, start the *Recovery mode* by pressing twice on "Volume Down" and after the "Power" button, and reconnect the USB.
  18. Copy the *cm-13.0-20160802-NIGHTLY-bullhead.zip* file on your device with `adb push cm-13.0-20160802-NIGHTLY-bullhead.zip /sdcard/`.
  19. Select **Wipe** and then slide the **Factory Reset**.
  20. Select **Install** and navigate to */sdcard* and select the *CyanogenMod.zip* package.
  21. Reboot and ~~enjoy~~ !
