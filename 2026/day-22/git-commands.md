# Git Commands Reference

## 1. Setup & Configuration

### git --version
**Purpose:** Check the installed Git version.

**Example:**
```bash
git --version
```

### git config --global user.name
**Purpose:** Set your Git username.

**Example:**
```bash
git config --global user.name "Mujakkir Pathan"
```

### git config --global user.email
**Purpose:** Set your Git email address.

**Example:**
```bash
git config --global user.email "your-email@example.com"
```

### git config -l
**Purpose:** View current Git configuration.

**Example:**
```bash
git config -l
```

---

## 2. Basic Workflow

### git init
**Purpose:** Initialize a new Git repository.

**Example:**
```bash
git init
```

### git status
**Purpose:** Show the current state of the repository.

**Example:**
```bash
git status
```

### git add
**Purpose:** Stage changes for the next commit.

**Example:**
```bash
git add git-commands.md
```

### git commit -m
**Purpose:** Save staged changes to repository history.

**Example:**
```bash
git commit -m "Add initial Git commands reference"
```

### git rm
**Purpose:** Remove a file from Git tracking.

**Example:**
```bash
git rm old-file.txt
```

---

## 3. Viewing Changes & History

### git log
**Purpose:** View commit history.

**Example:**
```bash
git log
```

### git log --oneline
**Purpose:** View compact commit history.

**Example:**
```bash
git log --oneline
```

### git diff
**Purpose:** View unstaged changes.

**Example:**
```bash
git diff
```

### git diff --staged
**Purpose:** View staged changes before committing.

**Example:**
```bash
git diff --staged
```

### git show
**Purpose:** View details of a specific commit.

**Example:**
```bash
git show <commit-id>
```

### git branch
**Purpose:** List all branches in the repository.

**Example:**
```bash
git branch
```

---

## 4. Branching & Remote Operations

### git checkout -b \<branch-name>
**Purpose:** Create a new branch and switch to it.

**Example:**
```bash
git checkout -b feature-1
```

### git switch \<branch-name>
**Purpose:** Switch to an existing branch.

**Example:**
```bash
git switch main
```

### git branch -d \<branch-name>
**Purpose:** Delete a branch that is no longer needed.

**Example:**
```bash
git branch -d feature-2
```

### git remote add origin \<repository-url>
**Purpose:** Connect a local repository to a remote repository.

**Example:**
```bash
git remote add origin git@github.com:Mujakkir-Pathan/devops-git-practice.git
```

### git remote -v
**Purpose:** Display configured remote repositories.

**Example:**
```bash
git remote -v
```

### git remote set-url origin \<repository-url>
**Purpose:** Change the URL of an existing remote.

**Example:**
```bash
git remote set-url origin git@github.com:Mujakkir-Pathan/devops-git-practice.git
```

### git push origin main
**Purpose:** Push the main branch to the remote repository.

**Example:**
```bash
git push origin main
```

### git push origin \<branch-name>
**Purpose:** Push a feature branch to the remote repository.

**Example:**
```bash
git push origin feature-1
```

### git pull origin main
**Purpose:** Fetch and merge changes from the remote main branch.

**Example:**
```bash
git pull origin main
```

### git clone \<repository-url>
**Purpose:** Create a local copy of a remote repository.

**Example:**
```bash
git clone https://github.com/git/git.git
```

### git fetch
**Purpose:** Download changes from the remote repository without merging them.

**Example:**
```bash
git fetch
```

---

## 5. Merge & Rebase (Day 24)

### git merge \<branch-name>
**Purpose:** Combine changes from another branch into the current branch.

**Example:**
```bash
git merge feature-1
```

### Fast-Forward Merge
**Purpose:** Occurs when the target branch has no new commits and Git simply moves the branch pointer forward.

### Merge Commit
**Purpose:** Created when branches have diverged and Git needs a new commit to combine histories.

### git rebase \<branch-name>
**Purpose:** Reapply commits on top of another branch to create a linear history.

**Example:**
```bash
git rebase main
```

---

## 6. Git Stash

### git stash push -m "message"
**Purpose:** Save uncommitted changes temporarily.

**Example:**
```bash
git stash push -m "Work in progress"
```

### git stash list
**Purpose:** View all stashed changes.

**Example:**
```bash
git stash list
```

### git stash apply
**Purpose:** Restore stashed changes while keeping the stash entry.

**Example:**
```bash
git stash apply
```

### git stash pop
**Purpose:** Restore stashed changes and remove the stash entry.

**Example:**
```bash
git stash pop
```

---

## 7. Advanced Operations

### git merge --squash \<branch-name>
**Purpose:** Combine all commits from a branch into a single commit.

**Example:**
```bash
git merge --squash feature-1
```

### git cherry-pick \<commit-id>
**Purpose:** Apply a specific commit from another branch.

**Example:**
```bash
git cherry-pick a1b2c3d
```

### Conflict Resolution
**Purpose:** Resolve merge or rebase conflicts manually.

**Steps:**
```bash
git add <file>
git commit
```

---

## 8. Git Reset (Day 25)

### git reset --soft HEAD~1
**Purpose:** Move HEAD to a previous commit while keeping changes staged.

**Example:**
```bash
git reset --soft HEAD~1
```

### git reset --mixed HEAD~1
**Purpose:** Move HEAD to a previous commit and unstage changes.

**Example:**
```bash
git reset --mixed HEAD~1
```

### git reset --hard HEAD~1
**Purpose:** Move HEAD to a previous commit and discard all local changes.

**Example:**
```bash
git reset --hard HEAD~1
```

---

## 9. Git Revert

### git revert \<commit-id>
**Purpose:** Create a new commit that reverses a previous commit.

**Example:**
```bash
git revert a1b2c3d
```

### git revert --continue
**Purpose:** Continue the revert process after resolving conflicts.

**Example:**
```bash
git revert --continue
```

### git revert --abort
**Purpose:** Cancel an ongoing revert operation.

**Example:**
```bash
git revert --abort
```

---

## 10. Recovery Commands

### git reflog
**Purpose:** View all HEAD movements and recover lost commits.

**Example:**
```bash
git reflog
```

---

