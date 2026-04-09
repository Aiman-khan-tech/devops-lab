#!/bin/bash

echo "Git Commands"

git init
git status
git add .
git commit -m "first commit"
git branch dev
git checkout dev
git checkout main
git merge dev
