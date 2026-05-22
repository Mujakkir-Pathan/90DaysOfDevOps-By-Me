# RUNBOOK for SSH Service

This runbook contains quick troubleshooting steps for checking the SSH service and basic system health.

---

# Environment Basics

### Command
```bash
uname -a
```

### Output
```bash
Linux MUJAKKIR 5.15.167.4-microsoft-standard-WSL2 x86_64 GNU/Linux
```

### Observation
Checked kernel version and system architecture.

---

### Command
```bash
cat /etc/os-release
```

### Output
```bash
PRETTY_NAME="Ubuntu 24.04 LTS"
```

### Observation
Confirmed Ubuntu version.

---

# Filesystem Check

### Command
```bash
mkdir /tmp/runbook-demo
```

### Observation
Temporary directory created successfully.

---

### Command
```bash
cp /etc/hosts /tmp/runbook-demo/hosts-copy && ls -l /tmp/runbook-demo
```

### Observation
File copied successfully. Filesystem is working properly.

---

# CPU / Memory

### Command
```bash
ps -o pid,pcpu,pmem,comm -p $(pgrep -x sshd)
```

### Output
```bash
PID %CPU %MEM COMMAND
722 0.0 0.1 sshd
```

### Observation
SSH process is running with very low resource usage.

---

### Command
```bash
free -h
```

### Observation
Enough memory is available.

---

# Disk / IO

### Command
```bash
df -h
```

### Observation
Disk usage looks healthy with enough free space.

---

### Command
```bash
vmstat 1 3
```

### Observation
CPU idle time was high and system load looked normal.

---

# Network

### Command
```bash
ss -tulpn | grep ssh
```

### Observation
SSH service is listening on port 22.

---

### Command
```bash
nc -zv localhost 22
```

### Observation
SSH connection test was successful.

---

# Logs

### Command
```bash
journalctl -u ssh -n 50
```

### Observation
No recent SSH errors found.

---

### Command
```bash
tail -n 50 /var/log/auth.log
```

### Observation
Recent login activity looked normal.

---

# Quick Review

- SSH service is running normally.
- CPU, memory, and disk usage are stable.
- Port 22 is active and reachable.
- No major errors found in logs.

---

# If This Worsens

- Restart the SSH service
- Monitor logs in real time
- Check CPU and memory usage
- Verify firewall or port issues
```
