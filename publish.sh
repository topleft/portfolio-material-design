#!/bin/bash

# Fetch latest changes
git fetch origin

# Switch to gh-pages branch (create if doesn't exist)
git checkout gh-pages || git checkout -b gh-pages

# Rebase master onto gh-pages
git rebase origin/master

# Push the rebased gh-pages branch
git push -f origin gh-pages

# Switch back to master
git checkout master
