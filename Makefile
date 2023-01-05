# This file is part of The BiTGApps Project

all: BUILD SIGN ALIGN

BUILD:
	aapt p -M AndroidManifest.xml -S res -I android.jar -F overlay.apk.un
SIGN:
	jarsigner -keystore keystore.jks overlay.apk.un KEYNAME
ALIGN:
	zipalign 4 overlay.apk.un overlay.apk

clean:
	rm -f overlay.apk overlay.apk.un
