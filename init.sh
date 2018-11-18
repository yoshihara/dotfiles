#!/bin/bash

set -eu

./setup_mitamae.sh
./bin/mitamae local $@ lib/recipe.rb
