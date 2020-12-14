#!/usr/bin/env bash

echo "Copying zshrc"
cd "${BASH_SOURCE[0]%/*}"
cp ../Dependancies/zshrc ~/.zshrc
