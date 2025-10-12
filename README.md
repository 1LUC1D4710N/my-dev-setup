# 🚀 My Windows Development Environment Setup

A clean, reproducible development environment for Python, Data Science, and modern web development on Windows.

## 🎁 Why This Repository?

**Save Hours of Setup Time!** This repository provides a complete, tested, working Python + Data Science development environment that takes **15-30 minutes** to set up instead of **4-6 hours** of manual configuration.

### ✨ What You Get

1. **⏰ Ready-to-Use Development Environment**
   - Complete Python 3.14 setup guide
   - Visual Studio 2026 + VS Code configuration
   - Data science stack (NumPy, Pandas, scikit-learn, Jupyter, matplotlib)
   - Saves HOURS of setup time!

2. **🚀 Automated Installation Scripts**
   - `install-vscode-extensions.ps1` → 31 extensions in one click
   - `setup-python-env.ps1` → 125+ packages automatically installed
   - `copy-to-vs2026.ps1` → Easy VS 2026 integration
   - No manual typing required!

3. **✅ Curated & Tested Tool Lists**
   - 31 VS Code extensions (Python, AI, Data Science, Code Quality)
   - 125+ Python packages (all tested and working)
   - GitHub Copilot integration ready
   - Proven setup - no guesswork!

4. **📖 Comprehensive Documentation**
   - Step-by-step installation guides
   - VS Code ↔ VS 2026 sync methods explained
   - Troubleshooting tips included
   - Beginner-friendly instructions

5. **🔄 Cross-IDE Compatibility**
   - Works with VS Code
   - Works with Visual Studio 2026
   - Shared Python/Git/build tools
   - One setup, two powerful IDEs!

### 👥 Perfect For

- ✅ **Python Beginners** - Get a professional setup without confusion
- ✅ **Data Scientists** - Full stack ready: Jupyter, NumPy, Pandas, matplotlib, scikit-learn
- ✅ **Students** - Everything needed for coursework and projects
- ✅ **Developers Switching to Windows** - Complete Windows Python development setup
- ✅ **Team Leads** - Standardize team development environments
- ✅ **Anyone Reinstalling Their System** - Restore entire dev environment quickly

### ⚡ Quick Start

```powershell
git clone https://github.com/1LUC1D4710N/my-dev-setup.git
cd my-dev-setup
.\install-vscode-extensions.ps1
.\setup-python-env.ps1
```

**That's it!** Your complete development environment is ready. 🎉

---

## 📋 Overview

This repository contains my curated development setup that I use for:
- Python 3.14+ development
- Data Science & Machine Learning
- Web Development
- General coding with AI assistance

## 🛠️ Tech Stack

### Core Tools
- **Python:** 3.14.0
- **Package Manager:** pip 25.2
- **IDE:** Visual Studio Code + Visual Studio 2026 Insider
- **Version Control:** Git 2.51.0
- **Shell:** PowerShell 7.5.3

### Build Tools
- **Compiler:** MSVC 14.50 (Visual Studio 2026)
- **SDK:** Windows SDK 10.0.26100.0
- **Build System:** CMake 4.1.2

## 📦 Installation

### 1. Install Python
Download and install [Python 3.14+](https://www.python.org/downloads/)

```powershell
# Verify installation
python --version
pip --version
```

### 2. Install Visual Studio Code
Download from [code.visualstudio.com](https://code.visualstudio.com/)

### 3. Install VS Code Extensions
```powershell
# Use the provided script
.\install-vscode-extensions.ps1
```

Or install manually from `vscode-extensions.txt`

### 4. Install Python Packages
```powershell
pip install -r requirements.txt
```

### 5. Install Build Tools (Optional)
For compiling Python packages with C extensions:
- Visual Studio 2026 Community (with C++ Desktop Development)
- CMake

## 📂 Repository Structure

```
my-dev-setup/
├── README.md                      # This file
├── vscode-extensions.txt          # VS Code extensions list
├── requirements.txt               # Python packages
├── install-vscode-extensions.ps1  # Auto-installer for VS Code
├── setup-python-env.ps1          # Python environment setup
└── .gitignore                    # Excludes sensitive files
```

## 🎯 Key Features

### Python Development
- Full data science stack (NumPy, Pandas, scikit-learn)
- Jupyter notebooks support
- Advanced linting and formatting (Ruff, Black)
- Auto-documentation generation
- Comprehensive testing (pytest)

### Code Quality
- SonarQube integration
- Multiple linters and formatters
- Git integration
- AI-powered assistance

### Productivity
- GitHub Copilot ready (requires subscription)
- Intelligent code completion
- Docker/Container support
- Multi-language support


## 🎨 Visual Studio 2026 Configuration

This repository also includes Visual Studio 2026 Community Insider setup:

- **Location:** `vs2026/` directory
- **Settings Export:** Instructions to export your VS 2026 configuration
- **Shared Resources:** Python, Git, build tools are shared with VS Code

See [vs2026/README.md](vs2026/README.md) for details.

**To export your VS 2026 settings:**
1. Open Visual Studio 2026
2. Tools → Import and Export Settings
3. Follow instructions in [vs2026/EXPORT-INSTRUCTIONS.md](vs2026/EXPORT-INSTRUCTIONS.md)
## 🔒 Security & Privacy

**This repository contains NO:**
- ❌ API keys or tokens
- ❌ Personal credentials
- ❌ Copyrighted software
- ❌ Authentication files
- ❌ Private configuration

**Only contains:**
- ✅ Public extension IDs
- ✅ Package names and versions
- ✅ Installation scripts
- ✅ Documentation

## 📊 Installed Packages Summary

- **Total Python Packages:** 125+
- **VS Code Extensions:** 31
- **Main Categories:** Python, Data Science, Web Dev, DevOps

## 🔄 Keeping Updated

### Update Python packages
```powershell
pip list --outdated
pip install --upgrade <package-name>
```

### Update VS Code extensions
```powershell
code --update-extensions
```

### Regenerate requirements
```powershell
pip list --format=freeze > requirements.txt
```

## 💡 Usage Tips

### Create a Virtual Environment
```powershell
python -m venv myproject
.\myproject\Scripts\activate
pip install -r requirements.txt
```

### Quick Test
```powershell
# Test Python installation
python -c "import numpy, pandas, sklearn; print('✓ All packages working!')"

# Start Jupyter
jupyter notebook

# Interactive Python
ipython
```

## 🤝 Contributing

Feel free to fork this repository and customize it for your needs!

## 📝 License

This is a personal setup repository. Extension IDs and package names are references to publicly available software.

## 🔗 Useful Links

- [Python Documentation](https://docs.python.org/)
- [VS Code Documentation](https://code.visualstudio.com/docs)
- [PowerShell Documentation](https://docs.microsoft.com/powershell/)

---

**Last Updated:** October 2025  
**Platform:** Windows 11  
**Python Version:** 3.14.0

