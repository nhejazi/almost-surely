#!/bin/sh

DIR=$(dirname "$0")

if [[ $(git status -s) ]]
then
  echo "The working directory is dirty. Commit pending changes before pushing."
  exit 1;
fi

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publish to gh-pages (.sh)"

echo "Publishing to gh-pages branch"
git push origin gh-pages && cd ..
