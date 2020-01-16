#!/bin/bash

# The line of # is comment the top.
map() {
  command=$1
  file=$2

  IFS=$'\n'
  for line in $(cat $file | grep -v "^#")
  do
    eval $command $line
  done
}