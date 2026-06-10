# Git Commands Reference

## Setup & Config

### git --version

**Purpose:** Check the installed Git version.

**Example:**
git --version

### git config --global user.name

**Purpose:** Set your Git username.

**Example:**
git config --global user.name "Mujakkir Pathan"

### git config --global user.email

**Purpose:** Set your Git email address.

**Example:**
git config --global user.email "[your-email@example.com](mailto:your-email@example.com)"

### git config -l

**Purpose:** View current Git configuration.

**Example:**
git config -l

---

## Basic Workflow

### git init

**Purpose:** Initialize a new Git repository.

**Example:**
git init

### git status

**Purpose:** Show the current state of the repository.

**Example:**
git status

### git add

**Purpose:** Stage changes for the next commit.

**Example:**
git add git-commands.md

### git commit -m

**Purpose:** Save staged changes to repository history.

**Example:**
git commit -m "Add initial Git commands reference"

### git rm

**Purpose:** Remove a file from Git tracking.

**Example:**
git rm old-file.txt

---

## Viewing Changes

### git log

**Purpose:** View commit history.

**Example:**
git log

### git log --oneline

**Purpose:** View compact commit history.

**Example:**
git log --oneline

### git diff

**Purpose:** View unstaged changes.

**Example:**
git diff

### git diff --staged

**Purpose:** View staged changes before committing.

**Example:**
git diff --staged

### git show

**Purpose:** View details of a specific commit.

**Example:**
git show <commit-id>

### git branch

**Purpose:** List branches in the repository.

**Example:**
git branch

---
