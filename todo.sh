#!/bin/bash

TARGET=~/.todo

if [ -d $1 ] && [ $# -gt 0 ]
  then
    TARGET=$1/.todo
    shift
fi

touch $TARGET

if [ $# -eq 0 ]
  then
    echo ; nl $TARGET ; echo
fi

if [ "$1" = "add" ]
  then
    shift
    echo "$*" >> $TARGET
    echo ; nl $TARGET ; echo
fi

if [ "$1" = "remove" ]
  then
    sed -i.bak -e "$2d" $TARGET
    rm $TARGET.bak
    echo ; nl $TARGET ; echo
fi

if [ "$1" = "clear" ]
  then
    echo "" > $TARGET
    sed -i.bak -e "1d" $TARGET
    rm $TARGET.bak
    echo ; nl $TARGET ; echo
fi

if [ "$1" = "search" ]
  then
    grep -IiFnr --directories=recurse "TODO" * >> $TARGET
    echo ; nl $TARGET ; echo
fi
