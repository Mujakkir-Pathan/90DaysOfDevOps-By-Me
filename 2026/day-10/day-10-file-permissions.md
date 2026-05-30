# Day 10 Challenge

## Files Created

- `devops.txt` (empty file)
- `notes.txt` (contains Linux permission notes)
- `script.sh` (shell script that prints "Hello DevOps")
- `project/` (directory)

## Permission Changes

### devops.txt
- Before: `-rw-r--r--`
- After: `-r--r--r--`
- Change: Removed write permission for everyone (read-only file)

### notes.txt
- Before: `-rw-r--r--`
- After: `-rw-r-----`
- Change: Set permissions to 640 (owner: read/write, group: read, others: none)

### script.sh
- Before: `-rwxrw-r--`
- After: `-rw-rw-r--`
- Change: Removed execute permission and verified execution failed with "Permission denied"

### project/
- Permissions: `drwxr-xr-x`
- Numeric value: `755`

## Commands Used

```bash
touch devops.txt
touch notes.txt
echo "Linux permissions
DevOps practice
Day 10 challenge" > notes.txt

vim script.sh
chmod 764 script.sh
./script.sh

ls -l

chmod 444 devops.txt
chmod 640 notes.txt

mkdir project
chmod 755 project

echo "My Aim Is to Become Job Ready" > devops.txt
./script.sh
```

## What I Learned

1. Linux permissions are divided into owner, group, and others.
2. `r`, `w`, and `x` represent read, write, and execute permissions with values 4, 2, and 1.
3. Missing write permission prevents file modification, and missing execute permission prevents running a file.
