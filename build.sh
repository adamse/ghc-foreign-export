#!/bin/bash

set -e errexit

function comp {
    ghc -c -g3 -o ${1%.hs}.o ${1} "${@:2}"
}

comp Fun.hs
comp Export.hs

( 
    objdump -r -j .init_array Export.o
    objdump -r --disassemble Export.o
) | \
    less
