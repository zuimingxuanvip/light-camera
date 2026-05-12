# 📱 AI Beauty Camera - Native App Build Guide

This guide will help you build the native Android and iOS apps from this project.

## 🚀 Quick Start

### Prerequisites

- Node.js 18+
- Java 17+ (for Android)
- Xcode 14+ (for iOS, macOS only)
- Android Studio (for Android)

### 1. Install Dependencies

```bash
cd /workspace/light-camera
npm install
```

### 2. Android Build

```bash
# Build the web assets first
npm run build

# Sync to Android
npm run sync:android

# Open in Android Studio
npm run open:android

# Or build APK directly from command line
cd android
./gradlew assembleDebug
```

The APK will be generated at:
`android/app/build/outputs/apk/debug/app-debug.apk`

### 3. iOS Build (macOS only)

```bash
# Build the web assets first
npm run build

# Sync to iOS
npm run sync:ios

# Open in Xcode
npm run open:ios

# Build from Xcode (recommended) or use xcodebuild
cd ios
xcodebuild -scheme LightCamera -configuration Debug
```

## 📋 Project Structure

```
light-camera/
├── www/                      # Web assets for native apps
│   └── index.html           # Main app (Capacitor optimized)
├── android/                  # Android native project
├── ios/                      # iOS native project (will be created)
├── index.html               # Web version
├── package.json
└── capacitor.config.json    # Capacitor configuration
```

## 🔧 Capacitor Plugins Included

| Plugin | Purpose |
|--------|---------|
| Camera | Photo capture and gallery integration |
| Filesystem | Save photos to device storage |
| Preferences | Save user settings |
| Splash Screen | Beautiful app launch screen |

## 📱 Android Build Details

### Debug Build

```bash
cd android
./gradlew assembleDebug
```

### Release Build

1. Create a keystore:
```bash
keytool -genkey -v -keystore release-key.keystore \
    -alias mykey -keyalg RSA -keysize 2048 -validity 10000
```

2. Add signing config to `android/app/build.gradle`

3. Build:
```bash
cd android
./gradlew assembleRelease
```

Release APK location:
`android/app/build/outputs/apk/release/app-release.apk`

## 🍎 iOS Build Details

### Requirements
- macOS 13+
- Xcode 14+
- Apple Developer account (for App Store)

### Steps

1. Initialize iOS project (if needed):
```bash
npx cap add ios
```

2. Build and open:
```bash
npm run sync:ios
npm run open:ios
```

3. Build from Xcode:
   - Select team signing
   - Choose target device
   - Archive and export

## 🔄 Development Workflow

### Making Changes

1. Edit files in `www/`
2. Sync changes:
```bash
npm run sync:android
# or for iOS
npm run sync:ios
```

3. Rebuild native app

## 📦 Build Commands Summary

| Command | Purpose |
|---------|---------|
| `npm run build` | Copy assets to www/ |
| `npm run sync` | Sync to all platforms |
| `npm run sync:android` | Sync to Android |
| `npm run sync:ios` | Sync to iOS |
| `npm run open:android` | Open Android Studio |
| `npm run open:ios` | Open Xcode |
| `npm run android` | Build debug APK |

## 🎯 Features in Native App

- ✅ Real-time camera integration
- ✅ GPU accelerated beauty effects
- ✅ MediaPipe face detection
- ✅ Photo save to gallery
- ✅ Voice control (when supported)
- ✅ Beautiful UI optimized for mobile
- ✅ Native splash screen

## 🐛 Troubleshooting

### Android Gradle Issues

If you see Gradle errors:
```bash
cd android
./gradlew clean
./gradlew assembleDebug
```

### Camera Permission Issues

Make sure permissions are set correctly in `AndroidManifest.xml`

### iOS Code Signing

Open Xcode, go to project settings, select your development team.

## 📚 References

- [Capacitor Documentation](https://capacitorjs.com/docs)
- [Android Studio Guide](https://developer.android.com/studio)
- [Xcode Guide](https://developer.apple.com/xcode/)
