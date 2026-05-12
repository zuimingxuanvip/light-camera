#!/bin/bash

# AI Beauty Camera - Android Build Script
# This script helps you build the native Android app

echo "============================================="
echo "✨ AI Beauty Camera - Android Build"
echo "============================================="

cd "$(dirname "$0")"

echo ""
echo "📦 Step 1: Preparing web assets..."
cp -f index.html www/index.html
echo "✅ Web assets copied to www/"

echo ""
echo "🔄 Step 2: Syncing with Capacitor..."
npx cap sync android
echo "✅ Sync complete"

echo ""
echo "🏗️  Step 3: Building Android APK..."
cd android

if [ -x "$(command -v gradlew)" ]; then
    chmod +x gradlew
    ./gradlew assembleDebug
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 Build successful!"
        echo ""
        APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
        if [ -f "$APK_PATH" ]; then
            echo "📱 APK location:"
            echo "   $(pwd)/$APK_PATH"
            echo ""
            echo "🚀 Next steps:"
            echo "   1. Install to device: adb install $APK_PATH"
            echo "   2. Or open in Android Studio: ../npm run open:android"
        fi
    else
        echo "❌ Build failed"
        echo "💡 Try opening in Android Studio for more details"
    fi
else
    echo "⚠️  Gradle wrapper not found"
    echo "💡 Please open in Android Studio to build"
fi

cd ..
echo ""
echo "✅ Done!"
