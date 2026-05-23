# Linux File System Hierarchy
## The Most Important Directories in Linux

Linux stores everything inside a structured directory system called the **Linux File System Hierarchy**.

Let's understand where things live in Linux.

---

# Core Directories (Must Know)

| Directory | Purpose |
|---|---|
| `/` | Everything in Linux starts from this main directory called the **root directory**. |
| `/home` | Used for normal users' personal files like documents, downloads, and projects. |
| `/root` | Home directory of the **root (admin)** user. Normal users should usually not work here. |
| `/bin` | Contains essential commands like `ls`, `cp`, `mv`, `cat`. |
| `/etc` | Contains system configuration files like `/etc/passwd` and `/etc/hosts`. |
| `/var` | Stores variable/changing data like logs, cache, mail, and databases. |
| `/tmp` | Stores temporary files. Files here may get deleted automatically after reboot. |
| `/usr` | Contains installed software and applications. |
| `/boot` | Contains files needed to start Linux, including kernel and bootloader files. |
| `/dev` | Contains device files. Linux treats devices like files. |

---

# Visual Overview

```bash
/
├── home
├── root
├── bin
├── etc
├── var
├── tmp
├── usr
├── boot
└── dev
```

---

# Real-World Practice Scenarios

## Scenario 1 — Find Logs

### Situation
Your application crashed and you need logs for troubleshooting.

### Steps

Move to the log directory:

```bash
cd /var/log
```

See available log files:

```bash
ls
```

Read a log file:

```bash
cat syslog
```

OR

```bash
less syslog
```

### Why This Matters
DevOps Engineers and System Administrators frequently check logs to debug issues.

---

## Scenario 2 — Create a DevOps Practice Folder

### Situation
You want a folder for practicing Linux and DevOps commands.

### Steps

Go to your home directory:

```bash
cd ~
```

Create a project folder:

```bash
mkdir DevOpsPractice
```

Move into the folder:

```bash
cd DevOpsPractice
```

Create a notes file:

```bash
touch notes.txt
```

### Why This Matters
Keeping your practice files organized is an important habit in Linux and DevOps.

---

## Scenario 3 — Temporary File Testing

### Situation
You want to test files temporarily.

### Steps

Move to temporary directory:

```bash
cd /tmp
```

Create a test file:

```bash
touch test.sh
```

### Important Note
Files inside `/tmp` may get deleted automatically after reboot.

---

## Scenario 4 — Check Installed Commands

### Situation
You want to know where the `ls` command exists.

### Command

```bash
which ls
```

### Example Output

```bash
/usr/bin/ls
```

### Why This Matters
This helps you locate installed commands and understand Linux paths.

---

# Useful Linux Commands

| Command | Purpose |
|---|---|
| `pwd` | Shows current directory |
| `ls` | Lists files and folders |
| `cd` | Changes directory |
| `mkdir` | Creates a folder |
| `touch` | Creates an empty file |
| `which` | Finds location of commands |

---

# Quick Memory Tricks

| Directory | Remember As |
|---|---|
| `/home` | User files |
| `/etc` | Configuration files |
| `/var/log` | Logs |
| `/tmp` | Temporary files |
| `/bin` | Important commands |
| `/usr` | Installed software |
| `/boot` | Boot files |

---

# Practice Tasks

## Task 1
Create a folder named `LinuxPractice` inside your home directory.

### Solution

```bash
cd ~
mkdir LinuxPractice
```

---

## Task 2
Create a file named `notes.txt` inside it.

### Solution

```bash
cd LinuxPractice
touch notes.txt
```

---

## Task 3
Go to `/var/log` and list all files.

### Solution

```bash
cd /var/log
ls
```

---

## Task 4
Find the location of these commands:

- `python`
- `git`
- `ls`

### Solution

```bash
which python
which git
which ls
```

---

# Key Takeaway

> In Linux, almost everything is treated like a file.

Examples:
- Devices
- Logs
- Commands
- Hard disks
- USB drives

Understanding the Linux File System Hierarchy is the foundation of Linux and DevOps.
