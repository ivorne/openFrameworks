#!/bin/bash

# git submodules
git submodule init          || exit 1
git submodule update        || exit 1

# linux
cd ./scripts/linux          || exit 1
./download_libs.sh          || exit 1
echo n | ./compilePG.sh     || exit 1
cd ../..                    || exit 1

# android
cd ./scripts/android        || exit 1
./download_libs.sh          || exit 1
cd ../..                    || exit 1

# done
echo "DONE"
