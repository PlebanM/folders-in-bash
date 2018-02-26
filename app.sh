#!/bin/bash

loop=()

for i in {0..256}
do
    modulo_i=$((i%2))
    if [ $modulo_i = 0 ]
    then
        loop+=("$i")
    fi
done

mkdir -p $1/{0..256}/{0..256}

for i in ${loop[@]}
do
    for j in ${loop[@]}
    do
        touch $1/$i/$j/test
    done
done
