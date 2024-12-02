# Ensure the assembly is loaded before using any Windows Forms functionality
if (-not ("System.Windows.Forms" -in [AppDomain]::CurrentDomain.GetAssemblies().FullName)) {
    Add-Type -AssemblyName System.Windows.Forms
}

# Helper function for SendKeys
function Invoke-SendKeys {
    param (
        [string]$Keys
    )
    # Simulate keyboard input using SendKeys
    [System.Windows.Forms.SendKeys]::SendWait($Keys)
}

# Helper function for clipboard operations
function Copy-ToClipboard {
    param (
        [string]$Content
    )
    # Copy content to clipboard
    $Content | Set-Clipboard
}

# Open WeChat
function Open-WeChat {
    Write-Host "Opening WeChat..."
    Invoke-SendKeys "^{ESC}"  # Simulate Ctrl+Esc
    Start-Sleep -Seconds 1
    Copy-ToClipboard "WeChat"
    Invoke-SendKeys "^v"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "{ENTER}"
    Start-Sleep -Seconds 3
    Write-Host "WeChat opened successfully."
}

# Search for a contact
function Search-Contact {
    param (
        [string]$ContactName
    )
    Write-Host "Searching for contact: $ContactName"
    Copy-ToClipboard $ContactName
    Invoke-SendKeys "^f"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "^v"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "{ENTER}"
    Write-Host "Contact '$ContactName' selected successfully."
}

# Send a message
function Send-Message {
    param (
        [string]$Message
    )
    Write-Host "Sending message: $Message"
    Copy-ToClipboard $Message
    Invoke-SendKeys "^v"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "{ENTER}"
    Write-Host "Message sent successfully."
}

# Send a file
function Send-File {
    param (
        [string]$FilePath
    )
    if (-not (Test-Path $FilePath)) {
        throw "File $FilePath does not exist."
    }

    $Folder = Split-Path -Parent $FilePath
    $FileName = Split-Path -Leaf $FilePath
    Write-Host "Opening file explorer for $FilePath"
    explorer.exe $Folder
    Start-Sleep -Seconds 5

    Write-Host "Copying file name to clipboard: $FileName"
    Copy-ToClipboard $FileName
    Invoke-SendKeys "^f"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "^v"
    Start-Sleep -Seconds 5
    Invoke-SendKeys "{ENTER}"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "{DOWN}"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "^c"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "%{TAB}"
    Start-Sleep -Milliseconds 500
    Write-Host "Pasting and sending file..."
    Invoke-SendKeys "^v"
    Start-Sleep -Milliseconds 500
    Invoke-SendKeys "{ENTER}"
    Write-Host "File sent successfully."
}

# Export functions for external use
Export-ModuleMember -Function Open-WeChat, Search-Contact, Send-Message, Send-File
