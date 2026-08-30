# Git workflow guide and example commands (Task 6)

This document provides the commands and example workflows for the Git tasks in Week 3. Run these commands in your local clone and replace example names with your own.

## Initial setup

# Configure identity
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# Verify
git config --list

## Initialize repository (if starting from existing folder)
cd iyf-s11-week-01-sophia2199
# initialize (only if needed)
git init
git add .
git commit -m "chore: initial commit — portfolio scaffold"

## Make more commits (examples)
# make changes to styles.css
git add css/styles.css
git commit -m "feat: add navigation styling"

# fix responsive breakpoints
git add .
git commit -m "fix: correct responsive breakpoints"

# update README
git add README.md
git commit -m "docs: update README with project info"

## Branching
# create and switch to a feature branch
git checkout -b feature/contact-form
# make changes, then:
git add .
git commit -m "feat: add contact form"

# switch back to main
git switch main
# merge the branch
git merge feature/contact-form
# delete branch
git branch -d feature/contact-form

## Merge conflict (example workflow)
# 1) Create two branches from main: A and B
# 2) Edit the same line in README.md on both branches and commit
# 3) Merge A into main, then try to merge B into main -> conflict
# 4) Resolve conflict in README.md, then git add README.md and git commit

## Remote
# add remote
git remote add origin https://github.com/yourusername/iyf-s11-week-03-yourusername.git
# push
git push -u origin main

# If you cloned an existing repo, push your local commits
git push origin main

## Collaboration simulation
# clone to a new folder
git clone https://github.com/yourusername/iyf-s11-week-03-yourusername.git week03-clone
# make changes in clone, push, then in original repo run
git pull origin main

## .gitignore
# Create a .gitignore to exclude node_modules, IDE settings, OS files and logs (already included in this repo)

## Helpful tips
- Use `git status` often to see the working tree state
- Use `git log --oneline --graph --decorate` to inspect history visually
- If you accidentally commit sensitive data, use `git revert` or `git filter-repo` (advanced)
