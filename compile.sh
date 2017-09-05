#!/bin/bash
# download samtools sourcecode
wget https://github.com/samtools/samtools/releases/download/1.5/samtools-1.5.tar.bz2
tar xjf samtools-1.5.tar.bz2
#compile samtools
cd samtools-1.5 || exit 1
./configure
make
# move samtools into bin directory
mkdir ../bin
mv samtools ../bin/
