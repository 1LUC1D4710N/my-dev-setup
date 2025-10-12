# 🚀 My Windows Development Environment Setup

A clean, reproducible development environment for Python, Data Science, and modern web development on Windows.

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
