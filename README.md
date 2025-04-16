

### 🛡️ `README.md`


# 🔍 Automated Vulnerability Scanner

This project uses a custom shell script (`scan.sh`) to automate the process of:
1. Enumerating subdomains.
2. Checking live subdomains.
3. Scanning for medium and critical vulnerabilities using **Nuclei**.

---

## 🚀 Tools Used

- **Nuclei** - A fast and customizable vulnerability scanner based on simple YAML templates.
- **ProjectDiscovery Templates** - A rich collection of community-driven templates for scanning.
- **Bash** - For automation via `scan.sh`.

---

## 🧪 Scan Workflow

The script performs the following tasks:

1. **Subdomain Enumeration**
2. **Live Subdomain Detection**
3. **Nuclei Vulnerability Scan**
   - Medium & critical severity
   - Over 2800 templates loaded
   - Uses both signed and unsigned templates

---

## ✅ Results

- **Scan Status**: Completed
- **Templates Loaded**: 2890
- **Clustered Requests**: 66 (Reduced to 48 requests)
- **Targets Scanned**: 1
- **No Vulnerabilities Found** (this time 😎)
- **Results File**: `scan_results_2025-04-16_14-22`

---

## 📸 Screenshot

Below is a screenshot of the scan execution:

![image](https://github.com/user-attachments/assets/047a0f72-40d0-417b-8239-14a4b0fbcc05)

---

## 📁 How to Run

1. Make the script executable:
   ```bash
   chmod +x scan.sh
   ```

2. Run the script:
   ```bash
   ./scan.sh
   ```

> ⚠️ **Disclaimer**: Use this tool responsibly and only on domains you own or have explicit permission to test.

---

## 💡 Credits

- [ProjectDiscovery.io](https://projectdiscovery.io)
- [Nuclei Templates Repo](https://github.com/projectdiscovery/nuclei-templates)
```


Let me know if you want this turned into a downloadable file or want to add more details like author info or links to GitHub repos.
