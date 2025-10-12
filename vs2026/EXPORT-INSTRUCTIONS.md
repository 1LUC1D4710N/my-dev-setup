# 📤 How to Export Your Visual Studio 2026 Settings

Follow these steps to export your Visual Studio configuration:

## 🎯 Step-by-Step Guide

### 1. Open Visual Studio 2026
- Launch Visual Studio Community 2026 Insider
- Wait for it to fully load

### 2. Access Settings Export
- Click on **Tools** in the menu bar
- Select **Import and Export Settings...**
- A wizard will open

### 3. Choose Export Option
- Select: **"Export selected environment settings"**
- Click **Next**

### 4. Select What to Export
Choose the settings you want to include:

#### ✅ Recommended Selections:
- [x] **General Settings**
  - Environment colors
  - Window layouts
  - Startup options
  
- [x] **Text Editor**
  - Font and colors
  - Tabs and indentation
  - Code formatting
  
- [x] **Environment**
  - Keyboard shortcuts
  - Font and colors
  - Documents and windows
  
- [x] **Projects and Solutions**
  - General settings
  - Build and run
  
- [x] **Source Control**
  - Git settings
  - Repository settings

- [x] **Debugging**
  - General settings
  - Symbols
  
- [x] **Options** (if available)

#### ⚠️ Don't Export (Contains Personal Data):
- [ ] Accounts and credentials
- [ ] License information
- [ ] Personal tokens

### 5. Name Your Settings File
- Click **Next**
- Browse to save location: `C:\Users\<USERNAME>\Desktop\my-dev-setup\vs2026\`
- File name: `vs2026-settings.vssettings`
- Click **Finish**

### 6. Verify Export
You should see: "Export Complete" message

Check that the file exists:
```powershell
Test-Path "C:\Users\<USERNAME>\Desktop\my-dev-setup\vs2026\vs2026-settings.vssettings"
```

## 📋 After Export

### Add to Git Repository
```powershell
cd C:\Users\<USERNAME>\Desktop\my-dev-setup
git add vs2026/
git commit -m "Add Visual Studio 2026 configuration"
git push origin main
```

### Document Your Extensions
1. Go to **Extensions** → **Manage Extensions**
2. Click **Installed** tab
3. Take note of extensions you use
4. Add them to `vs2026/README.md`

## 🔄 To Import on Another Machine

1. Clone your repository:
   ```powershell
   git clone https://github.com/<YOUR_GITHUB_USERNAME>/my-dev-setup.git
   ```

2. Open Visual Studio 2026
3. **Tools** → **Import and Export Settings**
4. Select **"Import selected environment settings"**
5. Choose **"No, just import new settings"** (or backup first)
6. Browse to `my-dev-setup\vs2026\vs2026-settings.vssettings`
7. Click **Next** → **Finish**

## 💡 Tips

- Export settings after major configuration changes
- Keep multiple versions if you experiment with settings
- Settings file is XML - you can manually edit if needed
- File does NOT contain extensions (those need separate installation)

## ⚠️ Security Notes

The exported `.vssettings` file should NOT contain:
- ❌ API keys
- ❌ Passwords
- ❌ Tokens
- ❌ Connection strings

If you're concerned, open the file in a text editor and verify before committing to Git.

## 📞 Need Help?

If export fails:
1. Try running Visual Studio as Administrator
2. Check you have write permissions to the save location
3. Ensure Visual Studio is fully updated
4. Try exporting to a different location first

---

**Once exported, run the Git commands above to add it to your repository!**
