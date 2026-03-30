# Open Source Audit Project — Mozilla Firefox

**Student Name:** Sparsh Gupta  
**Registration Number:** 24BAI10268  
**Chosen Software:** Mozilla Firefox  

---

## 📝 Project Overview

This repository contains five practical Linux bash scripts created to study and explore **Mozilla Firefox** as an example of open-source software. These scripts demonstrate system auditing, package inspection, file permissions, log analysis, and interactive manifesto generation — all designed to enhance understanding of Linux and open-source principles.

---

## 📌 Script Descriptions

### 1. `script1.sh` — System Identity Report
- Purpose: Displays system and software audit information.
- Features:
  - Shows the Linux distribution and kernel version.
  - Displays the current user, home directory, system uptime, and current date/time.
  - Notes about licenses used by Linux (GNU GPL) and Firefox (MPL 2.0).
- Use Case: Helps understand the system environment where open-source software is running.

---

### 2. `script2.sh` — FOSS Package Inspector
- Purpose: Checks if the chosen open-source package (`firefox`) is installed and shows its details.
- Features:
  - Uses `dpkg` (Debian/Ubuntu) to verify installation.
  - Displays package version, maintainer, and description.
  - Provides a short description for known FOSS packages such as Firefox, VLC, Git, Apache2.
- Use Case: Demonstrates how to inspect installed open-source software and its metadata on Linux.

---

### 3. `script3.sh` — Disk and Permission Auditor
- Purpose: Audits key directories for permissions and disk usage, including Firefox configuration.
- Features:
  - Scans directories: `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`.
  - Displays permissions, owner/group, and size of each directory.
  - Checks the user-specific Firefox configuration directory (`~/.mozilla`) and shows its details.
- Use Case: Helps understand Linux file hierarchy, permissions, and application-specific configuration storage.

---

### 4. `script4.sh` — Log File Analyzer
- Purpose: Analyzes system logs for occurrences of a keyword.
- Features:
  - Default keyword is `error`; can also accept a user-defined keyword.
  - Counts total occurrences in system logs (`journalctl` output).
  - Shows the last 5 matching log entries and saves results to `log_analysis.txt`.
  - Creates a sample log if `journalctl` has no output (for testing).
- Use Case: Demonstrates how to search logs for errors or warnings, which is useful in troubleshooting Linux systems.

---

### 5. `script5.sh` — Open Source Manifesto Generator
- Purpose: Creates a personalized manifesto about open-source values.
- Features:
  - Prompts the user for input on tool, freedom, and build.
  - Generates a text file `manifesto_<username>.txt` with the user’s responses.
  - Displays the manifesto content on the terminal.
- Use Case: Illustrates interactivity in bash scripts and emphasizes open-source principles.

---

## 💻 Step-by-Step Instructions to Run Scripts

1. **Clone the repository:**
   ```bash
   git clone https://github.com/sparsh240/oss-audit-24BAI10268.git
   cd oss-audit-24BAI10268
   chmod +x script*.sh
   ./script1.sh
   ./script2.sh
   ./script3.sh
   ./script4.sh
   ./script5.sh