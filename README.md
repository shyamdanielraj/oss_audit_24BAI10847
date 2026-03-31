OSS Audit Project – Shell Scripting Portfolio

Student Details
Name: Shyam Daniel Raj
Roll Number: 24BAI10847
Course: Open Source Software (OSS)
Faculty: Dr. Vikas Panthi
Semester: Winter 2026


🐧 Chosen Environment
Platform: GNU/Linux
Shell: Bash (Bourne Again Shell)


🎯 Project Purpose

This project demonstrates how Bash scripting can be used for:

System auditing
Automation of administrative tasks
Log monitoring and analysis
Open-source philosophy integration

It highlights key OSS principles such as transparency, efficiency, and automation using native Linux utilities.



📌 Project Overview

This repository contains five modular Bash scripts, each solving a real-world Linux administration task:

System Identity Reporting
Package Verification
Disk & Permission Auditing
Log File Analysis
Open Source Manifesto Generation
⚙️ Dependencies

Ensure the following tools are installed:

bash
coreutils (ls, du, date, etc.)
grep
awk
dpkg (Debian-based systems)
uname, whoami


🔧 Installation
sudo apt update
sudo apt install coreutils grep awk dpkg


🧪 Testing Environment
OS: Ubuntu 22.04 / 24.04 LTS
Architecture: x86_64
Execution Mode: Terminal
Status: ✅ All scripts tested and verified


📂 Scripts Description
🔹 1. System Identity Report (system_report.sh)

Objective:
Displays detailed system metadata along with a formatted report.

Information Retrieved:

Linux distribution name
Kernel version
Current user
Home directory
System uptime
Current date and time

Concepts Used:

Command substitution $(...)
Variables and formatting
uname, whoami, uptime, date, grep
🔹 2. Package Inspector (package_inspector.sh)

Objective:
Verifies whether a package (e.g., kernel or Python3) is installed.

Features:

Displays package version and status
Uses conditional logic (if-else)
Classifies output using case
Integrates FOSS philosophical interpretation

Commands Used:

dpkg -l
Pipes and exit status
🔹 3. Disk & Permission Auditor (disk_permission_audit.sh)

Objective:
Analyzes disk usage and permissions of critical directories.

Directories Audited:

/etc – Configuration files
/var/log – System logs
/home – User data
/usr/bin – Executables
/tmp – Temporary files

Features:

Iterates using for loops
Checks directory existence [ -d ]
Reports:
Disk usage (du -sh)
Permissions (ls -ld)
Performs critical check on /boot/grub

Tools Used:

du, ls, awk, find
🔹 4. Log Hunter (log_hunter.sh)

Objective:
Searches and analyzes system log files for specific keywords.

Features:

Accepts:
Log file path ($1)
Keyword ($2, optional)
Case-insensitive search
Displays:
Count of matches
Last 5 relevant entries
Implements retry mechanism (while loop)
Handles invalid or empty files safely

Example:

./log_hunter.sh /var/log/syslog ERROR

Tools Used:

grep, tail, loops, conditionals
🔹 5. Manifesto Generator (manifesto_generator.sh)

Objective:
Generates a personalized Open Source philosophy statement.

Features:

Interactive user input (read)
Creates timestamped file
Outputs structured manifesto
Saves to:
manifesto_<username>.txt

Concepts Used:

File redirection (>>)
String handling
date, cat
▶️ Execution Guide
1️⃣ Clone Repository
git clone <repository_url>
cd <repository_folder>
2️⃣ Make Scripts Executable
chmod +x *.sh
3️⃣ Run Scripts
./system_report.sh
./package_inspector.sh
./disk_permission_audit.sh
./log_hunter.sh /var/log/syslog error
./manifesto_generator.sh
🧾 Sample Output
System Report
------------------------------
SYSTEM REPORT
------------------------------
User: shyam
Kernel: Linux 6.x.x
Uptime: 2 hours
Date: Tue Mar 31
------------------------------



🌟 Key Features

✔ Modular and reusable Bash scripts
✔ Real-world Linux system administration tasks
✔ Interactive and user-friendly design
✔ Lightweight with minimal dependencies
✔ Compatible with Debian-based systems
✔ Demonstrates OSS philosophy practically



🎯 Learning Outcomes
Understanding Linux system internals
Automating administrative workflows
Using Bash control structures (loops, conditions)
Log and file system analysis
Applying open-source philosophy in real scenarios


⚠️ Notes
Script 2 is optimized for Debian-based systems
Script 4 requires valid log file paths
Some scripts may require elevated permissions


📜 License

This project follows the principles of the GNU General Public License (GPL), promoting free use, modification, and distribution.


📄 Submission Note
All scripts executed successfully
Outputs verified
Submitted as part of OSS course evaluation
Full report submitted via academic portal

📚 References
GNU Project – Free Software Definition
Open Source Initiative (OSI)
The Cathedral and the Bazaar — Eric S. Raymond
The Linux Command Line — William Shotts
👤 Author

Shyam Daniel Raj
