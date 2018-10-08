#!/bin/sh
mkdir build && cd build

export LDFLAGS="$LDFLAGS -lz -lexpat"

cmake -G "Ninja"                        \
    -DCMAKE_INSTALL_PREFIX=${PREFIX}    \
    -DCMAKE_BUILD_TYPE=Release          \
    ..

ninja install
