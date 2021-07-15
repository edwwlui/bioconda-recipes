#!/bin/sh

mkdir -p $PREFIX/bin/sub_bin

make CXX=${CXX}
cp metaplatanus $PREFIX/bin
cp src/scripts/tgsgapcloser_mod $PREFIX/bin
cp -r sub_bin/* $PREFIX/bin/sub_bin

wget https://github.com/rkajitani/NextPolish/releases/download/v1.3.1/NextPolish_v1.3.1.tar.gz
tar xf NextPolish_v1.3.1.tar.gz
cd NextPolish_v1.3.1
alias gcc=${CC}
ln -s `which ${CC}` `dirname \`which ${CC}\``/gcc
ln -s `which ${CXX}` `dirname \`which ${CC}\``/g++
make
cp -r nextPolish lib bin $PREFIX/bin/sub_bin
cd ..
