# 🐚 Shell Scripting Cheat Sheet

A practical quick-reference guide for Bash scripting and DevOps automation.

---

# Quick Reference Table

| Topic    | Key Syntax               | Example                            |
| -------- | ------------------------ | ---------------------------------- |
| Variable | `VAR="value"`            | `NAME="DevOps"`                    |
| Argument | `$1, $2`                 | `./script.sh arg1`                 |
| If       | `if [ condition ]; then` | `if [ -f file ]; then`             |
| For Loop | `for i in list; do`      | `for i in 1 2 3; do`               |
| Function | `name() { ... }`         | `greet() { echo "Hi"; }`           |
| Grep     | `grep pattern file`      | `grep -i "error" log.txt`          |
| Awk      | `awk '{print $1}' file`  | `awk -F: '{print $1}' /etc/passwd` |
| Sed      | `sed 's/old/new/g' file` | `sed -i 's/foo/bar/g' config.txt`  |
| Case | `case variable in a);; b);; *);; esac` | `case $num in a);; b);; *);; esac` |
| Sort | `sort file` | `sort -n log.txt` |
| Tr | `tr option [set1] [set2] < file` | `tr [a-z] [A-Z] < file` |
| Wc | `wc option file` | `wc -wcl log.txt` |
| Head | `head -n file` | `head -10 log.txt` |
| Tail | `tail -n file` | `tail -10 log.txt` |
---

# 1. Basics

## Shebang

Defines which interpreter executes the script.

```bash
#!/bin/bash
```

Why it matters:

* Ensures script runs with Bash.
* Avoids shell compatibility issues.

---

## Running a Script

Make executable:

```bash
chmod +x script.sh
```

Run directly:

```bash
./script.sh
```

Run with Bash:

```bash
bash script.sh
```

---

## Comments

Single-line comment:

```bash
# This is a comment
```

Inline comment:

```bash
echo "Hello" # Print greeting
```

---

## Variables

Declare variable:

```bash
NAME="DevOps"
```

Use variable:

```bash
echo $NAME
```

Double quotes (expand variable):

```bash
echo "$NAME"
```

Single quotes (literal text):

```bash
echo '$NAME'
```

---

## Reading User Input

```bash
read -p "Enter your name: " NAME
echo "Hello $NAME"
```

---

## Command-Line Arguments

```bash
echo $0   # Script name
echo $1   # First argument
echo $2   # Second argument
echo $#   # Number of arguments
echo $@   # All arguments
echo $?   # Exit status of previous command
```

Example:

```bash
./script.sh devops linux
```

---

# 2. Operators and Conditionals

## String Comparisons

```bash
[ "$a" = "$b" ]
[ "$a" != "$b" ]
[ -z "$a" ]   # Empty string
[ -n "$a" ]   # Non-empty string
```

---

## Integer Comparisons

```bash
[ "$a" -eq "$b" ]
[ "$a" -ne "$b" ]
[ "$a" -lt "$b" ]
[ "$a" -gt "$b" ]
[ "$a" -le "$b" ]
[ "$a" -ge "$b" ]
```

---

## File Test Operators

```bash
[ -f file ]   # Regular file
[ -d dir ]    # Directory
[ -e path ]   # Exists
[ -r file ]   # Readable
[ -w file ]   # Writable
[ -x file ]   # Executable
[ -s file ]   # Not empty
```

---

## if / elif / else

```bash
if [ "$age" -ge 18 ]; then
    echo "Adult"
elif [ "$age" -ge 13 ]; then
    echo "Teen"
else
    echo "Child"
fi
```

---

## Logical Operators

```bash
[ -f file ] && echo "Exists"

[ -f file ] || echo "Missing"

! [ -f file ]
```

---

## Case Statement

```bash
case $1 in
    start)
        echo "Starting"
        ;;
    stop)
        echo "Stopping"
        ;;
    *)
        echo "Invalid option"
        ;;
esac
```

---

# 3. Loops

## For Loop (List Based)

```bash
for i in 1 2 3 4 5
do
    echo $i
done
```

---

## For Loop (C Style)

```bash
for ((i=1;i<=5;i++))
do
    echo $i
done
```

---

## While Loop

```bash
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
```

---

## Until Loop

```bash
count=1

until [ $count -gt 5 ]
do
    echo $count
    ((count++))
done
```

---

## Break

```bash
for i in {1..10}
do
    [ $i -eq 5 ] && break
    echo $i
done
```

