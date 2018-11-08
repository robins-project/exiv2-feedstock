#!/bin/sh
mkdir build && cd build

export LDFLAGS="$LDFLAGS -fuse-ld=gold"

cmake -G "Ninja"                        \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}    \
    -DCMAKE_PREFIX_PATH=${PREFIX}       \
    -DCMAKE_BUILD_TYPE=Release          \
    ..

ninja install
