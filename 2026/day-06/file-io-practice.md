# Linux File I/O Practice

## Commands Used

### Create File
touch notes.txt

Created an empty file.

### Write First Line
echo "Linux is fun" > notes.txt

Wrote text into the file.

### Append Second Line
echo "DevOps uses Linux" >> notes.txt

Added another line without deleting old content.

### Use Tee
echo "Practice daily" | tee -a notes.txt

Displayed and appended text at the same time.

### Read File
cat notes.txt

Displayed full file content.

### Read First 2 Lines
head -n 2 notes.txt

Displayed first two lines.

### Read Last 2 Lines
tail -n 2 notes.txt

Displayed last two lines.
