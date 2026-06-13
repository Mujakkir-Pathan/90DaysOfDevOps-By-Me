# Day 28 – Revision Day (Days 1–27)

## Task 1: Self Assessment Checklist

### Linux

| Topic                                                          | Status               |
| -------------------------------------------------------------- | -------------------- |
| Navigate file system, create/move/delete files and directories | ✅ Can do confidently |
| Manage processes (list, kill, background/foreground)           | ✅ Can do confidently |
| Work with systemd services                                     | ✅ Can do confidently |
| Read and edit files using vim/nano                             | ✅ Can do confidently |
| Troubleshoot CPU, memory, disk issues                          | ✅ Can do confidently |
| Explain Linux file system hierarchy                            | ✅ Can do confidently |
| Create users and groups                                        | ✅ Can do confidently |
| Set file permissions using chmod                               | ✅ Can do confidently |
| Change ownership using chown/chgrp                             | ✅ Can do confidently |
| Create and manage LVM volumes                                  | 🔄 Need to revisit   |
| Network troubleshooting commands                               | ✅ Can do confidently |
| DNS, IP, subnetting, ports                                     | 🔄 Need to revisit   |

### Shell Scripting

| Topic                            | Status               |
| -------------------------------- | -------------------- |
| Variables, arguments, user input | ✅ Can do confidently |
| if/elif/else and case statements | ✅ Can do confidently |
| Loops (for, while, until)        | ✅ Can do confidently |
| Functions                        | ✅ Can do confidently |
| grep, awk, sed, sort, uniq       | 🔄 Need to revisit   |
| Error handling                   | ✅ Can do confidently |
| Crontab scheduling               | ✅ Can do confidently |

### Git & GitHub

| Topic                                         | Status               |
| --------------------------------------------- | -------------------- |
| Initialize repo, commit, history              | ✅ Can do confidently |
| Branching                                     | ✅ Can do confidently |
| Push and Pull                                 | ✅ Can do confidently |
| Clone vs Fork                                 | ✅ Can do confidently |
| Merge branches                                | ✅ Can do confidently |
| Rebase                                        | 🔄 Need to revisit   |
| Git stash                                     | ✅ Can do confidently |
| Cherry-pick                                   | ✅ Can do confidently |
| Squash merge vs regular merge                 | ✅ Can do confidently |
| Reset vs Revert                               | ✅ Can do confidently |
| GitFlow, GitHub Flow, Trunk-Based Development | 🔄 Need to revisit   |
| GitHub CLI                                    | ✅ Can do confidently |

---

# Task 2: Revisited Topics

## 1. LVM (Logical Volume Management)

### What I ReLearned

* Physical Volumes (PV) are created from disks or partitions.
* Volume Groups (VG) combine multiple physical volumes.
* Logical Volumes (LV) are created from volume groups.
* LVM allows flexible storage expansion without repartitioning disks.
* Useful when disk requirements change over time.

## 2. DNS, IP Addressing and Subnets

### What I ReLearned

* DNS translates domain names into IP addresses.
* IP addresses uniquely identify devices on a network.
* Subnetting divides large networks into smaller manageable networks.
* Common ports:

  * 22 → SSH
  * 80 → HTTP
  * 443 → HTTPS
  * 53 → DNS
* Tools used:

  * ping
  * curl
  * dig
  * nslookup
  * ss

## 3. Git Rebase and Branching Strategies

### What I Re Learned

* Rebase rewrites commit history to create a cleaner linear timeline.
* Merge preserves branch history.
* Rebase is useful before merging feature branches.
* GitHub Flow is suitable for smaller teams with continuous deployments.
* GitFlow works well for structured release cycles.
* Trunk-Based Development keeps developers working close to the main branch.

---

# Task 3: Quick Fire Questions

### 1. What does chmod 755 script.sh do?

Gives:

* Owner: read, write, execute
* Group: read, execute
* Others: read, execute

### 2. Difference between a process and a service?

A process is a running program.
A service is a background process managed by the operating system, often through systemd.

### 3. How do you find which process is using port 8080?

```bash
sudo ss -tulpn | grep 8080
```

or

```bash
sudo lsof -i :8080
```

### 4. What does set -euo pipefail do?

* set -e → Exit on command failure
* set -u → Treat unset variables as errors
* set -o pipefail → Fail if any command in a pipeline fails

### 5. Difference between git reset --hard and git revert?

git reset --hard:

* Removes commits and working directory changes.

git revert:

* Creates a new commit that undoes previous changes.

### 6. Recommended branching strategy for a team of 5 developers shipping weekly?

GitHub Flow because it is simple, lightweight, and works well with frequent releases.

### 7. What does git stash do?

Temporarily saves uncommitted changes so you can switch branches or pull updates without committing unfinished work.

### 8. How do you schedule a script to run every day at 3 AM?

```bash
0 3 * * * /path/to/script.sh
```

### 9. Difference between git fetch and git pull?

git fetch:

* Downloads remote changes only.

git pull:

* Fetches changes and merges them into the current branch.

### 10. What is LVM and why use it?

LVM (Logical Volume Management) provides flexible disk management, allowing storage expansion, resizing, and easier management compared to traditional partitions.

---

# Task 4: Organize Your Work

* [x] Verified Day 1–27 folders are committed and pushed
* [x] Verified Git command notes are updated
* [x] Verified Shell Scripting Cheat Sheet
* [x] Verified GitHub Profile README
* [x] Verified repository structure and documentation

---

# Task 5: Teach It Back

## Explaining Git Branching to a Beginner

Git branching allows developers to work on new features without affecting the main codebase. A branch acts like a separate workspace where changes can be developed and tested safely. Once the feature is completed, the branch can be merged back into the main branch. This makes collaboration easier because multiple developers can work on different features simultaneously. Branches help keep the main code stable while development continues in parallel.

