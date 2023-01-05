## BiTGApps Overlays

These overlays are required since `SDK29` to support some of the Google features.

## Creation process

1. Set up the folder structure with the required resources
2. Set up the `AndroidManifest.xml` to target proper Android version
3. Build the overlay's APK: `aapt p -M AndroidManifest.xml -S res -I android.jar -F overlay.apk.un`
4. Sign the unaligned APK: `jarsigner -keystore keystore.jks overlay.apk.un KEYNAME`
5. Zipalign the APK: `zipalign 4 overlay.apk.un overlay.apk`
