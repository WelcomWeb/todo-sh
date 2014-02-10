#!/bin/bash

TARGET=~/.todo

if [ "$1" = "." ]
  then
    TARGET=./.todo
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
    echo ; nl $TARGET ; echo
fi
