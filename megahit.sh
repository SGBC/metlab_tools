#!/bin/bash
set -e

wget https://github.com/voutcn/megahit/archive/v1.1.2.tar.gz
tar xvfz v1.1.2.tar.gz
# compile with gcc
cd megahit-1.1.2
make

mkdir ../megahit
# move all megahit exec
find megahi* -type f -depth 0 -exec mv {} ../megahit \;
cd ..

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    tar czf megahit-darwin.tar.gz megahit
else tar czf megahit-linux.tar.gz megahit
fi
