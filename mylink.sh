#!/bin/bash
if [ $# = 1 ]; then
        EXT=.sh
        ln -s ~/scripts/$1 ~/scripts/run/${1/%$EXT}
else
        echo "Sintaxis: mylink script"
fi
exit 0
