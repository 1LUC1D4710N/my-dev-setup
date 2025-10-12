# 🛠️ Tools & Software Setup Guide

Complete documentation of all tools, software, and configurations used in this development environment.

## 📋 Table of Contents

- [Core Development Tools](#core-development-tools)
- [Python Ecosystem](#python-ecosystem)
- [Build Tools & Compilers](#build-tools--compilers)
- [Version Control](#version-control)
- [IDEs & Editors](#ides--editors)
- [Command Line Tools](#command-line-tools)
- [Installation Order](#installation-order)
- [Configuration](#configuration)

---

## 🎯 Core Development Tools

### Python 3.14.0
**Official Python Interpreter** - Latest stable release

- **Download:** [python.org/downloads](https://www.python.org/downloads/)
- **Installation Path:** `C:\Users\<USERNAME>\AppData\Local\Programs\Python\Python314`
- **Why This Version:** Latest features, performance improvements, modern syntax
- **Configuration:**
  - ✅ Add to PATH
  - ✅ Install pip
  - ✅ Install tcl/tk
  - ✅ Install Python test suite

**Verification:**
```powershell
python --version  # Should show: Python 3.14.0
pip --version     # Should show: pip 25.2
```

---

### Git 2.51.0
**Distributed Version Control System**

- **Download:** [git-scm.com/downloads](https://git-scm.com/downloads)
- **Installation Path:** `C:\Program Files\Git`
- **Features Used:**
  - Git Bash (Unix-like shell)
  - Git GUI (optional graphical interface)
  - Git Credential Manager

**Configuration:**
```powershell
git config --global user.name "<YOUR_NAME>"
git config --global user.email "<YOUR_EMAIL>"
git config --global init.defaultBranch main
git config --global core.autocrlf true  # Windows line endings
```

**GitHub CLI (gh):**
```powershell
# Authenticate with GitHub
gh auth login

# Select: GitHub.com → HTTPS → Login with browser
```

---

### Visual Studio Code 1.105.0
**Lightweight Code Editor**

- **Download:** [code.visualstudio.com](https://code.visualstudio.com/)
- **Installation:** System installer (for all users) or User installer
- **Key Features:**
  - Integrated terminal
  - Extension marketplace
  - Git integration
  - IntelliSense
  - Debugging

**Essential Settings:**
See [EXTENSIONS.md](./EXTENSIONS.md) for recommended extensions and `settings.json` configuration.

---

### Visual Studio Community 2026 Insider
**Full-Featured IDE**

- **Version:** 18.0.0 Build 11109.219
- **Download:** [visualstudio.microsoft.com/vs/preview/](https://visualstudio.microsoft.com/vs/preview/)
- **Workloads Installed:**
  - ✅ **Desktop development with C++**
    - MSVC v143 - VS 2022 C++ x64/x86 build tools (Latest)
    - Windows 11 SDK (10.0.26100.0)
    - C++ CMake tools for Windows
    - C++ profiling tools
    - C++ AddressSanitizer
  - ✅ **Python development**
    - Python language support
    - Python web support
    - Python native development tools

**Key Features:**
- Advanced debugging and profiling
- Visual designers
- Team collaboration
- Azure integration
- GitHub Copilot support

**Shared with VS Code:**
- Python interpreter
- Git configuration
- Build tools (MSVC, CMake)
- GitHub Copilot subscription

---

## 🐍 Python Ecosystem

### pip 25.2
**Python Package Installer**

- Comes with Python installation
- **Upgrade:** `python -m pip install --upgrade pip`

### setuptools 80.9.0
**Package Building Tools**

- **Installation:** `pip install setuptools`
- **Purpose:** Building and distributing Python packages

### wheel 0.45.1
**Binary Package Format**

- **Installation:** `pip install wheel`
- **Purpose:** Faster installation of packages

### Key Python Packages (125+ total)

**Data Science Core:**
- numpy==2.3.3
- pandas==2.3.3
- matplotlib==3.10.7
- scikit-learn==1.7.2
- scipy==1.15.3

**Jupyter Ecosystem:**
- jupyter==1.1.1
- notebook==7.4.6
- jupyterlab==4.4.3
- ipython==9.6.0
- ipykernel==6.30.2

**Testing & Quality:**
- pytest==8.4.2
- coverage==7.7.4
- black==24.10.0
- ruff==0.9.4

**Web Development:**
- flask==3.1.0
- fastapi==0.132.5
- requests==2.32.3

**See full list:** `requirements.txt` in repository root

---

## 🔨 Build Tools & Compilers

### MSVC Compiler v14.50.35615
**Microsoft Visual C++ Compiler**

- **Installed with:** Visual Studio 2026
- **Location:** `C:\Program Files\Microsoft Visual Studio\2026\Community\VC\Tools\MSVC\14.50.35615`
- **Purpose:** Compile C/C++ extensions for Python packages
- **Verification:**
  ```powershell
  cl  # Should show compiler version
  ```

### Windows SDK 10.0.26100.0
**Windows Development Kit**

- **Installed with:** Visual Studio 2026
- **Purpose:** Windows API headers and libraries
- **Components:**
  - Windows headers
  - Windows libraries
  - Debugging tools

### CMake 4.1.2
**Cross-Platform Build System**

- **Download:** [cmake.org/download](https://cmake.org/download/)
- **Installation Path:** `C:\Program Files\CMake`
- **Purpose:** Building C++ projects and Python packages with C extensions
- **Verification:**
  ```powershell
  cmake --version  # Should show: cmake version 4.1.2
  ```

**Configuration:**
- ✅ Add to system PATH
- ✅ Create desktop shortcut (optional)

---

## 📦 Package Managers

### Winget (Windows Package Manager)
**Microsoft's Official Package Manager**

- **Pre-installed** on Windows 11
- **Usage:**
  ```powershell
  winget search <package>
  winget install <package>
  winget upgrade --all
  ```

### Chocolatey (Optional)
**Community Package Manager for Windows**

- **Installation:** [chocolatey.org/install](https://chocolatey.org/install)
- **Usage:**
  ```powershell
  choco install <package>
  choco upgrade all
  ```

---

## 💻 Command Line Tools

### PowerShell 7.5.3
**Modern Shell and Scripting Language**

- **Download:** [github.com/PowerShell/PowerShell/releases](https://github.com/PowerShell/PowerShell/releases)
- **Installation Path:** `C:\Program Files\PowerShell\7`
- **Features:**
  - Cross-platform
  - Modern syntax
  - Better performance than Windows PowerShell 5.1
  - Git integration (posh-git)

**Set as Default in VS Code:**
```json
{
  "terminal.integrated.defaultProfile.windows": "PowerShell"
}
```

### Windows Terminal
**Modern Terminal Application**

- **Installation:** Microsoft Store or `winget install Microsoft.WindowsTerminal`
- **Features:**
  - Multiple tabs
  - Custom profiles
  - GPU acceleration
  - Unicode support

---

## 🔧 Version Control Tools

### Git Credential Manager
**Secure Git Authentication**

- **Included with:** Git for Windows
- **Purpose:** Securely store GitHub credentials
- **Supports:** GitHub, Azure DevOps, GitLab, Bitbucket

### GitHub CLI (gh)
**GitHub Command Line Tool**

- **Installation:** `winget install GitHub.cli` or comes with Git
- **Authentication:** `gh auth login`
- **Common Commands:**
  ```powershell
  gh repo view       # View repository
  gh pr list         # List pull requests
  gh issue create    # Create issue
  gh copilot explain # Get Copilot help
  ```

---

## 📥 Installation Order

### Recommended Installation Sequence

1. **Windows Updates**
   - Update to latest Windows 11 version
   - Install all updates and restart

2. **Visual Studio 2026 Insider**
   - Install first for C++ build tools
   - Select C++ and Python workloads
   - Restart after installation

3. **Python 3.14.0**
   - Download from python.org
   - Add to PATH during installation
   - Verify with `python --version`

4. **Git for Windows**
   - Install with default options
   - Configure user name and email
   - Authenticate with GitHub

5. **PowerShell 7**
   - Install from GitHub releases
   - Set as default shell in VS Code

6. **Visual Studio Code**
   - Install system-wide or user installer
   - Install extensions (use provided script)

7. **CMake**
   - Install and add to PATH
   - Verify with `cmake --version`

8. **Python Packages**
   - Run `.\setup-python-env.ps1`
   - Or manually: `pip install -r requirements.txt`

---

## ⚙️ Configuration Files

### Git Configuration
**Location:** `~\.gitconfig`

```ini
[user]
    name = <YOUR_NAME>
    email = <YOUR_EMAIL>
[init]
    defaultBranch = main
[core]
    autocrlf = true
    editor = code --wait
[credential]
    helper = manager
```

### Python Configuration
**pip Configuration:** `~\AppData\Roaming\pip\pip.ini`

```ini
[global]
timeout = 60
```

### VS Code Settings
**Location:** `%APPDATA%\Code\User\settings.json`

See [EXTENSIONS.md](./EXTENSIONS.md) for recommended settings.

---

## 🔍 Verification Commands

Run these to verify your installation:

```powershell
# Python
python --version
pip --version

# Git
git --version
gh --version

# Build Tools
cmake --version
cl  # MSVC compiler (run from Developer Command Prompt)

# PowerShell
$PSVersionTable.PSVersion

# Node.js (if installed)
node --version
npm --version
```

---

## 🚨 Troubleshooting

### Python Not Found
```powershell
# Add to PATH manually:
# 1. Open Settings → System → About → Advanced system settings
# 2. Environment Variables → Path → Edit
# 3. Add: C:\Users\<USERNAME>\AppData\Local\Programs\Python\Python314
```

### pip Install Fails
```powershell
# Upgrade pip
python -m pip install --upgrade pip

# Use --user flag
pip install --user <package>

# Check Python installation
python -m ensurepip --upgrade
```

### MSVC Compiler Not Found
```powershell
# Run from Developer Command Prompt for VS 2026:
# Start → Developer Command Prompt for VS 2026

# Or set environment manually:
# Run: "C:\Program Files\Microsoft Visual Studio\2026\Community\Common7\Tools\VsDevCmd.bat"
```

### Git Authentication Issues
```powershell
# Reconfigure Git Credential Manager
git credential-manager configure

# Re-authenticate with GitHub
gh auth login --web
```

---

## 🔄 Keeping Tools Updated

### Windows Updates
```powershell
# Check for updates
winget upgrade --all

# Update specific tool
winget upgrade Python.Python.3.14
```

### Python Packages
```powershell
# Update pip
python -m pip install --upgrade pip

# Update all packages
pip list --outdated
pip install --upgrade <package>
```

### VS Code Extensions
- Ctrl+Shift+X → Click "..." → "Update All Extensions"
- Or enable auto-update in settings

---

## 📚 Additional Resources

- [Python Documentation](https://docs.python.org/3/)
- [Git Documentation](https://git-scm.com/doc)
- [VS Code Documentation](https://code.visualstudio.com/docs)
- [CMake Documentation](https://cmake.org/documentation/)
- [PowerShell Documentation](https://learn.microsoft.com/powershell/)

---

## 🎯 Quick Reference Card

```
Python:     python --version
pip:        pip install <package>
Git:        git clone <url>
GitHub:     gh repo view
VS Code:    code .
CMake:      cmake --version
PowerShell: pwsh
```

**Last Updated:** October 12, 2025
