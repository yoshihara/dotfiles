#!/bin/bash

set -eu

if [ ! -e "${HOME}/.ssh" ]; then
  echo "ERROR: not found ssh key. Please create one by ssh-keygen."
  exit 1
fi

./setup_mitamae.sh
./bin/mitamae local $@ lib/recipe.rb
