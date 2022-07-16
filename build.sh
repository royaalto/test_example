#!/bin/bash
failed=0

NC=$(nproc)
## use at least one and at most half of the cores
NC=$((NC/2 > 1 ? NC/2 : 1))
# --------------------------------------------------

function help() {
    echo "Usage: ./build.sh [options]"
}
# --------------------------------------------------
cmake .
make -j$NC
failed=$?
exit ${failed}
