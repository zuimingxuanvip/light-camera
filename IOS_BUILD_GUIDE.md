# 📱 AI Beauty Camera - iOS 版本构建指南

## 🎯 前置要求

构建iOS版本需要：

- **Mac电脑** (Intel或Apple Silicon)
- **Xcode 14+** (最新版本推荐)
- **Xcode Command Line Tools**
- **Apple Developer Account** (可选，用于发布到App Store)
- **Node.js 18+**
- **npm** 或 **yarn**

## 📋 完整构建步骤

### 步骤1: 准备项目

```bash
# 如果你还没有下载项目，先下载完整项目包
# light-camera-v1.0.tar.gz

# 解压项目
tar -xzvf light-camera-v1.0.tar.gz
cd light-camera
```

### 步骤2: 安装依赖

```bash
# 安装npm依赖
npm install --legacy-peer-deps

# 构建Web资源
npm run build
```

### 步骤3: 添加iOS平台

```bash
# 初始化iOS平台 (如果还没有)
npx cap add ios

# 同步Web资源到iOS
npx cap sync ios
```

### 步骤4: 打开Xcode项目

```bash
# 打开Xcode项目
npx cap open ios
```

Xcode会自动打开项目。

### 步骤5: 在Xcode中配置项目

#### 5.1 选择开发团队

1. 在Xcode左侧导航栏，点击项目（顶层）
2. 在 **TARGETS** 下选择 **App**
3. 选择 **Signing & Capabilities** 标签
4. 勾选 **Automatically manage signing**
5. 选择你的 **Team**（如果没有，需要先登录Apple Developer账户）

#### 5.2 配置Bundle Identifier

在 **Signing** 部分，确认：
- Bundle Identifier: `com.lightcamera.app` (或你自己的ID)
- Team: 选择你的开发团队

#### 5.3 配置权限

确保Info.plist中有以下权限：

- `NSCameraUsageDescription` (相机访问权限)
- `NSMicrophoneUsageDescription` (麦克风访问权限)
- `NSPhotoLibraryAddUsageDescription` (保存照片权限)

**说明**：capacitor已经配置好了这些权限。

### 步骤6: 选择运行设备

在Xcode顶部工具栏：
1. 选择模拟器（例如：iPhone 15 Pro）
2. 或者连接你的iOS真机设备

### 步骤7: 运行应用

1. 点击Xcode左上角的 **▶️ 运行** 按钮
2. 等待编译和安装（首次可能需要几分钟）
3. 应用会自动在模拟器或真机上启动

### 步骤8: 测试相机功能

⚠️ **注意**：
- 模拟器无法使用真实相机
- 建议在真机上测试完整功能

在真机上测试：
1. 确保你的iOS设备已连接到Mac
2. 在Xcode中选择你的设备
3. 点击运行

## 🎨 iOS版本特性

### ✅ 已包含的功能

- 完整的Web美颜功能
- 原生相机访问
- 照片保存到相册
- 原生性能优化
- iOS风格UI适配

### 📷 权限请求

iOS应用会自动请求：
- 📸 相机访问权限
- 🎤 麦克风访问权限
- 📷 相册保存权限

### 🔋 性能优化

- WebView硬件加速
- 优化的视频预览
- 电池友好的渲染

## 🏗️ 项目结构

```
light-camera/
├── www/
│   └── index.html              # 主Web应用
├── ios/
│   └── App/
│       ├── App/AppDelegate.swift
│       ├── Assets.xcassets/
│       └── Info.plist
└── capacitor.config.json       # Capacitor配置
```

## 🔧 常见问题解决

### Q: 提示 "No signing certificate found"

**A**: 
1. 打开Xcode → Preferences → Accounts
2. 添加你的Apple ID
3. 在项目设置中选择Team
4. Xcode会自动创建证书

### Q: 真机无法安装

**A**:
1. 确保设备已信任开发者
2. 在iOS设备 → 设置 → 通用 → VPN与设备管理
3. 点击你的开发者证书 → 信任

### Q: 相机不工作

**A**:
1. 确保在真机上测试
2. 检查权限是否已授予
3. 查看Xcode控制台日志

### Q: Pods错误

**A**:
```bash
cd ios/App
pod install
```

### Q: 如何更新Web资源

```bash
# 修改www/中的文件
npm run build
npx cap sync ios
# 然后在Xcode中重新运行
```

## 📤 发布到App Store (可选)

### 准备发布

1. 在 **Apple Developer Portal** 中创建App
2. 配置App信息、截图、描述
3. 配置证书和Provisioning Profile

### 构建Release版本

在Xcode中：
1. 选择 **Any iOS Device**
2. Product → Archive
3. 在 **Organizer** 中选择Archive
4. 点击 **Distribute App**
5. 按照向导完成发布

## 📊 技术规格

### 兼容版本

- **最低iOS版本**: iOS 13.0
- **推荐iOS版本**: iOS 14.0+
- **测试设备**: iPhone 8+, iPad 5th Gen+

### 设备支持

| 设备类型 | 支持 |
|---------|------|
| iPhone | ✅ 完全支持 |
| iPad | ✅ 完全支持 |
| iPod Touch | ✅ 支持 |
| Apple Watch | ❌ 不支持 |

## 📝 快速参考命令

```bash
# 初始化iOS平台
npx cap add ios

# 同步资源
npx cap sync ios

# 打开Xcode
npx cap open ios

# 更新资源后重新同步
npm run build
npx cap sync ios
```

## 🎉 下一步

1. ✅ 在模拟器中测试
2. 🔲 在真机上测试完整功能
3. 🔲 优化UI适配iOS设备
4. 🔲 发布到App Store

---

**提示**：完整的Android和iOS项目已准备完毕！iOS版本主要需要在Mac上的Xcode中构建和测试。
