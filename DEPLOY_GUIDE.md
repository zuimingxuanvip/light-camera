# 补光相机 - GitHub Pages 部署指南

## 🚀 快速部署（推荐）

由于环境限制，请按照以下步骤手动部署到你的GitHub账户：

### 第一步：创建GitHub仓库

1. 访问 [GitHub](https://github.com) 并登录你的账户
2. 点击右上角的 **"+"** → **"New repository"**
3. 填写信息：
   - **Repository name**: `light-camera`
   - **Description**: `✨ 智能美颜相机应用 - 支持实时补光、语音控制和多种美颜风格`
   - 选择 **Public**（公开仓库，GitHub Pages需要Public）
   - ✅ 勾选 **"Add a README file"**
4. 点击 **"Create repository"**

### 第二步：上传代码

**方法A：使用GitHub网页上传（最简单）**

1. 进入刚创建的仓库
2. 点击 **"Add file"** → **"Upload files"**
3. 拖拽上传以下文件：
   - `index.html` （从 `/workspace/light-camera/www/index.html` 获取）
   - `README.md` （从 `/workspace/light-camera/README.md` 获取）
   - `.nojekyll` （新建一个空文件）
4. 点击 **"Commit changes"**

**方法B：使用Git命令**

```bash
# 克隆仓库
git clone https://github.com/YOUR_USERNAME/light-camera.git

# 进入目录
cd light-camera

# 复制文件
cp /workspace/light-camera/www/index.html .
cp /workspace/light-camera/README.md .
touch .nojekyll

# 提交
git add .
git commit -m "添加补光相机应用"
git push origin main
```

### 第三步：启用GitHub Pages

1. 进入仓库 **Settings**（设置）
2. 左侧菜单找到 **"Pages"**
3. 配置：
   - **Source**: 选择 **"Deploy from a branch"**
   - **Branch**: 选择 **"main"**（或 `master`），文件夹选择 **"/ (root)"**
4. 点击 **"Save"**
5. 等待1-2分钟部署完成

### 第四步：访问应用

1. 回到仓库首页
2. 点击 **"About"** 右边的 **⚙️** 图标
3. 勾选 **"Use your GitHub Pages website"**
4. 你会在About部分看到链接，格式为：
   ```
   https://YOUR_USERNAME.github.io/light-camera/
   ```
5. 在手机或电脑浏览器中打开这个链接即可使用！

---

## 📱 手机访问

部署完成后，你可以：

1. **在手机浏览器中打开**：`https://YOUR_USERNAME.github.io/light-camera/`
2. **点击"开启相机"**，授权相机权限
3. **享受美颜拍照！**

---

## ✨ 功能亮点

### 🎨 三种美颜风格
- 🏯 **古代风**：复古怀旧色调
- 💄 **现代风**：清新自然（默认）
- 🤖 **科技风**：赛博朋克风格

### 💡 专业补光
- 4种预设色温
- 亮度10%-100%调节
- 自定义颜色

### 🎤 语音控制
- "拍照"、"茄子"即时拍摄
- "321"、"开始"倒计时

---

## 🔧 自定义域名（可选）

如果你有自定义域名：

1. 在 **Settings** → **Pages** → **Custom domain** 中输入你的域名
2. 在你的域名服务商处添加CNAME记录：
   - **类型**：CNAME
   - **主机记录**：`light-camera`（或 `@`）
   - **记录值**：`YOUR_USERNAME.github.io`
3. 勾选 **"Enforce HTTPS"**

---

## 🐛 常见问题

### Q: 相机权限被拒绝？
**A**: 在浏览器设置中允许相机权限，具体步骤在应用中已详细说明。

### Q: 语音控制不工作？
**A**: 确保使用支持Web Speech API的浏览器（Chrome推荐）。

### Q: 照片保存在哪里？
**A**: 点击拍照后，照片会自动下载到你的设备。

---

## 📞 获取帮助

如果部署过程中遇到问题：
1. 查看 [GitHub Pages文档](https://docs.github.com/cn/pages)
2. 提交 [Issue](https://github.com/YOUR_USERNAME/light-camera/issues)
3. 联系我

---

## 🎉 恭喜！

部署成功后，你可以：
- ✅ 随时随地通过链接访问
- ✅ 在手机上使用完整功能
- ✅ 分享给朋友一起体验
- ✅ 继续开发和优化

---

**项目地址**：`https://github.com/YOUR_USERNAME/light-camera`

祝你使用愉快！✨
