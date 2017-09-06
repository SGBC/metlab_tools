#!/bin/bash
# download samtools sourcecode
wget https://github.com/samtools/samtools/releases/download/1.5/samtools-1.5.tar.bz2
tar xjf samtools-1.5.tar.bz2
#compile samtools
cd samtools-1.5 || exit 1
./configure
make

# move samtools and compress
mkdir ../samtools
chmod +x samtools
mv samtools ../samtools/

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    tar czf ../samtools-darwin.tar.gz ../samtools
else tar czf ../samtools-linux.tar.gz ../samtools
fi
