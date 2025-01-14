# WeChat Automation
A PowerShell module for automating common WeChat tasks such as opening the application, searching contacts, sending messages, and sending files.

---

## Features

- **Open-WeChat**: Opens the WeChat application.
- **Search-Contact**: Searches for a WeChat contact by name.
- **Send-Message**: Sends a text message to a contact.
- **Send-File**: Sends a file to a contact.

---

## Installation

### Method 1: Install via GitHub

1. Clone the repository:

   ```powershell
   git clone https://github.com/yourusername/WeChatAutomation.git
   ```

2. Import the module:
   ```powershell
   Import-Module .\WeChatAutomation\WeChatAutomation.psm1
   ```

### Method 2: Download and Import

1. Download the `WeChatAutomation.psm1` file.
2. Import the module in PowerShell:
   ```powershell
   Import-Module .\WeChatAutomation.psm1
   ```

---

## Usage

### 1. Open WeChat

```powershell
Open-WeChat
```

**Description**: Launches the WeChat application and waits for it to fully load.

---

### 2. Search for a Contact

```powershell
Search-Contact -ContactName "File Transfer"
```

**Parameters**:

- `ContactName`: The name of the contact to search for.

**Description**: Searches for a specific contact in WeChat.

---

### 3. Send a Message

```powershell
Send-Message -Message "Hello, this is a test message!"
```

**Parameters**:

- `Message`: The text message to send.

**Description**: Sends a message to the currently open chat window.

---

### 4. Send a File

```powershell
Send-File -FilePath "C:\path\to\file.txt"
```

**Parameters**:

- `FilePath`: The path of the file to send.

**Description**: Sends the specified file to the contact.

---

## Prerequisites

- **PowerShell 5.1 or later**: Required to use the module.
- **Windows Operating System**: The module is designed for Windows.
- **WeChat Installed**: Ensure WeChat is installed and accessible in your system's `PATH`.
- **System.Windows.Forms**: Used to simulate keyboard inputs.

---

## Contribution

Contributions are welcome! If you have suggestions or find issues, please:

1. Open an [Issue](https://github.com/yourusername/wechat-automation/issues).
2. Pull Requests are welcomed!

---

## License

This module is open-sourced under the [MIT License](LICENSE).

---

## Examples

Here’s a complete usage example:

```powershell
# Import the module
Import-Module .\WeChatAutomation.psm1

# Open WeChat
Open-WeChat

# Search for a contact
Search-Contact -ContactName <Contact-Name>

# Send a message
Send-Message -Message "Testing automated message sending!"

# Send a file
Send-File -FilePath <File-Path>
```

---

Feel free to replace the placeholder links (e.g., GitHub repository URL) with your actual project details. Let me know if further customization is needed!
