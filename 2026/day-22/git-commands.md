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

## Branching & Remote Operations

### git branch

Purpose: List all local branches.

Example:

```bash
git branch
```

### git checkout -b <branch-name>

Purpose: Create a new branch and switch to it.

Example:

```bash
git checkout -b feature-1
```

### git switch <branch-name>

Purpose: Switch to an existing branch.

Example:

```bash
git switch main
```

### git branch -d <branch-name>

Purpose: Delete a branch that is no longer needed.

Example:

```bash
git branch -d feature-2
```

### git remote add origin <repository-url>

Purpose: Connect a local repository to a remote GitHub repository.

Example:

```bash
git remote add origin git@github.com:Mujakkir-Pathan/devops-git-practice.git
```

### git remote -v

Purpose: Display configured remote repositories.

Example:

```bash
git remote -v
```

### git remote set-url origin <repository-url>

Purpose: Change the URL of an existing remote.

Example:

```bash
git remote set-url origin git@github.com:Mujakkir-Pathan/devops-git-practice.git
```

### git push origin main

Purpose: Push the main branch to GitHub.

Example:

```bash
git push origin main
```

### git push origin <branch-name>

Purpose: Push a feature branch to GitHub.

Example:

```bash
git push origin feature-1
```

### git pull origin main

Purpose: Fetch and merge changes from the remote main branch.

Example:

```bash
git pull origin main
```

### git clone <repository-url>

Purpose: Create a local copy of a remote repository.

Example:

```bash
git clone https://github.com/git/git.git
```

### git fetch

Purpose: Download changes from the remote repository without merging them.

Example:

```bash
git fetch
```

---

# Advanced Git Commands (Day 24)

## Merge
git merge <branch>
- Combines changes from another branch into current branch.

## Fast-forward Merge
- Happens when no new commits exist on main branch.
- Git just moves pointer forward.

## Merge Commit
- Created when branches diverge.
- Preserves full branch history.

## Rebase
git rebase <branch>
- Rewrites commit history on top of another branch.
- Creates linear history.

## Stash
git stash push -m "message"
- Saves uncommitted changes temporarily.

git stash list
- Shows all stashed changes.

git stash apply
- Restores stash but keeps it.

git stash pop
- Restores stash and removes it.

## Squash Merge
git merge --squash <branch>
- Combines all commits into one single commit.

## Cherry-pick
git cherry-pick <commit-id>
- Applies a specific commit from another branch.

## Conflict Resolution
- Happens when same lines are modified in multiple branches.
- Must manually fix files and run:
git add <file>
git commit
