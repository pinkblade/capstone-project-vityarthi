## capstone project vityarthi



**Author:** Shubham Kumar  
**Theme:** FOSS (Free & Open Source Software) Exploration  
**Shell:** Bash  
**OS:** Ubuntu / Debian-based Linux

---

## Overview

A collection of five Bash scripts that together form a complete Linux system audit and open source exploration toolkit. Each script covers a different aspect of system administration and FOSS advocacy.

---

## Scripts

### Script 1 — System Identity Report (`script_1.sh`)

Displays a summary of the current system environment.

**What it does:**
- Reports kernel version, logged-in user, system uptime, current date/time, and Linux distro
- Highlights the chosen open source software (Git) and its license

**Usage:**
```bash
bash script_1.sh
```

**Sample Output:**
```
================================
 Open Source Audit — Shubham Kumar
================================
Software: Git
Kernel  : 5.15.0-91-generic
User    : shubham
Uptime  : up 2 hours, 34 minutes
```

---

### Script 2 — FOSS Package Inspector (`script_2.sh`)

Checks whether a specific package is installed and prints a short description of it.

**What it does:**
- Uses `dpkg` to verify if `git` is installed
- Prints package details if found
- Uses a `case` statement to display a description for known FOSS packages

**Usage:**
```bash
bash script_2.sh
```

**Supported packages in case block:** `git`, `apache2`, `mysql`, `vlc`

---

### Script 3 — Disk and Permission Auditor (`script_3.sh`)

Audits key system directories for permissions and disk usage.

**What it does:**
- Iterates over `/etc`, `/var/log`, `/home`, `/usr/bin`, and `/tmp`
- Reports permissions, owner, group, and size for each directory
- Checks whether a Git config directory exists at `/etc/git`

**Usage:**
```bash
bash script_3.sh
```

**Sample Output:**
```
/etc => Permissions: drwxr-xr-x root root | Size: 12M
/tmp => Permissions: drwxrwxrwt root root | Size: 4.5M
```

---

### Script 4 — Log File Analyzer (`script_4.sh`)

Searches a log file for a keyword and counts how many times it appears.

**What it does:**
- Accepts a log file path and an optional keyword (defaults to `"error"`)
- Counts matching lines using a `while read` loop
- Prints the last 5 matching lines using `grep` + `tail`

**Usage:**
```bash
bash script_4.sh /var/log/syslog error
bash script_4.sh /var/log/auth.log failed
```

**Arguments:**

| Argument | Required | Default | Description |
|----------|----------|---------|-------------|
| `$1` | Yes | — | Path to the log file |
| `$2` | No | `error` | Keyword to search for |

---

### Script 5 — Open Source Manifesto Generator (`script_5.sh`)

An interactive script that generates a personal open source manifesto.

**What it does:**
- Prompts the user for their favourite tool, what freedom means to them, and what they plan to build
- Writes a personalised manifesto statement to `manifesto.txt`
- Displays the result in the terminal

**Usage:**
```bash
bash script_5.sh
```

**Output file:** `manifesto.txt` (created in the current directory)

---

## Requirements

- Ubuntu / Debian-based Linux (uses `dpkg`, `lsb_release`)
- Bash 4.0+
- `git` package (for scripts 1 & 2 to work as intended)

---

## Running All Scripts

```bash
chmod +x script_1.sh script_2.sh script_3.sh script_4.sh script_5.sh

bash script_1.sh
bash script_2.sh
bash script_3.sh
bash script_4.sh /var/log/syslog error
bash script_5.sh
```

---

## License

This project is submitted as part of an academic exercise on Free and Open Source Software.  
The scripts themselves are released under the **MIT License** — free to use, modify, and share.
