#!/bin/bash
echo "↓   Syncing with the repository...   ↓"
status=$(git pull)
echo $status
if [[ "$status" == "Already up to date." ]]; then
  echo "nothing to update"
else
  ./copy
fi
