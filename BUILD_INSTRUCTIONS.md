# 📱 AI Beauty Camera - 在本地构建APK

## 方法一：在本地电脑直接构建（推荐）

由于当前服务器环境网络限制，建议将项目下载到本地电脑构建。

### 步骤1：下载项目

下载 `light-camera-complete.tar.gz` 文件到本地电脑

### 步骤2：解压项目

```bash
cd ~/Downloads
tar -xzvf light-camera-complete.tar.gz
cd light-camera
```

### 步骤3：安装依赖

```bash
# 安装Node.js依赖
npm install

# 安装Android SDK（如果没有）
# 确保Android SDK Platform 36已安装
```

### 步骤4：同步资源

```bash
# 同步Web应用到Android
npm run sync:android
```

### 步骤5：构建APK

```bash
# 进入Android目录
cd android

# 清理并构建
./gradlew clean
./gradlew assembleDebug
```

### 步骤6：找到APK

```bash
# APK位置
android/app/build/outputs/apk/debug/app-debug.apk
```

### 步骤7：安装到手机

```bash
# 连接手机或打开模拟器
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

---

## 方法二：使用Android Studio（最简单）

### 步骤1：下载项目并解压

### 步骤2：用Android Studio打开

```bash
# 在Android Studio中
File → Open → 选择 android/ 文件夹
```

### 步骤3：等待Gradle同步

首次打开会下载所有依赖，请耐心等待（可能需要10-30分钟）

### 步骤4：构建APK

在Android Studio中：
- 点击 **Build** 菜单
- 选择 **Build Bundle(s) / APK(s)**
- 选择 **Build APK(s)**
- 等待构建完成

### 步骤5：安装APK

Android Studio会提示APK位置，或者在这里找到：
`android/app/build/outputs/apk/debug/app-debug.apk`

---

## 方法三：使用GitHub Actions自动构建

项目已配置GitHub Actions，会在每次推送时自动构建APK。

### 查看构建产物

1. 访问你的GitHub仓库
2. 点击 **Actions** 标签
3. 查看最新的构建记录
4. 在构建产物中下载APK

---

## 常见问题

### Q: 提示 "Gradle sync failed"
**A**: 检查网络连接，确保可以访问 `dl.google.com` 和 `plugins.gradle.org`

### Q: 提示 "SDK not found"
**A**: 确保Android SDK已安装，可以从Android Studio → SDK Manager安装

### Q: 提示 "Could not resolve com.android..."
**A**: 网络问题，尝试使用VPN或配置代理

### Q: 构建太慢
**A**: 
1. 使用代理
2. 增加Gradle内存：在 `android/gradle.properties` 中设置 `org.gradle.jvmargs=-Xmx4096m`
3. 启用离线模式（如果依赖已下载）

---

## 快速参考命令

```bash
# 完整构建流程
npm install
npm run sync:android
cd android
./gradlew assembleDebug

# 查看APK
ls -lh app/build/outputs/apk/debug/
```

---

## 技术规格

- **Min SDK**: 24 (Android 7.0)
- **Target SDK**: 36 (Android 14+)
- **Kotlin**: 1.9+
- **Gradle**: 8.14.4
- **Capacitor**: 8.3.3

---

## 下一步

1. ✅ 构建APK
2. 🔲 安装到手机测试
3. 🔲 发布到应用商店（可选）

祝你构建成功！🎉
