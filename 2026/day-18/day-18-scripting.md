# Day 18 - Bash Scripting Functions and Strict Mode

## Overview

Today I learned how to write reusable Bash scripts using functions, work with local variables, and make scripts safer using strict mode (`set -euo pipefail`). I also built a system information reporter by organizing multiple commands into functions.

---

## Task 1: Basic Functions

### Script

[Here is the script functions.sh](scripts/functions.sh)

### Output

[task 1](screenshots/task1.png)

### What I Learned

* How to create and call functions in Bash.
* How to pass arguments using `$1`, `$2`, etc.
* How to perform arithmetic operations inside functions.

---

## Task 2: Functions with Return Values

### Script

[Here is the script disk_check.sh](scripts/disk_check.sh)

### Output

[task 2](screenshots/task2.png)


### What I Learned

* How to organize commands into separate functions.
* How to use functions to display disk and memory information.
* The difference between printing output and returning exit codes.

---

## Task 3: Strict Mode (`set -euo pipefail`)

### Script

[Here is the script strict_demo.sh](scripts/strict_demo.sh)

### Output

[task 3](screenshots/task3.png)


### Explanation

#### set -e

Stops the script immediately if any command exits with a non-zero status.

#### set -u

Stops the script when an undefined variable is used.

#### set -o pipefail

Makes a pipeline fail if any command in the pipeline fails.

### Why It Is Useful

Strict mode helps catch errors early and prevents scripts from continuing with unexpected behavior.

---

## Task 4: Local Variables

### Script

[Here is the script local_demo.sh](scripts/local_demo.sh)

### Output

[task 4](screenshots/task4.png)

i
### What I Learned

* Variables are global by default in Bash.
* The `local` keyword limits a variable's scope to a function.
* Local variables help avoid accidental changes to global variables.

---

## Task 5: System Information Reporter

### Script

[Here is the script system_info.sh](scripts/system_info.sh)

### Output

[task 5](screenshots/task5.png)


### Features

* Displays hostname and OS information.
* Shows system uptime.
* Displays disk usage.
* Displays memory usage.
* Lists the top CPU-consuming processes.

---

## Key Takeaways

1. Functions make scripts more organized, reusable, and easier to maintain.
2. Strict mode (`set -euo pipefail`) helps write safer and more reliable scripts.
3. Using local variables prevents unwanted side effects and makes functions easier to manage.

---

## Conclusion

This day helped me move beyond running individual commands and start structuring scripts in a more organized way. I learned how to break a task into functions, use strict mode for safety, and create a practical system information reporting script.

