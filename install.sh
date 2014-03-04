#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"

GIT_ROOT=".."
while [ ! -e "$GIT_ROOT/.git" ]; do
  GIT_ROOT="${GIT_ROOT}/.."
  [[ $GIT_ROOT == "" ]] && exit 1
done

chmod +x $DIR/hooks/*
cp -v $DIR/hooks/* $GIT_ROOT/.git/hooks/
