# 🎨 Visual Studio 2026 Insider Setup

Configuration and extensions for Visual Studio Community 2026 Insider.

## 📋 Installation Information

- **Version:** Visual Studio Community 2026 (18.0.0 Insiders Build 11109.219)
- **Install Date:** October 12, 2025
- **Installation Path:** `C:\Program Files\Microsoft Visual Studio\18\Insiders`

## 🔧 Installed Workloads

### Desktop Development with C++
- ✅ MSVC v143 - VS 2026 C++ x64/x86 build tools (14.50.35615)
- ✅ Windows SDK 10.0.26100.0
- ✅ C++ CMake tools for Windows
- ✅ C++ core features
- ✅ Just-In-Time debugger

## 🎯 Key Features Configured

### GitHub Integration
- ✅ GitHub Copilot - Active and authenticated
- ✅ Git source control integration
- ✅ Connected to account: 1LUC1D4710N

### Python Support
- Uses system Python 3.14.0
- Access to all pip packages (125+)
- IntelliSense for Python
- Python debugging support

### Code Quality
- Code analysis tools
- IntelliSense
- Live Share capabilities
- Diagnostic tools

## 📦 Extensions

To view installed extensions:
1. Open Visual Studio 2026
2. **Extensions** → **Manage Extensions**
3. Go to **Installed** tab

Common extensions for Python development:
- Python Tools for Visual Studio (PTVS)
- GitHub Extension for Visual Studio
- Visual Studio IntelliCode
- Web Essentials

## ⚙️ Exporting Your Settings

### To Export Settings:
1. Open Visual Studio 2026
2. Go to **Tools** → **Import and Export Settings**
3. Select **"Export selected environment settings"**
4. Choose settings to export:
   - ✅ General Settings
   - ✅ Text Editor
   - ✅ Environment
   - ✅ Projects and Solutions
   - ✅ Source Control
5. Save to: `vs2026-settings.vssettings`
6. Place in this directory

### To Import Settings:
1. Open Visual Studio 2026
2. Go to **Tools** → **Import and Export Settings**
3. Select **"Import selected environment settings"**
4. Browse to `vs2026-settings.vssettings`
5. Click **Next** and **Finish**

## 🔄 Settings File

Once you export your settings, the file will appear as:
- `vs2026-settings.vssettings` - Your complete IDE configuration

This file contains:
- Editor preferences
- Keyboard shortcuts
- Window layouts
- Theme settings
- Extension configurations
- Tool window positions

## 🤝 Integration with VS Code

While VS Code and Visual Studio 2026 use different settings formats, they **share**:

| Shared Resource | Location |
|----------------|----------|
| **Python Installation** | `C:\Users\<USERNAME>\AppData\Local\Programs\Python\Python314` |
| **Python Packages** | Same pip installation (125+ packages) |
| **Git Configuration** | `~/.gitconfig` |
| **Git Repositories** | Any local repos |
| **MSVC Compiler** | `C:\Program Files\Microsoft Visual Studio\18\Insiders\VC\Tools\MSVC` |
| **Windows SDK** | `C:\Program Files (x86)\Windows Kits\10` |
| **CMake** | `C:\Program Files\CMake` |
| **GitHub Account** | Copilot subscription |

## 🎨 Recommended Settings

### Theme
- Dark theme (default for Visual Studio 2026)
- Color-coded syntax highlighting

### Editor
- Font: Cascadia Code or Consolas
- Font Size: 10-12pt
- Line numbers: Enabled
- Word wrap: Enabled for text files

### Debugging
- Break on exceptions: Configured per project
- IntelliTrace: Enabled
- Diagnostic tools: Enabled

## 📝 Notes

- Visual Studio settings are stored in: `%LOCALAPPDATA%\Microsoft\VisualStudio\18.0_82abd402`
- Settings can be synced via Microsoft Account (Tools → Options → Environment → Synchronized Settings)
- Extensions are stored separately from VS Code extensions

## 🔗 Useful Links

- [Visual Studio Documentation](https://docs.microsoft.com/visualstudio/)
- [Visual Studio Marketplace](https://marketplace.visualstudio.com/)
- [Visual Studio Keyboard Shortcuts](https://docs.microsoft.com/visualstudio/ide/default-keyboard-shortcuts-in-visual-studio)

---

**To complete this setup**, please export your settings using the instructions above and save the `.vssettings` file in this directory.