---

## Continue

```bash
for i in {1..5}
do
    [ $i -eq 3 ] && continue
    echo $i
done
```

---

## Loop Over Files

```bash
for file in *.log
do
    echo "$file"
done
```

---

## Loop Over Command Output

```bash
cat users.txt | while read line
do
    echo "$line"
done
```

---

# 4. Functions

## Define Function

```bash
greet() {
    echo "Hello"
}
```

---

## Call Function

```bash
greet
```

---

## Function Arguments

```bash
greet() {
    echo "Hello $1"
}

greet DevOps
```

---

## Return Values

Using return:

```bash
check() {
    return 0
}
```

Using echo:

```bash
get_name() {
    echo "DevOps"
}

name=$(get_name)
```

---

## Local Variables

```bash
demo() {
    local NAME="Linux"
    echo $NAME
}
```

---

# 5. Text Processing Commands

## grep

Search text:

```bash
grep "error" log.txt
```

Useful flags:

```bash
grep -i "error" file
grep -r "error" logs/
grep -c "error" file
grep -n "error" file
grep -v "info" file
grep -E "error|critical" file
```

---

## awk

Print first column:

```bash
awk '{print $1}' file.txt
```

Custom delimiter:

```bash
awk -F: '{print $1}' /etc/passwd
```

Pattern:

```bash
awk '/ERROR/' log.txt
```

BEGIN/END:

```bash
awk 'BEGIN {print "Start"} {print $1} END {print "Done"}' file
```

---

## sed

Replace text:

```bash
sed 's/foo/bar/g' file.txt
```

Delete line:

```bash
sed '3d' file.txt
```

In-place edit:

```bash
sed -i 's/foo/bar/g' config.txt
```

---

## cut

Extract column:

```bash
cut -d: -f1 /etc/passwd
```

CSV:

```bash
cut -d, -f2 users.csv
```

---

## sort

```bash
sort file.txt
sort -n numbers.txt
sort -r file.txt
sort -u file.txt
```

---

## uniq

```bash
uniq file.txt
uniq -c file.txt
```

---

## tr

Lowercase to uppercase:

```bash
echo "linux" | tr 'a-z' 'A-Z'
```

Delete characters:

```bash
echo "abc123" | tr -d '0-9'
```

---

## wc

```bash
wc file.txt
wc -l file.txt
wc -w file.txt
wc -c file.txt
```

---

## head

```bash
head file.txt
head -n 20 file.txt
```

---

## tail

```bash
tail file.txt
tail -n 20 file.txt
tail -f app.log
```

---

# 6. Useful Patterns & One-Liners

## Find and Delete Files Older Than 7 Days

```bash
find /backup -type f -mtime +7 -delete
```

---

## Count Lines in All Log Files

```bash
wc -l *.log
```

---

## Replace String Across Multiple Files

```bash
sed -i 's/old/new/g' *.conf
```

---

## Check if Service Is Running

```bash
systemctl is-active nginx
```

---

## Monitor Disk Usage

```bash
df -h | awk '$5+0 > 80 {print $0}'
```

---

## Parse CSV

```bash
cut -d, -f1 users.csv
```

---

## Parse JSON

```bash
jq '.name' data.json
```

---

## Real-Time Error Monitoring

```bash
tail -f app.log | grep --line-buffered ERROR
```

---

# 7. Error Handling & Debugging

## Exit Codes

Success:

```bash
exit 0
```

Failure:

```bash
exit 1
```

Check previous command:

```bash
echo $?
```

---

## Exit on Error

```bash
set -e
```

Stops script immediately on failure.

---

## Unset Variable Protection

```bash
set -u
```

Treats undefined variables as errors.

---

## Pipe Failure Detection

```bash
set -o pipefail
```

Returns failure if any command in a pipeline fails.

---

## Debug Mode

```bash
set -x
```

Shows commands before execution.

---

## Trap Cleanup

```bash
cleanup() {
    rm -f temp.txt
}

trap cleanup EXIT
```

Runs cleanup automatically when script exits.

---

# Check Open Ports

```bash
ss -tulnp
```

---

## Memory Usage

```bash
free -h
```

---

## Process Using Most CPU

```bash
ps aux --sort=-%cpu | head
```

---

# Final Tip

When writing production Bash scripts, start with:

```bash
#!/bin/bash

set -euo pipefail
```

This catches most scripting mistakes early and makes automation more reliable.

