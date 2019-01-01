#!/bin/bash

set -eu

version='1.6.3'
mitamae_version="mitamae-${version}"

if [ -f "bin/mitamae" ]; then
  echo 'already installed Mitamae'
  exit 0
fi
case "$(uname)" in
  "Darwin")
      mitamae_bin="mitamae-x86_64-darwin"
      ;;
  "Linux")
      mitamae_bin="mitamae-x86_64-linux"
      ;;
  *)
      echo "unknown uname: $(uname)"
      exit 1
      ;;
esac

mkdir bin/
rm -f ${mitamae_bin}

wget https://github.com/k0kubun/mitamae/releases/download/v${version}/${mitamae_bin}
chmod +x ./${mitamae_bin}
mv ./${mitamae_bin} bin/
ln -sf ${mitamae_bin} bin/mitamae
