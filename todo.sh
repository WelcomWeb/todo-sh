#!/bin/bash

touch ~/.todo

if [ $# -eq 0 ]
  then
    echo ; nl ~/.todo ; echo
fi

if [ "$1" = "add" ]
  then
    shift
    echo "$*" >> ~/.todo
    echo ; nl ~/.todo ; echo
fi

if [ "$1" = "remove" ]
  then
    sed -i.bak -e "$2d" ~/.todo
    rm ~/.todo.bak
    echo ; nl ~/.todo ; echo
fi

if [ "$1" = "clear" ]
  then
    echo "" > ~/.todo
    echo ; nl ~/.todo ; echo
fi
