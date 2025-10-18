# My Windows Development Environment Setup

This repository's canonical setup and verification instructions have been consolidated into `SETUP.md`.

Quick start:

```powershell
git clone https://github.com/1LUC1D4710N/my-dev-setup.git
cd my-dev-setup
.\install-vscode-extensions.ps1
.\setup-python-env.ps1
```

See `SETUP.md` for the full, up-to-date instructions and verification steps.
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

## 📚 Further Documentation

- [VS Code Extensions Guide](docs/EXTENSIONS.md)
- [Tools & Software Setup Guide](docs/TOOLS.md)
- [Chat & AI Setup Guide](docs/CHAT.md)

---

**Last Updated:** October 2025  
**Platform:** Windows 11  
**Python Version:** 3.14.0

