# WeChatAutomation
PowerShell 模块，用于自动化处理微信任务，如打开微信、搜索联系人、发送消息和发送文件。

## 功能

- **Open-WeChat**：打开微信应用程序。
- **Search-Contact**：通过名称搜索微信联系人。
- **Send-Message**：向联系人发送消息。
- **Send-File**：向联系人发送文件。

---

## 安装

### 方法 1：通过 GitHub 安装

1. 克隆仓库：

   ```powershell
   git clone https://github.com/yourusername/WeChatAutomation.git
   ```

2. 导入模块：
   ```powershell
   Import-Module .\WeChatAutomation\WeChatAutomation.psm1
   ```

### 方法 2：直接下载并运行

1. 下载 `WeChatAutomation.psm1` 文件。
2. 在 PowerShell 中运行以下命令：
   ```powershell
   Import-Module .\WeChatAutomation.psm1
   ```

---

## 使用说明

### 1. 打开微信

```powershell
Open-WeChat
```

**描述**：打开微信应用程序，并等待其加载完成。

---

### 2. 搜索联系人

```powershell
Search-Contact -ContactName "文件传输助手"
```

**参数**：

- `ContactName`：要搜索的联系人名称。

**描述**：在微信中搜索指定联系人。

---

### 3. 发送消息

```powershell
Send-Message -Message "Hello, this is a test message!"
```

**参数**：

- `Message`：要发送的文本消息内容。

**描述**：向当前打开的聊天窗口发送消息。

---

### 4. 发送文件

```powershell
Send-File -FilePath "C:\path\to\file.txt"
```

**参数**：

- `FilePath`：要发送的文件路径。

**描述**：通过微信发送指定文件。

---

## 先决条件

- PowerShell 5.1 或更高版本。
- Windows 操作系统。
- 微信已安装，并在 `PATH` 环境变量中可用。
- `System.Windows.Forms` 程序集用于模拟键盘输入。

---

## 贡献

如果你有改进建议或发现了问题，欢迎通过以下方式参与贡献：

1. 提一个 [Issue](https://github.com/kiochan/wechat-automation/issues)。
2. 欢迎提交 Pull Request。

---

## 许可证

本模块基于 [MIT License](LICENSE) 开源。

---

## 示例

以下是完整的使用示例：

```powershell
# 导入模块
Import-Module .\WeChatAutomation.psm1

# 打开微信
Open-WeChat

# 搜索联系人
Search-Contact -ContactName <测试用户>

# 发送消息
Send-Message -Message <你的消息>

# 发送文件
Send-File -FilePath <文件地址>
```
