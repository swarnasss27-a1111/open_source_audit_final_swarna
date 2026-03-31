# Open Source Audit – LibreOffice on Fedora 43

*Student Name:* S.Swarna Shree  
*Registration Number:* 24BOE10024
*Course:* Open Source Software  
*Chosen Software:* LibreOffice

---

# Project Overview

This project presents a comprehensive audit of LibreOffice, a free and open-source productivity suite maintained by The Document Foundation. The audit covers the software's origins, guiding philosophy, licensing terms, Linux system footprint, broader ecosystem, and a comparative analysis against proprietary office alternatives.

In addition to the written audit, the project delivers five Bash shell scripts that highlight core Linux administration and shell scripting techniques through hands-on examples.

---

# System Details

- Distribution: Fedora 43
- Kernel: uname -r
- LibreOffice Version: 26.2.0.3
- Shell: Bash

---

# Repository Structure

text
oss-audit-24BCY10276/
├── README.md
├── scripts/
│   ├── script1.sh
│   ├── script2.sh
│   ├── script3.sh
│   ├── script4.sh
│   └── script5.sh
└── screenshots/
    ├── script1_system_identity.png
    ├── script2_package_inspector.png
    ├── script3_disk_auditor.png
    ├── script4_log_analyzer.png
    └── script5_manifesto_generator.png


---

# Script Descriptions

## Script 1 – System Identity Report
*File:* scripts/script1_system_identity.sh

This script collects and prints key details about the running Linux environment:
- Fedora distribution name
- Current kernel version
- Username of the active session
- Path of the home directory
- System uptime since last boot
- Current date and timestamp
- Licensing information applicable to Fedora and the Linux kernel
- Details specific to the audited software: LibreOffice

### Concepts Used
- Shell variables
- Command substitution using $( )
- echo for output
- Formatted text output

Run using:

bash
./scripts/script1_system_identity.sh


---

## Script 2 – FOSS Package Inspector
*File:* scripts/script2_package_inspector.sh

This script verifies whether LibreOffice is present on the system and retrieves associated metadata. Printed output includes:
- Installed package version
- Release identifier
- License type
- Package summary description
- A brief FOSS philosophy statement rendered via a case block

### Concepts Used
- if-then-else conditionals
- rpm -q for package presence check
- rpm -qi for detailed package metadata
- grep for filtering output
- case statement for branched logic

Run using:

bash
./scripts/script2_package_inspector.sh


---

## Script 3 – Disk and Permission Auditor
*File:* scripts/script3_disk_auditor.sh

This script inspects a defined set of Linux directories and outputs relevant filesystem data:
- Total disk usage per directory
- Ownership and permission details
- Confirmation of whether the LibreOffice config directory is present

Directories audited:
- /etc
- /var/log
- /home
- /usr/bin
- /tmp
- /etc/libreoffice

### Concepts Used
- Bash arrays
- for loop iteration
- if conditionals
- du for disk usage
- ls -ld for permission details
- awk and cut for field extraction

Run using:

bash
./scripts/script3_disk_auditor.sh


---

## Script 4 – Log File Analyzer
*File:* scripts/script4_log_analyzer.sh

This script parses a specified log file and counts occurrences of a given search term. The default keyword is error.

Functionality includes:
- Accepting a log file path as a positional argument
- Counting how many lines match the keyword
- Printing the total match count
- Displaying the five most recent matching lines

### Concepts Used
- Positional parameters ($1)
- Shell variables
- while read loop for line-by-line processing
- if-then for conditional matching
- Counter increment logic
- grep for pattern matching
- tail for displaying recent entries

Run using:

bash
sudo ./scripts/script4_log_analyzer.sh /var/log/messages


A custom keyword can be provided as a second argument:

bash
sudo ./scripts/script4_log_analyzer.sh /var/log/messages warning


---

## Script 5 – Open Source Manifesto Generator
*File:* scripts/script5_manifesto_generator.sh

This interactive script prompts the user with three questions and uses their responses to produce a personalised open-source manifesto, which is saved to a text file and printed to the terminal.

Key functionality:
- Interactive user input via prompts
- Dynamic paragraph generation from responses
- File creation and appended content writing
- Final output displayed on screen

### Concepts Used
- read for user input
- Variable assignment and usage
- String concatenation
- File output redirection with > and >>
- date for timestamp insertion

Run using:

bash
./scripts/script5_manifesto_generator.sh


---

# Dependencies

The tools listed below must be available on the system:

- Bash
- LibreOffice
- RPM package manager
- grep
- awk
- cut
- du
- tail
- sudo

To install LibreOffice on a Fedora system:

bash
sudo dnf install libreoffice


---

# How to Run the Entire Project

1. Clone or download the repository to your local machine.
2. Navigate to the project directory in a terminal.
3. Grant execute permission to all scripts:

bash
chmod +x scripts/*.sh


4. Execute each script in sequence:

bash
./scripts/script1_system_identity.sh
./scripts/script2_package_inspector.sh
./scripts/script3_disk_auditor.sh
sudo ./scripts/script4_log_analyzer.sh /var/log/messages
./scripts/script5_manifesto_generator.sh


---

# Screenshots

The screenshots/ directory holds execution screenshots confirming the successful run of each script:

- script1_system_identity.png
- script2_package_inspector.png
- script3_disk_auditor.png
- script4_log_analyzer.png
- script5_manifesto_generator.png

---

# Conclusion

This audit project explores both the values and the practical application of open-source software through the lens of LibreOffice. By combining system analysis, package inspection, filesystem auditing, log parsing, and shell scripting, the project builds a well-rounded picture of open-source tools in action on a modern Linux distribution.
