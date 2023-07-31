# filedp15
View the file protection classes for iOS files and directories updated for iOS 15.  
Verified on iPhoneX palear1n iOS 15.6

All code copyright of the respective owners.  
Updates to work on iOS 15 done by me.

## Installation
- Grab the packaged .deb and push to device via scp.
- Install the .deb specifying the inst dir because of rootless JB.
```
$ dpkg -i com.bensh.filedp15_1.0_iphoneos-arm64.deb
```
- Find the binary, then run, or add to path
```
dpkg -L com.bensh.filedp15  
/var/jb/usr/bin/filedp15  

$ find / -name filedp15 -print 2>/dev/null
/private/preboot/XXXXXXXXXXXXXXXXXXXXXXXXXXX/jb-XXXXXX/procursus/var/root/filedp15
```

## Usage
```
iPhone:~ root# filedp15
Usage: FileDP [-f/-d] [Full path to file/directory] 

iPhone:~ root# filedp15 -d /private/var/mobile/Containers/Data/Application/CBDF993D-7908-40D3-BE42-F553AEDC6FB7
file name is:/private/var/mobile/Containers/Data/Application/CBDF993D-7908-40D3-BE42-F553AEDC6FB7/Library/Caches/com.crashlytics.data/com.test.myapp/v5/sdk.log - protection class:NSFileProtectionCompleteUntilFirstUserAuthentication
file name is:/private/var/mobile/Containers/Data/Application/CBDF993D-7908-40D3-BE42-F553AEDC6FB7/Library/Caches/com.crashlytics.data/com.test.myapp/v5/reports/metadata.clsrecord - protection class:NSFileProtectionNone

```

## Build
Clone the git, and run make from the parent dir - requires [theos](https://theos.dev/docs/installation-macos) and updated sdks.
```
filedp15$ make package FINALPACKAGE=1 THEOS_PACKAGE_SCHEME=rootless
==> Notice: Build may be slow as Theos isn’t using all available CPU cores on this computer. Consider upgrading GNU Make: https://theos.dev/docs/parallel-building
> Making all for tool filedp15…
==> Compiling main.m (arm64)…
==> Linking tool filedp15 (arm64)…
==> Generating debug symbols for filedp15…
==> Stripping filedp15 (arm64)…
==> Merging tool filedp15…
==> Signing filedp15…
> Making stage for tool filedp15…
dm.pl: building package `com.bensh.filedp15:iphoneos-arm64' in `./packages/com.bensh.filedp15.0_iphoneos-arm64.deb'
```
